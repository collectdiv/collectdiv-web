class StudyGroup < ActiveRecord::Base

  attr_accessible :name, :start_date, :end_date, :description,
    :meeting_time, :logo

  has_attached_file :logo

  has_many :users, :through => :reservations
end
