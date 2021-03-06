class Friendship < ActiveRecord::Base
validates :receiver_id, :uniqueness => { :scope => [:sender_id] }

belongs_to :user

belongs_to :receiver, :class_name => "User", :foreign_key => "receiver_id"
belongs_to :sender, :class_name => "User", :foreign_key => "sender_id"

end
