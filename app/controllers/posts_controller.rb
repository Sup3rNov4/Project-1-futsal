class PostsController < ApplicationController

  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order("created_at DESC")
    @disable_forumnav = false
    @disable_forumhead = false
    @disable_nav = true

    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order('created_at DESC')
    end
  end

  def show
    @disable_forumnav = false
    @disable_forumhead = false
    @disable_nav = true
  end

  def new
    @post = current_player.posts.build
    @disable_forumnav = false
    @disable_forumhead = false
    @disable_nav = true
  end

  def create
    @disable_forumnav = false
    @disable_forumhead = false
    @disable_nav = true
    @post = current_player.posts.build(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def edit
    @disable_forumnav = false
    @disable_forumhead = false
    @disable_nav = true
  end

  def update
    @disable_forumnav = false
    @disable_forumhead = false
    @disable_nav = true
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @disable_forumnav = false
    @disable_forumhead = false
    @disable_nav = true
    @post.destroy
    redirect_to root_path
  end

  def search
    @q = "%#{params[:query]}%"
    @posts = Post.where("name LIKE ? or content LIKE ?", @q, @q )
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content)
  end

end
