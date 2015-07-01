class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :trackable, :validatable
  devise :database_authenticatable, :registerable, :recoverable	
  
  has_many :products
  accepts_nested_attributes_for :products, reject_if: :all_blank, allow_destroy: true
end
