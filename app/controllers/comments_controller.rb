class CommentsController < ApplicationController
  def index
    @comment = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comment }
    end
  end

  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
    end

  end

  def create
    @comment = Comment.new(:comment=>params[:comment][:comment], :user_id => session[:user_id])
    @post = Post.find(params[:post][:id].to_i)
    @post.comments << @comment

    respond_to do |format|
      if @comment.save
        format.html { redirect_to(@post, :notice => 'Thank you! Comment was successfully added.') }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { redirect_to(@post, :notice => 'Sorry! Comment cannot be added.') }
        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(:back) }
      format.xml  { head :ok }
    end
  end
end
