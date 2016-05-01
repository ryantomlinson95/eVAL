class Membership < ActiveRecord::Base
	# Database model:
	# Each Member has one user, one-to-one
	# Each Member has one Group, one-to-one
	
	belongs_to :user
	belongs_to :group

	# Ensure that group ID and user ID exist before saving 
	validate :validate_group_id
	validate :validate_user_id

	private
		def validate_group_id
			errors.add(:group_id, "does not exist") unless Group.exists?(self.group_id)
		end

	private	
		def validate_user_id
			errors.add(:user_id, "does not exist") unless User.exists?(self.user_id)
		end
end
