class CreatePaymentsTable < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :user_id
      t.string :email
      t.string :stripe_token
      t.boolean :success
      t.timestamps
    end
  end
end
