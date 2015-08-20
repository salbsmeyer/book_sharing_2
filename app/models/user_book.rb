class UserBook < ActiveRecord::Base

  belongs_to :user

  def availble_book
    @user_book.available = true
  end

end
