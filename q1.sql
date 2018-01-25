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
SELECT item_name, item_price FROM item WHERE item_name LIKE '%��%';


					//SELECT
					    �ڋq�\.* ,�`�[�\.*                   (�ڋq�Ɠ`�[�̏��𒊏o�������ȁ[)
					FROM
					    �ڋq�\ INNER JOIN �`�[�\             (�J�������m������)(��������)
					    ON �ڋq�\.�ڋq�� = �`�[�\.�ڋq��     (�����K��ON�ŃJ�����̒l����v����f�[�^�̂ݎ擾)(�e�[�u����.�J������)
					WHERE
					    �ڋq�\.�ڋq�� = '���'               (�����t������)
					    AND �`�[�\.���t = '8/20'
					//    

					SQL�̐��񂽂�
					�E��L�[����c���ȁA���������B
					�E��Ӑ�����(UNIQUE)�c���̍s�̒l�Əd��������_������A���j�[�N�B
					�ENOT NULL����c�J�����Ɋi�[����l�Ƃ���NULL���֎~�������ꍇ�A�J������NOT NULL�����ݒ肵�܂��B

��W�D
SELECT item_id, item_name, item_price, category_name FROM item INNER JOIN item_category ON item.category_id = item_category.category_id;

��X�D
SELECT category_name, SUM(item_price)total_price FROM item INNER JOIN item_category ON item.category_id = item_category.category_id GROUP BY item.category_id ORDER BY total_price DESC;