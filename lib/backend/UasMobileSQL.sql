CREATE DATABASE uasmobile;
use uasmobile;

select * from uasmobile.users;

select * from users;

DESCRIBE users;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255),
    gender ENUM('Pria', 'Wanita'),
    birth_date DATE,
    height FLOAT,
    weight FLOAT
    otp_code VARCHAR(6),
    otp_expires_at DATETIME,
    otp_is_used BOOLEAN DEFAULT FALSE;
);





SELECT * FROM otp_code WHERE email = 'test@example.com';

SELECT * FROM users WHERE email = 'Shelby@gmail.com' AND password = '$2b$12$HjBA6zqNeOl/4BRf/OJgv.bFUT0lTD9Ev.FZZq3RR1z5o3twaFq0G';


UPDATE users
SET name = 'Nama Pengguna'
WHERE email = 'user@example.com' AND password = 'user_password';

DELETE FROM users;	

INSERT INTO users (email, password, name, gender, birth_date, height, weight) 
VALUES ('123@gmail.com', 'fc97d0e5fc5025d68434c152770e3205360fe7971cefcd168b549b00e4e4f774', 'Example Name', 'Pria', '2000-01-01', 170.0, 70.0);

