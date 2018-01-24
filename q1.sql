��P�D
CREATE TABLE item_category(category_id int, category_name varchar(256));

��Q�D
CREATE TABLE item(item_id int, item_name varchar(256), item_price int, category_id int);

��R�D
INSERT INTO item_category VALUES(1, '�Ƌ�');
INSERT INTO item_category VALUES(2, '�H�i');
INSERT INTO item_category VALUES(3, '�{');

��S�D
INSERT INTO item VALUES(1, '���S�Ȋ�', 3000, 1);
INSERT INTO item VALUES(2, '���Ă���', 50, 2);
INSERT INTO item VALUES(3, '��������킩��Java����', 3000, 3);
INSERT INTO item VALUES(4, '�������Ȉ֎q', 2000, 1);
INSERT INTO item VALUES(5, '���񂪂��', 500, 2);
INSERT INTO item VALUES(6, '�������h����SQL', 2500, 3);
INSERT INTO item VALUES(7, '�ӂ�ӂ�̃x�b�h', 30000, 1);
INSERT INTO item VALUES(8, '�~���m���h���A', 300, 2);

��T�D
SELECT item_name, item_price FROM item WHERE category_id =1;

��U�D
SELECT item_name, item_price FROM item WHERE item_price >=1000;

��V�D
SELECT item_name, item_price FROM item WHERE item_name LIKE '��';