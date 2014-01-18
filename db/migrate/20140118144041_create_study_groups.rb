class CreateStudyGroups < ActiveRecord::Migration
  def change
    create_table :study_groups do |t|

      t.string :name
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
