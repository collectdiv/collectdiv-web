class StudyGroup < ActiveRecord::Base

  attr_accessible :name, :start_date, :end_date, :description,
    :meeting_time, :logo_path

  has_many :users, :through => :reservations
end
