class User < ApplicationRecord
  #has_many :post  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
  
  has_many :posts     
  #has_one :personal_info
  
  #validates :name, :experience, presence: true
  #validates :name, length: { maximum: 15 } 
  #validates :experience, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

end
