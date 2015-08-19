class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

has_many :book , :class_name => "Borrow", :foreign_key => "borrower_id"
has_many :user_s_books , :class_name => "UserBook", :foreign_key => "user_id"
end
