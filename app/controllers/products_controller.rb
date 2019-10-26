class ProductsController < ApplicationController

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
    redirect_to home
end

def edit
    @product = Product.find params[:id]
  end

  def update
    product = Product.find params[:id]
    product.update product_params
    redirect_to home
  end

  def destroy
    product = Product.find params[:id]
    product.destroy
    redirect_to home
  end


private
def product_params
  params.require(:product).permit(:product_name, :brand_id, :product_image)
end

end
