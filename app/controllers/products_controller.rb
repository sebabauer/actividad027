class ProductsController < ApplicationController
  def create
    @product = Product.new(products_params)
    @product.save
    redirect_to category_path(@product.category_id)
    #alternativamente con solo una linea Product.create(params)
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def products_params
      params.require(:product).permit(:name, :price, :category_id)
    end

end
