class ProductsController < ApplicationController
  def create
    a= Product.new(products_params)
    a.save
    #alternativamente con solo una linea Product.create(params)
  end

  private


    # Never trust parameters from the scary internet, only allow the white list through.
    def products_params
      params.require(:product).permit(:name, :price, :category_id)
    end

end
