class UserBook < ActiveRecord::Base

  belongs_to :user
  has_many :borrows
  has_many :borrower, :through => :borrows


end
