class AddFieldsToStudyGroups < ActiveRecord::Migration
  def change
    add_column :study_groups, :description, :string
  end
end
