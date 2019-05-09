class PostsController < ApplicationController
	before_action :set_post, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
	before_action :authenticate_user!

	def index
		@posts = Post.all.search(params[:search]).order(created_at: :desc)
	end

	def show
		@comment_post = CommentPost.new
		@comment_posts = @post.comment_posts.order(created: :desc)
	end

	def new
		@post = Post.new
		@category_posts = CategoryPost.all.map{|c| [ c.name, c.id ] }
	end

	def edit
		@category_posts = CategoryPost.all.map{|c| [ c.name, c.id ] }
	end

	def create
		@post = Post.new(post_params)
		@post.user_id = current_user.id

		respond_to do |format|
			if @post.save
				format.html { redirect_to @post, notice: 'Post was successfully created.' }
				format.json { render :show, status: :created, location: @post }
			else
				format.html { render :new }
				format.json { render json: @post.errors, status: :unprocessable_entity }
			end
		end
	end

	def update
		@post.user_id = current_user.id
		respond_to do |format|
			if @post.update(post_params)
				format.html { redirect_to @post, notice: 'Post was successfully updated.' }
				format.json { render :show, status: :ok, location: @post }
			else
				format.html { render :edit }
				format.json { render json: @post.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@post.destroy
		@post.user_id = current_user.id
		respond_to do |format|
			format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
			format.json { head :no_content }
		end
	end

	def upvote
		@post.liked_by current_user
		redirect_back(fallback_location:posts_path)
	end

	def downvote
		@post.downvote_from current_user
		redirect_back(fallback_location:posts_path)
	end

	private
	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :content, :category_post_id, :image)
	end
end
