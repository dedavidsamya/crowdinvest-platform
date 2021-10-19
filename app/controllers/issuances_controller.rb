class IssuancesController < ApplicationController

  def home

  end

  def index
    @issuances = Issuance.all
  end

  def show
    @issuance = Issuance.find(params[:id])
  end

  def new
    @issuance = Issuance.new
  end

  def create
    @issuance = Issuance.new(issuance_params)
    respond_to do |format|
      if @issuance.save
        format.html { redirect_to @issuance }
      else
        format.html { render action: "new" }
        format.json { render json: @issuance.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @issuance = Issuance.find(params[:id])
  end

  def update
    @issuance = Issuance.find(params[:id])
    @issuance.update(issuance_params)
    redirect_to issuance_path(@issuance)
  end

   def destroy
    @issuance = Issuance.find(params[:id])
    @issuance.destroy
    redirect_to issuances_path
  end

  private

  def issuance_params
    params.require(:issuance).permit(:name, :date, :volume)
  end

end
