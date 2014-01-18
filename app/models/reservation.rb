# A Reservation represents a spot in the class, allowing us to do many-to-many
# relationships between users and Study Groups.
class Reservation < ActiveRecord::Base

  # Either an instructor, student, assistant, whatever
  attr_accessible :type

  belongs_to :user
  belongs_to :study_group

end
