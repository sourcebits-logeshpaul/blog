class Tag < ActiveRecord::Base
	# has_and_belongs_to_many :posts
  has_many :tag_details
  has_many :posts, through: :tag_details
end
