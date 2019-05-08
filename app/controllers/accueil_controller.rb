class AccueilController < ApplicationController
	before_action :authenticate_user!, except: [:index, :contact, :about, :services]

  def index
  	@products = Product.all
  	@posts = Post.all
  end

  def services
  end

  def about
  end

  def contact
  end
end
