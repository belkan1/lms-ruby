class Issue < ApplicationRecord
	belongs_to :book
	belongs_to :user

	enum status: %i[notapproved approved returned]

end
