class AddUsersAndStudyGroupsToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :study_group_id, :string
    add_column :reservations, :user_id, :string
  end
end
