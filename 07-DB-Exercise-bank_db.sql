CREATE TABLE IF NOT EXISTS account_holders (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  ssn VARCHAR(10) NOT NULL
);


INSERT INTO account_holders (
	first_name, last_name, ssn
) 
VALUES 
	('Susan', 'Cane', '1234567890'),
	('Kim', 'Novac', '1234567890'),
	('Jimmy', 'Henderson', '1234567890'),
	('Steve', 'Stevenson', '1234567890'),
	('Bjorn', 'Sweden', '1234567890'),
	('Kiril', 'Petrov', '1234567890'),
	('Petar', 'Kirilov', '1234567890'),
	('Michka', 'Tsekova', '1234567890'),
	('Zlatina', 'Pateva', '1234567890'),
	('Monika', 'Miteva', '1234567890'),
	('Zlatko', 'Zlatyov', '1234567890'),
	('Petko', 'Petkov Junior', '1234567890');
	
	
CREATE TABLE IF NOT EXISTS accounts (
  "id" SERIAL PRIMARY KEY,
  account_holder_id INT NOT NULL,
  balance DECIMAL(19, 4) DEFAULT '0.0000',
  CONSTRAINT fk_accounts_account_holders
	FOREIGN KEY (account_holder_id) 
	REFERENCES account_holders("id")
	ON DELETE CASCADE
	ON UPDATE CASCADE
);


INSERT INTO accounts (
	account_holder_id, balance
) 
VALUES 
	(1, 123.1200),
	(3, 4354.2300),
	(12, 6546543.2300),
	(9, 15345.6400),
	(11, 36521.2000),
	(8, 5436.3400),
	(10, 565649.2000),
	(11, 999453.5000),
	(1, 5349758.2300),
	(2, 543.3000),
	(3, 10.2000),
	(7, 245656.2300),
	(5, 5435.3200),
	(4, 1.2300),
	(6, 0.1900),
	(2, 5345.3400),
	(11, 76653.2000),
	(1, 235469.8900);



/*
CREATE OR REPLACE PROCEDURE sp_retrieving_holders_with_balance_higher_than(searched_balance NUMERIC)
LANGUAGE plpgsql
AS
$$
DECLARE
	holder_record RECORD;
	total_balance NUMERIC;
BEGIN
	FOR holder_record IN
		SELECT
			ah.holder_id,
			ah.fisrt_name,
			ah.last_name
		FROM 
			account_holders AS ah
		ORDER BY
			ah.first_name,
			ah_last_name
	LOOP
		SELECT COALESCE(SUM(a.balance), 0) INTO total_balance
		FROM
			accounts AS a
		WHERE
			a.holder_id = holder_record.holder_id;

	IF total_balance > searched_balance THEN
		RAISE NOTICE '% % - %' holder_record.first_name, holder_record.last_name, total_balance;
		
	END IF;
	END LOOP;
END;
$$;

*/


CREATE OR REPLACE FUNCTION fn_cash_in_users_games(
	game_name VARCHAR(50)
) RETURNS TABLE (
	total_cash DECIMAL
)
AS
$$
BEGIN
	RETURN QUERY
	WITH 
		ranked_games 
	AS (
		SELECT
			cash,
			ROW_NUMBER() OVER (ORDER BY cash DESC) AS row_num
		FROM
			games AS g
		JOIN
			users_games AS ug
		ON
			ug.game_id = g.id
		WHERE 
			g.name = game_name
	)

	SELECT
		ROUND(SUM(cash), 2) AS total_cash
	FROM 
		ranked_games
	WHERE 
		row_num % 2 <> 0;
END;
$$
LANGUAGE plpgsql;

SELECT fn_cash_in_users_games('Love in a mist');



CREATE OR REPLACE PROCEDURE sp_retrieving_holders_with_balance_higher_than(
	searched_balance NUMERIC
)
AS 
$$
DECLARE 
	holder_info RECORD; -- type is record from the table
BEGIN
	FOR holder_info IN 
		SELECT 
			ah.first_name || ' ' || ah.last_name AS full_name,
			SUM(a.balance) AS total_balance
		FROM
			account_holders AS ah
		JOIN
			accounts AS a
		ON 
			a.account_holder_id = ah.id	
		GROUP BY
			full_name
		HAVING	
			SUM(a.balance) > searched_balance
		ORDER BY
			full_name
	LOOP
		RAISE NOTICE '% - %', holder_info.full_name, holder_info.total_balance;
	END LOOP;
END;
$$
LANGUAGE plpgsql;



CREATE OR REPLACE PROCEDURE sp_deposit_money(account_id INT, money_amount NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE accounts
	SET balance = balance + money_amount
	WHERE id = amount_id;
COMMIT;
END;
$$;

CREATE OR REPLACE PROCEDURE sp_withdraw_money(account_id INT, money_amount NUMERIC)
LANGUAGE plpgsql
AS
$$
BEGIN
	IF (SELECT balance 
		FROM accounts WH
		WHERE id = account_id) THEN
			UPDATE accounts
			SET balance = balance - money_amount
			WHERE id = amount_id;
			COMMIT;
	ELSE
		RAISE NOTICE 'Insufficient balance. Withdrawal amount: %, Available balance: %',
                money_amount, (
					SELECT balance 
					FROM accounts 
					WHERE id = account_id);
	END IF;
END;
$$;

/*
CREATE OR REPLACE PROCEDURE sp_withdraw_money(
	account_id INT,
	money_amount NUMERIC(10, 4)
)
AS
$$
DECLARE
	current_balance NUMERIC;
BEGIN
	current_balance := (SELECT balance FROM accounts WHERE id = account_id);
	
	IF current_balance >= money_amount THEN
		UPDATE
			accounts
		SET 
			balance = balance - money_amount
		WHERE
			id = account_id;
	ELSE
		RAISE NOTICE 'Insufficient balance to withdraw %', money_amount;
	END IF;
END;
$$
LANGUAGE plpgsql;

*/


CREATE OR REPLACE PROCEDURE sp_transfer_money(sender_id INT, receiver_id INT, amount NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
	BEGIN

		CALL sp_withdraw_money(sender_id, amount);

		CALL sp_deposit_money(receiver_id, amount);

	EXCEPTION
		WHEN OTHERS THEN
		ROLLBACK;
	END;
END;
$$;

/*
CREATE OR REPLACE PROCEDURE sp_transfer_money(
	sender_id INT,
	receiver_id INT,
	amount NUMERIC
)
AS 
$$
DECLARE
	current_balance NUMERIC;
BEGIN
	SELECT balance INTO current_balance FROM accounts WHERE id = sender_id;
	
	IF (current_balance >= amount) THEN
		CALL sp_withdraw_money(sender_id, amount);
		CALL sp_deposit_money(receiver_id, amount);
	END IF;
END;
$$
LANGUAGE plpgsql;

*/


DROP PROCEDURE sp_retrieving_holders_with_balance_higher_than(searched_balance NUMERIC);



CREATE TABLE logs (
 id SERIAL PRIMARY KEY,
 account_id INT,
 old_sum NUMERIC,
 new_sum NUMERIC
);

CREATE OR REPLACE FUNCTION trigger_fn_insert_new_entry_into_logs()
RETURNS TRIGGER
AS
$$
BEGIN
	INSERT INTO logs(account_id,old_sum, new_sum)
	VALUES (OLD.id,
			OLD.balance,
			NEW.balance);
	RETURN NEW; 
END;
$$
LANGUAGE plpgsql;


CREATE TRIGGER tr_account_balance_change
AFTER UPDATE OF balance
ON accounts
FOR EACH ROW
--WHEN(NEW.balance <> OLD.balance)
WHEN (OLD.balance IS DISTINCT FROM NEW.balance)
EXECUTE FUNCTION trigger_fn_insert_new_entry_into_logs();


CREATE TABLE notification_emails(
id SERIAL PRIMARY KEY,
recipient_id INT,
subject VARCHAR(50),
body TEXT
);

CREATE OR REPLACE FUNCTION trigger_fn_send_email_on_balance_change()
RETURNS TRIGGER AS 
$$
BEGIN
	INSERT INTO notification_emails(recipient_id, subject, body)
	VALUES(NEW.recipient_id,
			NEW.subject,
			NEW.body);
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

/*
CREATE OR REPLACE FUNCTION
	trigger_fn_send_email_on_balance_change()
RETURNS TRIGGER AS
$$
BEGIN
	INSERT INTO 
		notification_emails(recepient_id, subject, body)
	VALUES
		(
			NEW.account_id,
			'Balance change for account: ' || NEW.account_id,
			'On ' || DATE(NOW()) || ' your balance was changed from ' || NEW.old_sum || ' to ' || NEW.new_sum || ' .'
		);
		
	RETURN NEW;
END;
$$
LANGUAGE plpgsql;

*/

CREATE TRIGGER tr_send_email_on_balance_change
AFTER UPDATE
ON logs
FOR EACH ROW
WHEN (OLD.old_sum IS DISTINCT FROM NEW.new_sum)
EXECUTE FUNCTION trigger_fn_send_email_on_balance_change();