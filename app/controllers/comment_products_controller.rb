class CommentProductsController < ApplicationController
	before_action :set_comment_product
	before_action :authenticate_user!

	def create
		@comment_product = @product.comment_product.new(comment_product_params)
		@comment_product.user = current_user
		@comment_product.save
		# render :json => params
		# CommentProduct.create(content: params[:content], product: Product.find(params[:product_id]))
		# redirect_to products_path(@products)
	end

	def destroy
		@comment_product = @product.comment_products.find(params[:id])
		@comment_product_id = @comment_product.id
		@comment_product.destroy
	end

	private

	def comment_product_params
		params.require(:comment_product).permit(:content, :product_id)
	end

	def set_comment_product
		@product = Product.find(params[:product_id])
	end

end