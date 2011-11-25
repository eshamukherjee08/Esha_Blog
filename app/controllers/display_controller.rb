class DisplayController < ApplicationController
  def index
    @posts = Post.all
  end

end
