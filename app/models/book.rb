class Book < ApplicationRecord
	belongs_to :category
	extend FriendlyId
  	friendly_id :title, use: :slugged
	
	has_many :issues
	has_many :users,through: :issues

	validates :title, presence: true, length: { minimum: 5 }
	validates :author, presence: true, length: { minimum: 5 }

	include Searchable

end
