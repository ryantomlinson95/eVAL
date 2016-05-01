class User < ActiveRecord::Base
	# Database model:
	# Each User can have many members, one-to-many
	# Each User can have many groups via memberships, one-to-many
	# Each User can have many courses, one-to-many
	# Each User can have many evaluations, one-to-many
	# Each User can have many results, one-to-many
	has_many :memberships
	has_many :groups, :through => :memberships
	has_many :courses
	has_many :evals
	has_many :results
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, password_length: 9..9
end
