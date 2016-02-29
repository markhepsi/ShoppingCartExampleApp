class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
   @products = Product.all
    @order_item = current_order.order_items.new
end
def search_filter     
    @products = Product.search(params[:name])
    respond_to do |format|
        format.js   { render :partial => "products/filter", :locals => {:search => @products, :query => params[:name]} }
        format.html { render :index }
    end
end

  def new
    @product = Product.new
  end

  def filter_index 
    @products= Product.where(discount: params[:discount])
    @products = Product.find_by(:id => params[:name])
  end

  def tablet
  	@products = Product.all
  end

  def show
    @products = Product.all                                                 
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end


  def edit
  end

  def update
  	if @product.update(product_params)
		redirect_to product_path(@product) , notice: 'Product Updated.'
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@product.destroy
  	redirect_to root_path, notice: 'Product Deleted.'
  end

 private

  def product_params
  	params.require(:product).permit(:name, :price, :image, :active,:discount)
  end

  def set_product
  	@product = Product.find(params[:id])
  end
end