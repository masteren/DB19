# DB19 - Database Study Notes

## 中文

这是每周二数据库课程学习内容的 GitHub 上传用仓库。

### 2026-04-28

本周主题是 DB2 SQL 复习。根据课题 1 文件内容，本仓库整理了 SQL 查询答案，方便上传到 GitHub 保存。

### 2026-05-12

本周主题是数据库设计。课堂笔记重点记录了数据库设计在系统开发中的作用、长期使用时的重要性，以及从概念设计到实现的基本流程。

数据库设计不仅是创建表和字段，还需要先理解业务对象、对象之间的关系，以及数据在系统中如何被长期维护。良好的数据库设计可以提高系统开发效率，减少重复数据和维护成本，并让后续功能扩展更加稳定。

### 2026-05-19

本周继续学习数据库设计，重点是根据业务内容制作 ER 图。课堂笔记整理了从业务分析和访谈内容中抽取名词、发现实体和属性、确定主键与外键，以及把多对多关系转换为中间表的流程。

本次课题以教育管理系统为例，设计了講師、コース、受講生、教室、スケジュール、受講等实体。其中スケジュール使用「コースコード + 実施開始日」作为复合主键，受講表用于连接受講生和スケジュール。

### 2026-05-26

本周继续学习数据库设计，重点是从 ER 图进入表设计。课堂笔记整理了实体如何转换为表、属性如何转换为字段，以及主键、唯一约束、非空约束、外键和命名规则在表设计中的作用。

本周内容还复习了正规化的意义。通过把コース和スケジュール等信息按含义拆分到不同表中，可以减少重复数据，并使用主键和外键保持表之间的关系。

### 2026-06-02

本周学习正規化，使用教育管理系统的受講票数据作为练习材料，从第一范式到第三范式进行逐步分解。

以受講者ID 200001（秋元正則）报名3门课程的数据为例，演示了如何识别部分依赖和传递依赖，并拆分为受講者表、受講申し込み表、コース表、コーススケジュール表、講師表共5张规范化表。

### 学习内容
- `SELECT` / `FROM` 的基本查询结构
- `WHERE` 条件筛选
- `COUNT`、`SUM`、`MIN` 等聚合函数
- `GROUP BY` 和 `HAVING`
- 表连接：旧式 `WHERE` 连接和 `JOIN ... ON`
- `LEFT JOIN`
- 子查询
- 自连接
- 非等值连接
- SQL 注释：`--` 单行注释、`/* */` 多行注释
- MySQL 终端登录和基础操作命令
- 数据库设计的目的：提高系统开发效率，并支持系统长期使用
- 数据库设计流程：
  1. 概念设计：整理业务中的实体和关系，通常使用 ERD 表示
  2. 逻辑设计：把概念模型转换为关系数据库中的表结构
  3. 正规化：减少数据重复，避免更新、插入、删除异常
  4. 物理设计：考虑数据类型、索引、存储方式和执行效率
  5. 实装：根据设计结果创建数据库、表和约束
- ERD（Entity Relationship Diagram）：用于表达实体、属性和实体之间的关系
- 实体（Entity）：系统中需要管理的对象，例如学生、员工、部门、商品等
- 关系（Relationship）：实体之间的联系，例如员工属于部门、学生选修课程
- 实体的常见种类：
  - 人：顾客、员工、学生、负责人
  - 物：商品、物件、文件、车辆、设备
  - 地点：店铺、仓库、教室、房间
  - 事件：订单、预约、合同、付款、出勤
  - 概念：部门、职位、权限、科目、分类
- ER 图的基本部件：实体、属性、关系、主键、外键，以及表示数量关系的连接线
- 基数（Cardinality）：表示两个实体之间的数量关系，例如一对一、一对多、多对多
- 可选性（Optionality）：表示某个关系是否必须存在，例如员工必须属于某个部门，或者顾客不一定有订单
- ER 图作成流程：业务整理、实体抽取、属性整理、主键确定、关系整理、外键设计
- 从访谈和需求说明中抽取名词，用于发现实体和属性
- 复合主键：使用多个字段共同唯一识别一条记录
- 外键：连接相关表，并保证引用的数据存在
- 中间表：用于表达多对多关系，例如受講生和スケジュール之间的受講表
- 教育管理系统 ER 图：講師、コース、受講生、教室、スケジュール、受講
- 从 ER 图到表设计：实体转换为表，属性转换为字段
- 表名和字段名的命名规则：保持统一，使用清楚且容易管理的名称
- 主键：唯一识别记录，不能重复，也不能为 NULL
- UNIQUE：限制字段值不能重复
- NOT NULL：限制字段必须输入值
- FOREIGN KEY：引用其他表的主键，保持表之间的数据一致性
- 正规化在表设计中的作用：减少重复数据，避免维护问题
- 正规化步骤：第一范式（消除重复列）→ 第二范式（消除部分依赖）→ 第三范式（消除传递依赖）
- 部分依赖：字段只依赖复合主键的一部分，需要拆出到单独表
- 传递依赖：非主键字段依赖另一个非主键字段，需要再次拆分
- 教育系统正规化结果：受講者表、受講申し込み表、コース表、コーススケジュール表、講師表

### 文件说明
- `1/sql_practice.sql`: SQL 复习记录和课题模板
- `1/DB22_assignment01.sql`: DB22 课题 1 SQL 答案整理版
- `2/笔记.md`: 数据库设计课堂笔记
- `2/1.txt`: DB22 课题 1 SQL 答案原始记录
- `3/笔记.md`: ER 图作成和教育管理系统数据库设计笔记
- `3/扫描的文稿 2.pdf`: 本周课堂资料扫描文件
- `4/笔记.md`: ER 图到表设计、约束条件和正规化课堂笔记
- `4/B085FB5D-BCC7-4FC9-9E50-B7962665388D.heic`: 本周课堂照片资料
- `5/笔记.md`: 正规化课堂笔记（1NF/2NF/3NF 具体步骤和5表拆分结果）
- `5/DB2x_設計_正規化ワークシート.xlsx`: 正规化练习 worksheet
- `outputs/er_diagram/DB2x_課題02_設計_ER図.drawio`: 教育管理系统 ER 图

之后每周二根据课堂内容继续更新。

---

## 日本語

このリポジトリは、毎週火曜日のデータベース授業で学んだ内容を GitHub に記録するためのものです。

### 2026-04-28

今週のテーマは DB2 SQL の復習です。課題 1 のファイル内容に基づいて、GitHub にアップロードしやすいように SQL の解答を整理しました。

### 2026-05-12

今週のテーマはデータベース設計です。授業メモでは、システム開発におけるデータベース設計の役割、長期利用を考えた設計の重要性、概念設計から実装までの基本的な流れを整理しました。

データベース設計は、単にテーブルや列を作成する作業ではありません。業務で扱う対象、対象同士の関係、データを長期的にどのように管理するかを先に考える必要があります。適切な設計を行うことで、開発効率を上げ、重複データや保守コストを減らし、将来の機能追加にも対応しやすくなります。

### 2026-05-19

今週はデータベース設計の続きとして、業務内容から ER 図を作成する方法を学習しました。授業メモでは、業務分析やインタビュー内容から名詞を抜き出し、エンティティ、属性、主キー、外部キー、多対多関係の中間表を整理する流れをまとめました。

今回の課題では教育管理システムを例として、講師、コース、受講生、教室、スケジュール、受講などのエンティティを設計しました。スケジュールは「コースコード + 実施開始日」を複合主キーとして管理し、受講表は受講生とスケジュールを結ぶ中間表として扱います。

### 2026-05-26

今週はデータベース設計の続きとして、ER 図からテーブル設計へ進む内容を学習しました。授業メモでは、エンティティをテーブルへ、属性をカラムへ変換する考え方と、主キー、ユニーク制約、NOT NULL 制約、外部キー、命名規則を整理しました。

また、正規化の意味も復習しました。コースとスケジュールなどの情報を意味ごとに分けて管理することで、データの重複を減らし、主キーと外部キーでテーブル間の関係を保てます。

### 2026-06-02

今週は正規化を学習しました。教育管理システムの受講票データをもとに、第1正規形から第3正規形まで段階的にテーブルを分解する練習を行いました。

受講者ID 200001（秋元正則）が3コースを受講するデータを例として、部分従属と推移従属を識別し、受講者テーブル・受講申し込みテーブル・コーステーブル・コーススケジュールテーブル・講師テーブルの5テーブルに分解しました。

### 学習内容
- `SELECT` / `FROM` の基本的な問い合わせ構文
- `WHERE` による条件指定
- `COUNT`、`SUM`、`MIN` などの集約関数
- `GROUP BY` と `HAVING`
- テーブル結合：従来の `WHERE` 結合と `JOIN ... ON`
- `LEFT JOIN`
- サブクエリ
- 自己結合
- 非等価結合
- SQL コメント：`--` の 1 行コメント、`/* */` の複数行コメント
- MySQL のログインと基本的なコマンド操作
- データベース設計の目的：システム開発を効率化し、長期利用に耐えられる構造を作る
- データベース設計の手順：
  1. 概念設計：業務上のエンティティとリレーションシップを整理し、ERD で表す
  2. 論理設計：概念モデルをリレーショナルデータベースの表構造へ変換する
  3. 正規化：データの重複を減らし、更新・挿入・削除時の問題を防ぐ
  4. 物理設計：データ型、インデックス、保存方法、処理効率を検討する
  5. 実装：設計内容に基づいてデータベース、表、制約を作成する
- ERD（Entity Relationship Diagram）：エンティティ、属性、エンティティ間の関係を表す図
- エンティティ（Entity）：システムで管理する実体。例：学生、従業員、部署、商品など
- リレーションシップ（Relationship）：エンティティ同士の関係。例：従業員が部署に所属する、学生が科目を履修する
- エンティティの主な種類：
  - 人：顧客、社員、学生、担当者
  - 物：商品、物件、書類、車、設備
  - 場所：店舗、倉庫、教室、部屋
  - 出来事：注文、予約、契約、入金、出席
  - 概念：部門、役職、権限、科目、カテゴリ
- ER 図の基本部品：エンティティ、属性、リレーションシップ、主キー、外部キー、数量関係を表す線
- カーディナリティ（Cardinality）：2 つのエンティティ間の数量関係。例：1 対 1、1 対多、多対多
- オプショナリティ（Optionality）：関係が必須か任意かを表す考え方。例：従業員は必ず部署に所属するが、顧客は注文を持たない場合もある
- ER 図作成の流れ：業務整理、エンティティ抽出、属性整理、主キー決定、関係整理、外部キー設計
- インタビューや要件説明から名詞を抜き出し、エンティティと属性を見つける方法
- 複合主キー：複数の項目で 1 件のレコードを一意に識別するキー
- 外部キー：関連する表を接続し、参照先データの存在を保証する項目
- 中間表：多対多関係を表現するための表。例：受講生とスケジュールを結ぶ受講表
- 教育管理システムの ER 図：講師、コース、受講生、教室、スケジュール、受講
- ER 図からテーブル設計へ：エンティティをテーブルに、属性をカラムに変換する
- テーブル名とカラム名の命名規則：統一された分かりやすい名前を使う
- 主キー：レコードを一意に識別し、重複と NULL を許可しない
- UNIQUE：値の重複を禁止する
- NOT NULL：値の入力を必須にする
- FOREIGN KEY：他のテーブルの主キーを参照し、表同士の整合性を保つ
- 正規化の役割：データの重複を減らし、保守しやすい構造にする
- 正規化の手順：第1正規形（繰り返し列の排除）→ 第2正規形（部分従属の排除）→ 第3正規形（推移従属の排除）
- 部分従属：複合主キーの一部だけに依存する項目を切り出す
- 推移従属：非キー項目が別の非キー項目に依存する場合はさらに分割する
- 教育システム正規化結果：受講者テーブル・受講申し込みテーブル・コーステーブル・コーススケジュールテーブル・講師テーブル

### ファイル
- `1/sql_practice.sql`: SQL 復習メモと課題テンプレート
- `1/DB22_assignment01.sql`: DB22 課題 1 の SQL 解答整理版
- `2/笔记.md`: データベース設計の授業メモ
- `2/1.txt`: DB22 課題 1 の SQL 解答の元記録
- `3/笔记.md`: ER 図作成と教育管理システムのデータベース設計メモ
- `3/扫描的文稿 2.pdf`: 今週の授業資料スキャン
- `4/笔记.md`: ER 図からテーブル設計、制約条件、正規化に関する授業メモ
- `4/B085FB5D-BCC7-4FC9-9E50-B7962665388D.heic`: 今週の授業写真資料
- `5/笔记.md`: 正規化の授業メモ（1NF/2NF/3NF の手順と5テーブルへの分解結果）
- `5/DB2x_設計_正規化ワークシート.xlsx`: 正規化練習用ワークシート
- `outputs/er_diagram/DB2x_課題02_設計_ER図.drawio`: 教育管理システム ER 図

今後も毎週火曜日に授業内容に合わせて更新します。

---

## English

This repository is for uploading weekly database class study notes to GitHub every Tuesday.

### 2026-04-28

This week's topic is a DB2 SQL review. Based on the assignment 1 file, this repository includes a cleaned SQL answer file for GitHub upload.

### 2026-05-12

This week's topic is database design. The class notes cover why database design matters in system development, why it is important for long-term system use, and the basic workflow from conceptual design to implementation.

Database design is more than creating tables and columns. It starts with understanding business objects, the relationships between those objects, and how data should be maintained over time. A well-designed database improves development efficiency, reduces duplicated data and maintenance cost, and makes future system changes easier.

### 2026-05-19

This week continued the topic of database design, focusing on how to create an ER diagram from business requirements. The notes summarize how to extract nouns from business analysis and interviews, identify entities and attributes, decide primary keys and foreign keys, and convert many-to-many relationships into intermediate tables.

The assignment uses an education management system as the example. The ER diagram includes teachers, courses, students, classrooms, schedules, and enrollments. The schedule table uses a composite primary key of course code and start date, and the enrollment table connects students and schedules.

### 2026-05-26

This week continued database design by moving from ER diagrams to table design. The notes summarize how entities become tables, how attributes become columns, and how primary keys, unique constraints, NOT NULL constraints, foreign keys, and naming rules are used in table design.

The class also reviewed normalization. By separating information such as courses and schedules according to meaning, the database can reduce duplication and keep table relationships consistent with primary keys and foreign keys.

### 2026-06-02

This week covered normalization in depth. Using enrollment ticket data from an education management system, we practiced decomposing tables step by step from 1NF to 3NF.

Starting from a single denormalized table of student 200001 (Akimoto Masanori) enrolled in three courses, we identified partial dependencies and transitive dependencies, and split the data into five normalized tables: student, enrollment, course, course schedule, and instructor.

### Topics
- Basic `SELECT` / `FROM` query structure
- Filtering with `WHERE`
- Aggregate functions such as `COUNT`, `SUM`, and `MIN`
- `GROUP BY` and `HAVING`
- Table joins: old-style `WHERE` joins and `JOIN ... ON`
- `LEFT JOIN`
- Subqueries
- Self joins
- Non-equijoin conditions
- SQL comments: single-line comments with `--` and multi-line comments with `/* */`
- MySQL login and basic command-line operations
- Purpose of database design: improve system development efficiency and support long-term use
- Database design workflow:
  1. Conceptual design: identify business entities and relationships, usually with an ERD
  2. Logical design: convert the conceptual model into relational table structures
  3. Normalization: reduce duplicated data and prevent update, insert, and delete anomalies
  4. Physical design: decide data types, indexes, storage strategy, and performance details
  5. Implementation: create databases, tables, and constraints based on the design
- ERD (Entity Relationship Diagram): a diagram for entities, attributes, and relationships
- Entity: an object managed by the system, such as a student, employee, department, or product
- Relationship: a connection between entities, such as an employee belonging to a department or a student taking a course
- Common entity types:
  - Person: customer, employee, student, person in charge
  - Object: product, property, document, car, equipment
  - Place: store, warehouse, classroom, room
  - Event: order, reservation, contract, payment, attendance
  - Concept: department, job title, permission, subject, category
- Basic ER diagram parts: entities, attributes, relationships, primary keys, foreign keys, and lines showing relationship rules
- Cardinality: the number relationship between two entities, such as one-to-one, one-to-many, and many-to-many
- Optionality: whether a relationship is required or optional, such as an employee requiring a department while a customer may have no orders
- ER diagram workflow: business analysis, entity extraction, attribute organization, primary key selection, relationship analysis, and foreign key design
- Extracting nouns from interviews and requirements to identify entities and attributes
- Composite primary keys: using multiple columns to uniquely identify one record
- Foreign keys: connecting related tables and ensuring referenced records exist
- Intermediate tables: tables used to represent many-to-many relationships, such as the enrollment table between students and schedules
- Education management system ER diagram: teachers, courses, students, classrooms, schedules, and enrollments
- From ER diagram to table design: converting entities into tables and attributes into columns
- Table and column naming rules: using consistent and understandable names
- Primary key: uniquely identifies records and cannot be duplicated or NULL
- UNIQUE: prevents duplicate values
- NOT NULL: requires a value
- FOREIGN KEY: references another table's primary key and keeps data consistent
- Role of normalization in table design: reducing duplicated data and improving maintainability
- Normalization steps: 1NF (remove repeating columns) → 2NF (remove partial dependencies) → 3NF (remove transitive dependencies)
- Partial dependency: a non-key column depends on only part of a composite primary key
- Transitive dependency: a non-key column depends on another non-key column
- Education system normalization result: student table, enrollment table, course table, course schedule table, instructor table

### Files
- `1/sql_practice.sql`: SQL review notes and assignment template
- `1/DB22_assignment01.sql`: Cleaned SQL answers for DB22 assignment 01
- `2/笔记.md`: Class notes about database design
- `2/1.txt`: Original SQL answer notes for DB22 assignment 01
- `3/笔记.md`: Notes about ER diagram creation and education management system database design
- `3/扫描的文稿 2.pdf`: Scanned class material for this week
- `4/笔记.md`: Class notes about ER diagrams, table design, constraints, and normalization
- `4/B085FB5D-BCC7-4FC9-9E50-B7962665388D.heic`: Class photo material for this week
- `5/笔记.md`: Class notes about normalization (1NF/2NF/3NF steps and 5-table decomposition result)
- `5/DB2x_設計_正規化ワークシート.xlsx`: Normalization practice worksheet
- `outputs/er_diagram/DB2x_課題02_設計_ER図.drawio`: ER diagram for the education management system

This repository will be updated every Tuesday based on the class content.
