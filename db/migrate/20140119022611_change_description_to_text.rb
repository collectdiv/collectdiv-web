class ChangeDescriptionToText < ActiveRecord::Migration
  def up
    change_column :study_groups, :description, :text
  end
  def down
    change_column :study_groups, :description, :string
  end
end
