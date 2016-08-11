class ProductsController < ApplicationController
before_action :find_product, only: [:ahow, :destroy] 

# index will change
def index 
@products = Product.all
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
	if product created at time == product created at time plus 7 days
		send notice to user && destroy product
=end
end

private

def find_product
	@product = Product.find(params[:id])
end

def pruduct_params
	params.require(:product).permit(:type, :category, :title, :body, :price, :location, :email, :phone)
end 

end
