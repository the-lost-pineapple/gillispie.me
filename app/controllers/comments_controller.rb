class CommentsController < ApplicationController

  before_action :set_post

  # POST /comments
  # POST /comments.json
  def create
    @comment = @post.comments.new(post_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end


  private
  def set_post
    @post = Post.find(params[:comment][:post_id])
  end

  def post_params
    params.require(:comment).permit(:name, :email, :body)
  end

end
