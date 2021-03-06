class ProductsController < ApplicationController
# before_action :logged_in_user, only: [:edit, :update, :destroy]

    def index
        @products = Product.all
    end

    def show
        @product = Product.find params[:id]
    end

    def new
        @product = Product.new
    end

    def create
        product = Product.create product_params
        product.product_image.attach(params[:product][:product_image])
        redirect_to products_path
    end

    def edit
        @product = Product.find params[:id]
    end

    def update
        product = Product.find params[:id]
        product.update product_params
        redirect_to product_path(product.id)
    end

    def destroy
        product = Product.find params[:id]
        product.destroy
        redirect_to products_path
    end

    private
    def product_params
    params.require(:product).permit(:product_name, :brand_id, :product_image, :calorie, :protein, :carb, :fat)
    end

end
