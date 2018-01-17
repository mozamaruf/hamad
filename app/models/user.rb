class User < ApplicationRecord
	has_many :tools

	validates :name, :email, :password, :role, presence: :true
	validates_uniqueness_of :email

	private
	def format_email
		email.downcase!
	end
end
