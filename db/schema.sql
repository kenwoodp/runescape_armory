CREATE DATABASE general_store_db;
\c general_store_db;

CREATE TABLE general_store_items(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, amount INTEGER);

INSERT INTO general_store_items(name, image_url) VALUES('Bronze Sword', 'https://oldschool.runescape.wiki/images/thumb/Bronze_sword_detail.png/100px-Bronze_sword_detail.png?eb2e6'), ('Bronze Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Bronze_scimitar_detail.png/120px-Bronze_scimitar_detail.png?55bcd'), ('Bronze Dagger', 'https://oldschool.runescape.wiki/images/thumb/Bronze_dagger_detail.png/120px-Bronze_dagger_detail.png?251ca');

CREATE TABLE users(id SERIAL PRIMARY KEY, first_name TEXT, last_name TEXT, username TEXT, password_digest TEXT, xp INTEGER);

CREATE TABLE inventory(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, amount INTEGER);

INSERT INTO inventory(name, image_url, amount) VALUES('Pot', 'https://preview.redd.it/w7xrqurkbxy41.jpg?auto=webp&s=dc58da3ee402c8901a3ce7f90d5928f76b43fab3', 1);

CREATE TABLE swords(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER);

INSERT INTO swords(name, image_url, xp_required) VALUES('Iron Sword', 'https://oldschool.runescape.wiki/images/thumb/Iron_sword_detail.png/100px-Iron_sword_detail.png?eb2e6', 250), ('Steel Sword', 'https://oldschool.runescape.wiki/images/thumb/Steel_sword_detail.png/100px-Steel_sword_detail.png?eb2e6', 500), ('Black Sword', 'https://oldschool.runescape.wiki/images/thumb/Black_sword_detail.png/100px-Black_sword_detail.png?eb2e6', 800), ('Mithril Sword', 'https://oldschool.runescape.wiki/images/thumb/Mithril_sword_detail.png/100px-Mithril_sword_detail.png?eb2e6', 1250), ('Adamant Sword', 'https://oldschool.runescape.wiki/images/thumb/Adamant_sword_detail.png/100px-Adamant_sword_detail.png?be44f', 2500), ('Rune Sword', 'https://oldschool.runescape.wiki/images/thumb/Rune_sword_detail.png/100px-Rune_sword_detail.png?eb2e6', 5000), ('Dragon Sword', 'https://oldschool.runescape.wiki/images/thumb/Dragon_sword_detail.png/130px-Dragon_sword_detail.png?c1a75', 10000);


CREATE TABLE scimitars(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER);

INSERT INTO scimitars(name, image_url, xp_required) VALUES('Iron Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Iron_scimitar_detail.png/130px-Iron_scimitar_detail.png?a6345', 250), ('Steel Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Steel_scimitar_detail.png/120px-Steel_scimitar_detail.png?bccc7', 500), ('Black Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Black_scimitar_detail.png/140px-Black_scimitar_detail.png?6db72', 800), ('Mithril Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Mithril_scimitar_detail.png/150px-Mithril_scimitar_detail.png?6edab', 1250), ('Adamant Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Adamant_scimitar_detail.png/130px-Adamant_scimitar_detail.png?a3e0f', 2500), ('Rune Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Rune_scimitar_detail.png/130px-Rune_scimitar_detail.png?c8823', 5000), ('Dragon Scimitar', 'https://oldschool.runescape.wiki/images/thumb/Dragon_scimitar_detail.png/140px-Dragon_scimitar_detail.png?3b303', 10000);

CREATE TABLE daggers(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_required INTEGER);

INSERT INTO daggers(name, image_url, xp_required) VALUES('Iron Dagger', 'https://oldschool.runescape.wiki/images/thumb/Iron_dagger_detail.png/120px-Iron_dagger_detail.png?8fa74', 250), ('Steel Dagger', 'https://oldschool.runescape.wiki/images/thumb/Steel_dagger_detail.png/120px-Steel_dagger_detail.png?bbf49', 500), ('Black Dagger', 'https://oldschool.runescape.wiki/images/thumb/Black_dagger_detail.png/120px-Black_dagger_detail.png?50aff', 800), ('Mithril Dagger', 'https://oldschool.runescape.wiki/images/thumb/Mithril_dagger_detail.png/120px-Mithril_dagger_detail.png?66970', 1250), ('Adamant Dagger', 'https://oldschool.runescape.wiki/images/thumb/Adamant_dagger_detail.png/120px-Adamant_dagger_detail.png?94123', 2500), ('Rune Dagger', 'https://oldschool.runescape.wiki/images/thumb/Rune_dagger_detail.png/120px-Rune_dagger_detail.png?45f1e', 5000), ('Dragon Dagger', 'https://oldschool.runescape.wiki/images/thumb/Dragon_dagger_detail.png/100px-Dragon_dagger_detail.png?b7806', 10000);

CREATE TABLE ores(id SERIAL PRIMARY KEY, name TEXT, image_url TEXT, xp_gained INTEGER);

INSERT INTO ores(name, image_url, xp_gained) VALUES('Iron', 'https://oldschool.runescape.wiki/images/thumb/Iron_rock.png/220px-Iron_rock.png?29a7c', 35), ('Adamant', 'https://oldschool.runescape.wiki/images/thumb/Adamantite_rock.png/220px-Adamantite_rock.png?29a7c', 95), ('Rune', 'https://oldschool.runescape.wiki/images/thumb/Runite_rock.png/220px-Runite_rock.png?5a1d7', 125);