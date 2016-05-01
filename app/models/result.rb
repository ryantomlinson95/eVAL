class Result < ActiveRecord::Base
	# Database model:
	# Each Result has one user, one-to-one
	# Each Result has one evaluation, one-to-one
	belongs_to :user
	belongs_to :eval

end
