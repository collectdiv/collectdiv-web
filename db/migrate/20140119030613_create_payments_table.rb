class CreatePaymentsTable < ActiveRecord::Migration
  def change
    create_table :payments_tables do |t|
      t.string :user_id
      t.string :email
      t.string :stripe_token
      t.boolean :success
    end
  end
end
