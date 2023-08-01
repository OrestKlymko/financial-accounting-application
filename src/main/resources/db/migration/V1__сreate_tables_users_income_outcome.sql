CREATE TABLE users
(
    id       BIGINT UNIQUE PRIMARY KEY                                                      NOT NULL,
    login    VARCHAR(30)                                                                    NOT NULL,
    password VARCHAR(15) CHECK (CHAR_LENGTH(password) >= 5 AND CHAR_LENGTH(password) <= 15) NOT NULL
);


CREATE TABLE income
(
    id      BIGINT UNIQUE PRIMARY KEY NOT NULL,
    income  VARCHAR(50)               NOT NULL,
    value   INT,
    user_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users (id)
);

CREATE TABLE outcome
(
    id      BIGINT UNIQUE PRIMARY KEY NOT NULL,
    outcome VARCHAR(50)               NOT NULL,
    value   INT,
    user_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users (id)
);
