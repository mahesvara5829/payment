class CreateSpPayments < ActiveRecord::Migration[6.0]
  def change
    create_table :sp_payments do |t|
      t.integer :store_id,null:false, numericality: { other_than: 1 } 
      t.integer :kisyu_id,null:false, numericality: { other_than: 1 } 
      t.string :investment_medal,null:false
      t.string :investment_ball,null:false
      t.string :recovery_medal,null:false
      t.string :recovery_ball,null:false
      t.string :medal,null:false
      t.string :ball,null:false
      t.integer :month_id,null:false, numericality: { other_than: 1 } 
      t.integer :day_id,null:false, numericality: { other_than: 1 } 
      t.text :memo,null:false
      t.integer :user_id,null:false

      t.timestamps
    end
  end
end
