class ProductsController < ApplicationController
  def new
    @product = Product.new
  end

  def create
    @product = Product.new product_params
    @product.save
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by params[:code]
  end

  def destroy
    @product = Product.find params[:id]
    @product.destroy
    redirect_to products_path
  end

  private
  def product_params
    params.require(:product).permit(
      :code, :name, :price,
    )
  end
end
