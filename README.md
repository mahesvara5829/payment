# アプリ名 sp-payment

# アプリケーションの概要  
### パチンコ、スロットの収支管理アプリ

# https://sp-payment.herokuapp.com/

# ログインアドレス 0@0 PW 000000

# 利用方法  
### ログインし、結果作成を押し必要項目入力後SENDを押すと記録が保存され、トップページ一覧とマイページに表示される。  
### 一覧の詳細を押すと保存したデータごとの詳しい結果が表示される。

# 目指した課題解決
### 既存のアプリだと一日一店舗一機種しか結果を登録できないためメモアプリなどに記述して稼働終わりに収支表アプリに入力しないといけない。  
### 一日一機種しか打たないということはプロ、素人含めてほとんどありえないので一つずつ収支登録できるアプリが必要でした。

# 実装した機能について
### 利用者が一番求めていたものは一日何台遊戯してもそれぞれのデータが管理できること、店ごとの換金率を洗濯して計算に反映し表示すること、金額ではなくメダルや玉数でデータを管理すること、この三点でした。換金率に関してはオーソドックスな換金率をアクティブハッシュに記述し、収支登録することにより計算式に自動反映されるようにしてます。メダル数や玉数での管理の方が大事なのでデータベースのカラムにはメダル数、玉数を保存できるようにし、金額は全て計算で出力できるようにしてます。

# 今後の実装予定
### 利用者からの要望は、カレンダー機能、グラフ機能、コメントに対する通知機能です。

# ローカルでの動作方法
## Railsバージョン _6.0.0_
### % cd （クローンしたいフォルダー）
### % git clone https://github.com/mahesvara5829/payment.git
### % cd payment
### % bundle install
### % yarn install 
### % rails db:create
### % rails db:migrate
### % rails s



# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :payments
- has_many :comments

## sp_payments テーブル

| Column          | Type    | Options     |
| --------------- | ------- | ----------- |
| store_id        | integer | null: false |
| kisyu_id        | integer | null: false |
| investment_medal| string  | null: false |
| investment_ball | string  | null: false |
| recovery_medal  | string  | null: false |
| recovery_ball   | string  | null: false |
| medal           | string  | null: false |
| ball            | string  | null: false |
| srate_id        | integer | null: false |
| prate_id        | integer | null: false |
| month_id        | integer | null: false |
| day_id          | integer | null: false |
| memo            | text    | null: false |
| user_id         | integer | null: false |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| user_id       | integer | null: false |
| sp_payment_id | integer | null: false |
| text          | text    | null: false |

### Association

- belongs_to :user
- belongs_to :sp_payment