class Eval < ActiveRecord::Base
# Database model:
# Each evaluation has one owner, one-to-one
# Each evaluation has one group, one-to-one
# Each evaluation can have many results, one-to-many
	belongs_to :user
	belongs_to :group
	has_many :results

end
