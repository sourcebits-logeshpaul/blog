class User < ActiveRecord::Base
	validates :last_name, presence: true #Validates the last_name when trying to insert record in console

	has_one :image
	has_many :posts
	has_many :comments

	acts_as_api

	api_accessible :default do |template|
		template.add :last_name
	end
	api_accessible :first, extend: :default do |template|
		template.add :first_name
	end


end