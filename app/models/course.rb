class Course < ActiveRecord::Base
# Database model:
# Each course has one owner, one-to-one
# Each course can have many groups, one-to-many
	belongs_to :user
	has_many :groups

end
