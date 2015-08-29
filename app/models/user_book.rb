class UserBook < ActiveRecord::Base



  belongs_to :user
  has_many :borrows
  has_many :borrowers, :through => :borrows
  has_many :friendships, :through => :borrows

  def last_borrower
    borrowers.order("borrow_date").last
  end


end
