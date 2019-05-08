class CommentPostsController < ApplicationController
	before_action :set_comment_post
	before_action :authenticate_user!

	def create
		@comment_post = @post.comment_post.new(comment_post_params)
		@comment_post.user = current_user
		@comment_post.save
	end

	def destroy
		@comment_post = @post.comment_posts.find(params[:id])
		@comment_post_id = @comment_post.id
		@comment_post.destroy
	end

	private

	def comment_post_params
		params.require(:comment_post).permit(:content, :post_id)
	end

	def set_comment_post
		@post = Post.find(params[:post_id])
	end

end
