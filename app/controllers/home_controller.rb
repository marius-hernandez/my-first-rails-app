class HomeController < ApplicationController
  include Postable
  
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :set_user_status
  
  def index
    @user_status = ""
    @post = Post.new
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      render :index
    end
  end

  # PATCH/PUT /posts/:id
  def update
    if @post.update(post_params)
      # redirect_to @post, notice: 'Post was successfully updated.'
      redirect_to root_path, notice: 'Post was successfully updated.'
    else
      render :edit
    end
  end


  # GET /posts/:id
  def show
  end

  # GET /posts/:id/edit
  def edit
  end

  

  # DELETE /posts/:id
  def destroy
    @post.destroy
    redirect_to root_path, notice: 'Post was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def post_params
    params.require(:post).permit(:username, :content)
  end

  def set_user_status
    @user_status = "maryus"
  end
end
