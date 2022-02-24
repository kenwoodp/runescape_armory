CREATE DATABASE general_store_db;
\c general_store_db;

-- Shop Table

CREATE TABLE general_store_items(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, amount INTEGER, attack_level INTEGER, defence_level INTEGER, heal_amount INTEGER, price INTEGER);

INSERT INTO general_store_items(name, image_url, attack_level, price) VALUES('Bronze Sword', 'https://oldschool.runescape.wiki/images/thumb/Bronze_sword_detail.png/100px-Bronze_sword_detail.png?eb2e6', 1, 100), ('Bronze Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Bronze_scimitar_detail.png/120px-Bronze_scimitar_detail.png?55bcd', 1, 100), ('Bronze Dagger', 'https://oldschool.runescape.wiki/images/thumb/Bronze_dagger_detail.png/120px-Bronze_dagger_detail.png?251ca', 1, 100);

INSERT INTO general_store_items(name, image_url, defence_level, price) VALUES('Bronze Helmet', 'https://oldschool.runescape.wiki/images/thumb/Bronze_med_helm_detail.png/130px-Bronze_med_helm_detail.png?c6333', 1, 100), ('Bronze Platebody', 'https://oldschool.runescape.wiki/images/thumb/Bronze_platebody_detail.png/150px-Bronze_platebody_detail.png?3af70', 1, 100), ('Bronze Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Bronze_platelegs_detail.png/90px-Bronze_platelegs_detail.png?3507e', 1, 100);

INSERT INTO general_store_items(name, image_url, heal_amount, price) VALUES('Chicken', 'https://oldschool.runescape.wiki/images/thumb/Cooked_chicken_detail.png/130px-Cooked_chicken_detail.png?70bda', 20, 500);

-- Create User Table

CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, username TEXT, password_digest TEXT, xp INTEGER, health INTEGER);

-- Set XP to 50000

UPDATE users SET xp = 50000 WHERE id = 1;

-- Create inventory table

CREATE TABLE inventory(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, amount INTEGER, attack_level INTEGER, defence_level INTEGER, xp_value INTEGER);

-- Create helmet table

CREATE TABLE helmets(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER, defence_level INTEGER);

INSERT INTO helmets(name, image_url, xp_required, defence_level) VALUES('Iron Helmet', 'https://oldschool.runescape.wiki/images/thumb/Iron_med_helm_detail.png/130px-Iron_med_helm_detail.png?3b050', 250, 2), ('Steel Helmet', 'https://oldschool.runescape.wiki/images/thumb/Steel_med_helm_detail.png/130px-Steel_med_helm_detail.png?abf7c', 500, 3), ('Black Helmet', 'https://oldschool.runescape.wiki/images/thumb/Black_med_helm_detail.png/130px-Black_med_helm_detail.png?02b63', 800, 4), ('Mithril Helmet', 'https://oldschool.runescape.wiki/images/thumb/Mithril_med_helm_detail.png/130px-Mithril_med_helm_detail.png?8fbfd', 1250, 5), ('Adamant Helmet', 'https://oldschool.runescape.wiki/images/thumb/Adamant_med_helm_detail.png/130px-Adamant_med_helm_detail.png?dbaa1', 2500, 6), ('Rune Helmet', 'https://oldschool.runescape.wiki/images/thumb/Rune_med_helm_detail.png/130px-Rune_med_helm_detail.png?48b59', 5000, 7), ('Dragon Helmet', 'https://oldschool.runescape.wiki/images/thumb/Dragon_med_helm_detail.png/120px-Dragon_med_helm_detail.png?e3ed5', 10000, 8);

-- Create platebody table

CREATE TABLE platebodies(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER, defence_level INTEGER);

INSERT INTO platebodies(name, image_url, xp_required, defence_level) VALUES('Iron Platebody', 'https://oldschool.runescape.wiki/images/thumb/Iron_platebody_detail.png/150px-Iron_platebody_detail.png?3af70', 250, 2), ('Steel Platebody', 'https://oldschool.runescape.wiki/images/thumb/Steel_platebody_detail.png/774px-Steel_platebody_detail.png?3af70', 500, 3), ('Black Platebody', 'https://oldschool.runescape.wiki/images/thumb/Black_platebody_detail.png/120px-Black_platebody_detail.png?41f52', 800, 4), ('Mithril Platebody', 'https://oldschool.runescape.wiki/images/thumb/Mithril_platebody_detail.png/150px-Mithril_platebody_detail.png?3af70', 1250, 5), ('Adamant Platebody', 'https://oldschool.runescape.wiki/images/thumb/Adamant_platebody_detail.png/150px-Adamant_platebody_detail.png?bd8e1', 2500, 6), ('Rune Platebody', 'https://oldschool.runescape.wiki/images/thumb/Rune_platebody_detail.png/130px-Rune_platebody_detail.png?3af70', 5000, 7), ('Dragon Platebody', 'https://oldschool.runescape.wiki/images/thumb/Dragon_platebody_detail.png/140px-Dragon_platebody_detail.png?6edab', 10000, 8);

-- Create platelegs table

CREATE TABLE platelegs(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER, defence_level INTEGER);

INSERT INTO platelegs(name, image_url, xp_required, defence_level) VALUES('Iron Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Iron_platelegs_detail.png/90px-Iron_platelegs_detail.png?e2837', 250, 2), ('Steel Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Steel_platelegs_detail.png/90px-Steel_platelegs_detail.png?f7676', 500, 3), ('Black Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Black_platelegs_detail.png/90px-Black_platelegs_detail.png?d7a95', 800, 4), ('Mithril Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Mithril_platelegs_detail.png/90px-Mithril_platelegs_detail.png?c0632', 1250, 5), ('Adamant Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Adamant_platelegs_detail.png/90px-Adamant_platelegs_detail.png?7e5f0', 2500, 6), ('Rune Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Rune_platelegs_detail.png/90px-Rune_platelegs_detail.png?279d3', 5000, 7), ('Dragon Platelegs', 'https://oldschool.runescape.wiki/images/thumb/Dragon_platelegs_detail.png/90px-Dragon_platelegs_detail.png?e30c3', 10000, 8);

-- Create sword table

CREATE TABLE swords(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER, attack_level INTEGER);

INSERT INTO swords(name, image_url, xp_required, attack_level) VALUES('Iron Sword', 'https://oldschool.runescape.wiki/images/thumb/Iron_sword_detail.png/100px-Iron_sword_detail.png?eb2e6', 250, 2), ('Steel Sword', 'https://oldschool.runescape.wiki/images/thumb/Steel_sword_detail.png/100px-Steel_sword_detail.png?eb2e6', 500, 3), ('Black Sword', 'https://oldschool.runescape.wiki/images/thumb/Black_sword_detail.png/100px-Black_sword_detail.png?eb2e6', 800, 4), ('Mithril Sword', 'https://oldschool.runescape.wiki/images/thumb/Mithril_sword_detail.png/100px-Mithril_sword_detail.png?eb2e6', 1250, 5), ('Adamant Sword', 'https://oldschool.runescape.wiki/images/thumb/Adamant_sword_detail.png/100px-Adamant_sword_detail.png?be44f', 2500, 6), ('Rune Sword', 'https://oldschool.runescape.wiki/images/thumb/Rune_sword_detail.png/100px-Rune_sword_detail.png?eb2e6', 5000, 7), ('Dragon Sword', 'https://oldschool.runescape.wiki/images/thumb/Dragon_sword_detail.png/130px-Dragon_sword_detail.png?c1a75', 10000, 8);

-- Create scimitar table

CREATE TABLE scimitars(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER, attack_level INTEGER);

INSERT INTO scimitars(name, image_url, xp_required, attack_level) VALUES('Iron Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Iron_scimitar_detail.png/130px-Iron_scimitar_detail.png?a6345', 250, 2), ('Steel Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Steel_scimitar_detail.png/120px-Steel_scimitar_detail.png?bccc7', 500, 3), ('Black Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Black_scimitar_detail.png/140px-Black_scimitar_detail.png?6db72', 800, 4), ('Mithril Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Mithril_scimitar_detail.png/150px-Mithril_scimitar_detail.png?6edab', 1250, 5), ('Adamant Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Adamant_scimitar_detail.png/130px-Adamant_scimitar_detail.png?a3e0f', 2500, 6), ('Rune Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Rune_scimitar_detail.png/130px-Rune_scimitar_detail.png?c8823', 5000, 7), ('Dragon Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Dragon_scimitar_detail.png/140px-Dragon_scimitar_detail.png?3b303', 10000, 8);

-- Create dagger table

CREATE TABLE daggers(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER, attack_level INTEGER);

INSERT INTO daggers(name, image_url, xp_required, attack_level) VALUES('Iron Dagger', 'https://oldschool.runescape.wiki/images/thumb/Iron_dagger_detail.png/120px-Iron_dagger_detail.png?8fa74', 250, 2), ('Steel Dagger', 'https://oldschool.runescape.wiki/images/thumb/Steel_dagger_detail.png/120px-Steel_dagger_detail.png?bbf49', 500, 3), ('Black Dagger', 'https://oldschool.runescape.wiki/images/thumb/Black_dagger_detail.png/120px-Black_dagger_detail.png?50aff', 800, 4), ('Mithril Dagger', 'https://oldschool.runescape.wiki/images/thumb/Mithril_dagger_detail.png/120px-Mithril_dagger_detail.png?66970', 1250, 5), ('Adamant Dagger', 'https://oldschool.runescape.wiki/images/thumb/Adamant_dagger_detail.png/120px-Adamant_dagger_detail.png?94123', 2500, 6), ('Rune Dagger', 'https://oldschool.runescape.wiki/images/thumb/Rune_dagger_detail.png/120px-Rune_dagger_detail.png?45f1e', 5000, 7), ('Dragon Dagger', 'https://oldschool.runescape.wiki/images/thumb/Dragon_dagger_detail.png/100px-Dragon_dagger_detail.png?b7806', 10000, 8);

-- Create ore table

CREATE TABLE ores(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_gained INTEGER);

INSERT INTO ores(name, image_url, xp_gained) VALUES('Iron', 'https://oldschool.runescape.wiki/images/thumb/Iron_rock.png/220px-Iron_rock.png?29a7c', 35), ('Adamant', 'https://oldschool.runescape.wiki/images/thumb/Adamantite_rock.png/220px-Adamantite_rock.png?29a7c', 95), ('Rune', 'https://oldschool.runescape.wiki/images/thumb/Runite_rock.png/220px-Runite_rock.png?5a1d7', 125);