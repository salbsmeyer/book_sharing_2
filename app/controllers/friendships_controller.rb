class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.all
  end

  def show
    @friendship = Friendship.find(params[:id])
  end

  def new
    @friendship = Friendship.new
  end

  def create
    @friendship = Friendship.new
    @friendship.receiver_id = params[:receiver_id]
    @friendship.sender_id = params[:sender_id]

    if @friendship.save
      redirect_to "/friendships", :notice => "Friendship created successfully."
    else
      render 'new'
    end
  end

  def edit
    @friendship = Friendship.find(params[:id])
  end

  def update
    @friendship = Friendship.find(params[:id])

    @friendship.receiver_id = params[:receiver_id]
    @friendship.sender_id = params[:sender_id]

    if @friendship.save
      redirect_to "/friendships", :notice => "Friendship updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])

    @friendship.destroy

    redirect_to "/friendships", :notice => "Friendship deleted."
  end
end
