class StudyGroup < ActiveRecord::Base

  attr_accessible :name, :start_date, :end_date, :description,
    :meeting_time

  has_many :users, :through => :reservations
end
