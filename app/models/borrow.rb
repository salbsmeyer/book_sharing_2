class Borrow < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

validates :borrower_id, :uniqueness => { :scope => [:lender_id] }

belongs_to :borrower, :class_name => "User", :foreign_key => "borrower_id"
belongs_to :lender, :class_name => "User", :foreign_key => "lender_id"
belongs_to :user_book

end
