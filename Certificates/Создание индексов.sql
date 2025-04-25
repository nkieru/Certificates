CREATE INDEX idx_hash_index_numbers ON Certificate USING HASH (numbers);

CREATE INDEX idx_hash_index_email ON Intern USING HASH (email);