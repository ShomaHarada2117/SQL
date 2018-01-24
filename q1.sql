問１．
CREATE TABLE item_category(category_id int, category_name varchar(256));

問２．
CREATE TABLE item(item_id int, item_name varchar(256), item_price int, category_id int);

問３．
INSERT INTO item_category VALUES(1, '家具');
INSERT INTO item_category VALUES(2, '食品');
INSERT INTO item_category VALUES(3, '本');

問４．
INSERT INTO item VALUES(1, '堅牢な机', 3000, 1);
INSERT INTO item VALUES(2, '生焼け肉', 50, 2);
INSERT INTO item VALUES(3, 'すっきりわかるJava入門', 3000, 3);
INSERT INTO item VALUES(4, 'おしゃれな椅子', 2000, 1);
INSERT INTO item VALUES(5, 'こんがり肉', 500, 2);
INSERT INTO item VALUES(6, '書き方ドリルSQL', 2500, 3);
INSERT INTO item VALUES(7, 'ふわふわのベッド', 30000, 1);
INSERT INTO item VALUES(8, 'ミラノ風ドリア', 300, 2);

問５．
SELECT item_name, item_price FROM item WHERE category_id =1;

問６．
SELECT item_name, item_price FROM item WHERE item_price >=1000;

問７．
SELECT item_name, item_price FROM item WHERE item_name LIKE '肉';