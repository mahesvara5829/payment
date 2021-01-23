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
| month_id        | integer | null: false |
| day_id          | integer | null: false |
| memo            | text    | null: false |
| user_id         | integer | null: false |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| user_id    | integer | null: false |
| payment_id | integer | null: false |
| text       | text    | null: false |

### Association

- belongs_to :user
- belongs_to :payment