class AccueilController < ApplicationController
	before_action :authenticate_user!, except: [:index, :about, :contact]

  def index
  	@products = Product.all
  	@posts = Post.all
  end

  def about
  end

  def contact
  end

  def services
  end
  
end
