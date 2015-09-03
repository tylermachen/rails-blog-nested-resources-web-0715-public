class User < ActiveRecord::Base
  has_many :posts
  has_many :comments

  validates_uniqueness_of :name
  validates_presence_of :name
  # after_destroy :remove_comments

  # private
  #
  # def remove_comments
  #   comments.delete_all
  # end
end
