class AddLogoToStudyGroup < ActiveRecord::Migration
  def change
    add_column :study_groups, :logo_path, :string
  end
end
