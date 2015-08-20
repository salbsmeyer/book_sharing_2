class UserBooksController < ApplicationController
  def index
    @user_books = UserBook.all
  end

  def availble_book
    @user_book.available = true
  end

  def my_info
    @user_book = UserBook.find(params[:id])
  end

  def show
    @user_book = UserBook.find(params[:id])
  end

  def new
    @user_book = UserBook.new
  end

  def create
    @user_book = UserBook.new
    @user_book.genre = params[:genre]
    @user_book.author = params[:author]
    @user_book.user_id = params[:user_id]
    @user_book.available = params[:available]
    @user_book.notes = params[:notes]
    @user_book.rating = params[:rating]
    @user_book.image = params[:image]
    @user_book.title = params[:title]

    if @user_book.save
      redirect_to "/user_books", :notice => "User book created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_book = UserBook.find(params[:id])
  end

  def update
    @user_book = UserBook.find(params[:id])

    @user_book.genre = params[:genre]
    @user_book.author = params[:author]
    @user_book.user_id = params[:user_id]
    @user_book.available = params[:available]
    @user_book.notes = params[:notes]
    @user_book.rating = params[:rating]
    @user_book.image = params[:image]
    @user_book.title = params[:title]

    if @user_book.save
      redirect_to "/user_books", :notice => "User book updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_book = UserBook.find(params[:id])

    @user_book.destroy

    redirect_to "/user_books", :notice => "User book deleted."
  end

def user
  @user = User.find(params[:id])

  @user_book.username = params [:username]
end



end
