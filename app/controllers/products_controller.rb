class ProductsController < ApplicationController

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		@product.user = current_user
		if @product.save
			redirect_to root_path
		else
			render "new"
		end
	end

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def purchase
		@product = Product.find(params[:id])
	end

	def purchase_confirm
		@product = Product.find(params[:id])
		@product.update(purchase: true, purchased_at: Time.current)
		redirect_to root_path
	end

	private
	def product_params
		params.require(:product).permit(:user_id, :product_name, :stock, :price)
	end
end
