class AddTypeToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :type, :string
  end
end
