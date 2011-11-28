class DisplayController < ApplicationController
  skip_before_filter :authorize
  def index
    @posts = Post.paginate :page => params[:page], :order => 'created_at desc', :per_page => 3
  end

end
