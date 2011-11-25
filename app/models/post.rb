class Post < ActiveRecord::Base
  belongs_to :users
  validates :title, :content, :presence => true
  validates :title, :uniqueness => true
end
