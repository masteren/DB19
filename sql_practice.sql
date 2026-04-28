/*
  DB19 Database
  2026-04-28 SQL 复习 / SQL 復習

  说明:
  这个文件用于每周 GitHub 学习记录。
  作业答案故意留空，需要自己完成。

  説明:
  このファイルは毎週の GitHub 学習記録用です。
  課題の解答は自分で完成させるため、意図的に空欄にしています。
*/

-- 1. 注释 / コメント
-- 中文: 单行注释使用两个连字符。
-- 日本語: 1 行コメントはハイフン 2 つを使います。

/*
  中文:
  多行注释使用 slash-star 开始，
  使用 star-slash 结束。

  日本語:
  複数行コメントは slash-star で始まり、
  star-slash で終わります。
*/


-- 2. MySQL 终端基础 / MySQL コマンドライン基礎
-- 中文: 用 root 用户登录。
-- 日本語: root ユーザーでログインします。
-- mysql -uroot

-- 中文: 用 root 用户登录，并输入密码。
-- 日本語: root ユーザーでログインし、パスワードを入力します。
-- mysql -uroot -p

-- 中文: 显示数据库列表。
-- 日本語: データベース一覧を表示します。
-- SHOW DATABASES;

-- 中文: 选择要使用的数据库。
-- 日本語: 使用するデータベースを選択します。
-- USE database_name;

-- 中文: 显示当前数据库中的表。
-- 日本語: 現在のデータベース内のテーブルを表示します。
-- SHOW TABLES;

-- 中文: 查看表的字段结构。
-- 日本語: テーブルの列構造を確認します。
-- DESC table_name;

-- 中文: 退出 MySQL。
-- 日本語: MySQL を終了します。
-- EXIT;


-- 3. 基本 SELECT / 基本 SELECT
-- 中文: 基本写法。
-- 日本語: 基本的な書き方。
-- SELECT column_name
-- FROM table_name;

-- 中文: 复习用例。
-- 日本語: 復習用の例。
-- SELECT *
-- FROM table_name;


-- 4. WHERE 条件 / WHERE 条件
-- 中文: 使用 WHERE 筛选符合条件的数据。
-- 日本語: WHERE を使って条件に合うデータを抽出します。
-- SELECT column_name
-- FROM table_name
-- WHERE condition;

-- 中文: 复习用例。
-- 日本語: 復習用の例。
-- SELECT column_name
-- FROM table_name
-- WHERE column_name >= value;


-- 5. 聚合函数 / 集約関数
-- 中文: COUNT 用来计算行数。
-- 日本語: COUNT は行数を数えるために使います。
-- SELECT COUNT(*)
-- FROM table_name;

-- 中文: 复习用例。
-- 日本語: 復習用の例。
-- SELECT COUNT(*) AS row_count
-- FROM table_name;


-- 6. GROUP BY / HAVING
-- 中文: GROUP BY 用来分组，HAVING 用来筛选分组后的结果。
-- 日本語: GROUP BY はグループ化に使い、HAVING はグループ化後の結果を絞り込みます。
-- SELECT group_column, COUNT(*)
-- FROM table_name
-- GROUP BY group_column
-- HAVING COUNT(*) >= number;

-- 中文: 复习用例。
-- 日本語: 復習用の例。
-- SELECT group_column, COUNT(*) AS row_count
-- FROM table_name
-- GROUP BY group_column
-- HAVING COUNT(*) >= value;


-- 7. JOIN 表连接 / JOIN テーブル結合
-- 中文: JOIN 用来把两个表按照共同字段连接起来。
-- 日本語: JOIN は共通する列を使って 2 つのテーブルを結合します。
-- SELECT table_a.column_name, table_b.column_name
-- FROM table_a
-- JOIN table_b ON table_a.key = table_b.key;

-- 中文: 复习用例。
-- 日本語: 復習用の例。
-- SELECT A.column_name, B.column_name
-- FROM table_a A
-- JOIN table_b B ON A.key_column = B.key_column;


-- 8. LEFT JOIN / IS NULL
-- 中文: LEFT JOIN 会保留左表的全部记录。
-- 日本語: LEFT JOIN は左側のテーブルの全レコードを残します。
-- SELECT table_a.column_name, table_b.column_name
-- FROM table_a
-- LEFT JOIN table_b ON table_a.key = table_b.key
-- WHERE table_b.key IS NULL;

-- 中文: 复习用例。
-- 日本語: 復習用の例。
-- SELECT A.column_name, B.column_name
-- FROM table_a A
-- LEFT JOIN table_b B ON A.key_column = B.key_column;


/*
  DB22 课题 1 模板 / DB22 課題 1 テンプレート

  中文:
  下面只保留作业格式，答案需要自己填写。

  日本語:
  以下は課題の形式だけを残し、解答は自分で記入します。
*/

-- 问1 / 問1
-- SELECT
-- FROM ;

-- 问2 / 問2
-- SELECT
-- FROM ;

-- 问3 / 問3
-- SELECT
-- FROM ;

-- 中文: 以下内容请自己追加。
-- 日本語: 以下は自分で追加してください。

-- 中文: 如果会发生 ERROR，就把 SQL 本身注释掉。
-- 日本語: ERROR になる場合、SQL 自体をコメントアウトします。
/*
SELECT
FROM
;
*/

-- END ---
