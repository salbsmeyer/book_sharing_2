class UserBook < ActiveRecord::Base

  belongs_to :user
  has_many :borrows
  has_many :borrower, :through => :borrows


  def last_borrower
    borrower.order("borrow_date").last
  end


end
