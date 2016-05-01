class Group < ActiveRecord::Base
# Database model:
# Each Group can have many members, one-to-many
# Each Group can have many evaluations, one-to-many
# Each Group can have many users via memberships, one-to-many
# Each Group has one course, one-to-one
	has_many :memberships
	has_many :evals
	has_many :users, :through => :memberships
	belongs_to :course
end
