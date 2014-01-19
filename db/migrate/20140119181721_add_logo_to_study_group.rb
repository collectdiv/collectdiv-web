class AddLogoToStudyGroup < ActiveRecord::Migration
  
  def up
    add_attachment :study_groups, :logo
  end

  def down
    remove_attachment :study_groups, :logo
  end
end
