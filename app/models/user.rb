class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   enum role: %i[reader admin]

   has_many :issues
   has_many :books,through: :users

   has_one_attached :avatar, :dependent => :destroy

end
