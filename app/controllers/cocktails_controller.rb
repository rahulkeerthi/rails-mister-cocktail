class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit destroy update]

  def index
    @cocktails = Cocktail.all
    categories = []
    Cocktail.all.each do |cocktail|
      categories << cocktail.category
    end
    @categories = categories.uniq!
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @cocktail.update(cocktail_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :description, :category, :photo)
  end
end
