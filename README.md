# DB19 - Database Study Notes

## 中文

这是每周二数据库课程学习内容的 GitHub 上传用仓库。

### 2026-04-28

本周主题是 DB2 SQL 复习。根据课题 1 文件内容，本仓库整理了 SQL 查询答案，方便上传到 GitHub 保存。

### 2026-05-12

本周主题是数据库设计。课堂笔记重点记录了数据库设计在系统开发中的作用、长期使用时的重要性，以及从概念设计到实现的基本流程。

数据库设计不仅是创建表和字段，还需要先理解业务对象、对象之间的关系，以及数据在系统中如何被长期维护。良好的数据库设计可以提高系统开发效率，减少重复数据和维护成本，并让后续功能扩展更加稳定。

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

### 文件说明
- `1/sql_practice.sql`: SQL 复习记录和课题模板
- `1/DB22_assignment01.sql`: DB22 课题 1 SQL 答案整理版
- `2/笔记.md`: 数据库设计课堂笔记
- `2/1.txt`: DB22 课题 1 SQL 答案原始记录

之后每周二根据课堂内容继续更新。

---

## 日本語

このリポジトリは、毎週火曜日のデータベース授業で学んだ内容を GitHub に記録するためのものです。

### 2026-04-28

今週のテーマは DB2 SQL の復習です。課題 1 のファイル内容に基づいて、GitHub にアップロードしやすいように SQL の解答を整理しました。

### 2026-05-12

今週のテーマはデータベース設計です。授業メモでは、システム開発におけるデータベース設計の役割、長期利用を考えた設計の重要性、概念設計から実装までの基本的な流れを整理しました。

データベース設計は、単にテーブルや列を作成する作業ではありません。業務で扱う対象、対象同士の関係、データを長期的にどのように管理するかを先に考える必要があります。適切な設計を行うことで、開発効率を上げ、重複データや保守コストを減らし、将来の機能追加にも対応しやすくなります。

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

### ファイル
- `1/sql_practice.sql`: SQL 復習メモと課題テンプレート
- `1/DB22_assignment01.sql`: DB22 課題 1 の SQL 解答整理版
- `2/笔记.md`: データベース設計の授業メモ
- `2/1.txt`: DB22 課題 1 の SQL 解答の元記録

今後も毎週火曜日に授業内容に合わせて更新します。

---

## English

This repository is for uploading weekly database class study notes to GitHub every Tuesday.

### 2026-04-28

This week's topic is a DB2 SQL review. Based on the assignment 1 file, this repository includes a cleaned SQL answer file for GitHub upload.

### 2026-05-12

This week's topic is database design. The class notes cover why database design matters in system development, why it is important for long-term system use, and the basic workflow from conceptual design to implementation.

Database design is more than creating tables and columns. It starts with understanding business objects, the relationships between those objects, and how data should be maintained over time. A well-designed database improves development efficiency, reduces duplicated data and maintenance cost, and makes future system changes easier.

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

### Files
- `1/sql_practice.sql`: SQL review notes and assignment template
- `1/DB22_assignment01.sql`: Cleaned SQL answers for DB22 assignment 01
- `2/笔记.md`: Class notes about database design
- `2/1.txt`: Original SQL answer notes for DB22 assignment 01

This repository will be updated every Tuesday based on the class content.
