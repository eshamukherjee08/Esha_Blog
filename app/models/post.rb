class Post < ActiveRecord::Base
  belongs_to :user
  validates :title, :content, :presence => true
  validates :title, :uniqueness => true
  
  acts_as_commentable
end
