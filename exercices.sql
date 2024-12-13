
DROP TABLE IF EXISTS users;--je suprime estcrée 
DROP TABLE IF EXISTS edusign;
CREATE TABLE users (
id INTEGER PRIMARY KEY AUTOINCREMENT,
nom TEXT NOT NULL,
prenom TEXT NOT NULL,
email TEXT NOT NULL UNIQUE

);

CREATE TABLE edusign(
id INTEGER PRIMARY KEY AUTOINCREMENT,
id_users INTEGER,
date_signature DATETIME NOT NULL, 
FOREIGN KEY(id_users) REFERENCES users(id)
);

INSERT INTO users (prenom, nom, email) VALUES ('Ada', 'Lovelace', 'ada@test.fr');
INSERT INTO users (prenom, nom, email) VALUES ('Beatrice', 'Worsley', 'bea@test.fr');
INSERT INTO users (prenom, nom, email) VALUES ('Bella', 'Guerin', 'bella@test.fr');
INSERT INTO users (prenom, nom, email) VALUES ('Barbara', 'Chase', 'barbara@test.fr');
INSERT INTO edusign(date_signature,id_users) VALUES ('2024-05-30 09:30:00',1);
INSERT INTO edusign(date_signature,id_users) VALUES('2024-05-30 09:30:00',3);
INSERT INTO edusign(date_signature,id_users) VALUES ('2024-09-01 09:30:00',1);
INSERT INTO edusign(date_signature,id_users) VALUES ('2024-09-01 09:30:00',4);
INSERT INTO edusign(date_signature,id_users) VALUES ('2024-09-01 09:30:00',2);
INSERT INTO edusign(date_signature,id_users) VALUES ('2024-09-01 09:30:00',3);

SELECT * FROM users;
SELECT * FROM users
WHERE prenom = 'Ada';
SELECT *
FROM users
WHERE prenom LIKE 'B%';

SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE prenom  LIKE 'B%';
SELECT prenom FROM users ;
SELECT * FROM edusign WHERE date_signature LIKE '2024-05-30 09:30:00%';
SELECT COUNT(*) FROM edusign WHERE date_signature LIKE '2024-05-30 09:30:00%';
SELECT COUNT(*) FROM edusign WHERE date_signature LIKE'2024-09-01 09:30:00%';

SELECT COUNT(*)AS volume
 FROM users
JOIN edusign ON edusign.id_users=users.id WHERE prenom='Bella' ;