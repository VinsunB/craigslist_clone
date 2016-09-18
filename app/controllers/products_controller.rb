class ProductsController < ApplicationController
before_action :find_product, only: [:show, :destroy] 

# index will change
def index 
@products = Product.where(category: params[:category])#.where( location: params[:location])
end

def home
	end

def new
@product = Product.new
end

def create
 @product = Product.new(product_params)
if @product.save
	redirect_to @product
	else
	render 'new'
	end 
end

def show
end

	def destroy
=begin
	if product created at time plus 14 days == current time
		send notice to user && destroy product
=end
end

private

def find_product
	@product = Product.find(params[:id])
end

def product_params
	params.require(:product).permit(:type, :category, :title, :body, :price, :location, :email, :phone)
end 

end
