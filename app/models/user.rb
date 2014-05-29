class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  has_many :listings, dependent: :destroy

  # use the seller_id column in Order table
  has_many :sales, class_name: "Order", foreign_key: "seller_id"
  
  # use the buyer_id column in Order table
  has_many :purchases, class_name: "Order", foreign_key: "buyer_id"
end
