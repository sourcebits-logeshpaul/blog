class User < ActiveRecord::Base
	validates :last_name, presence: true #Validates the last_name when trying to insert record in console

	has_one :image
end