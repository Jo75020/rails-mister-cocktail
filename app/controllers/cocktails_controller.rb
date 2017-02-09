class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [ :show, :edit, :update, :destroy ]
  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    cocktail = Cocktail.create(cocktail_params)
    redirect_to cocktail_path(cocktail)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def cocktail_params
    params.require(:cocktail).permit(:name, :description, :rating)
  end

    def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end