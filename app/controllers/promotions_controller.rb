class PromotionsController < ApplicationController

  def index
    @promotions = Promotion.all
  end

  def new
    @promotion = Promotion.new
  end

  def show
    @promotion = Promotion.find(params[:id])
  end

  def edit
  end

  def create
    @promotion = Promotion.new(promotion_params)

    respond_to do |format|
      if @promotion.save
        format.html { redirect_to @promotion, notice: 'Promotion was successfully created.' }
        format.json { render :show, status: :created, location: @promotion }
      else
        format.html { render :new }
        format.json { render json: @promotion.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def promotion_params
      params.require(:promotion).permit!
    end

end