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
SELECT item_name, item_price FROM item WHERE item_name LIKE '%肉%';


					//SELECT
					    顧客表.* ,伝票表.*                   (顧客と伝票の情報を抽出したいなー)
					FROM
					    顧客表 INNER JOIN 伝票表             (カラム同士を結合)(内部結合)
					    ON 顧客表.顧客№ = 伝票表.顧客№     (結合規則ONでカラムの値が一致するデータのみ取得)(テーブル名.カラム名)
					WHERE
					    顧客表.顧客名 = '鈴木'               (条件付けたち)
					    AND 伝票表.日付 = '8/20'
					//    

					SQLの制約たち
					・主キー制約…被るな、何か入れろ。
					・一意性制約(UNIQUE)…他の行の値と重複しちゃダメ制約、ユニーク。
					・NOT NULL制約…カラムに格納する値としてNULLを禁止したい場合、カラムにNOT NULL制約を設定します。

問８．
SELECT item_id, item_name, item_price, category_name FROM item INNER JOIN item_category ON item.category_id = item_category.category_id;

問９．
SELECT category_name, SUM(item_price)total_price FROM item INNER JOIN item_category ON item.category_id = item_category.category_id GROUP BY item.category_id ORDER BY total_price DESC;