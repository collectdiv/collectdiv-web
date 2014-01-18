class CreateStudyGroups < ActiveRecord::Migration
  def change
    create_table :study_groups do |t|

      t.timestamps
    end
  end
end
