# A Role is a way to distinguish between normal dumb users and
# good looking administrators.
class Role < ActiveRecord::Base
  attr_protected :name
  has_and_belongs_to_many :users
end
