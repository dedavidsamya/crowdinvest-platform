class InvestmentsController < ApplicationController
    def index
    @investments = Investment.all
  end

  def show
    @investment = Investment.find(params[:id])
    @amount_of_money = @investment.amount_of_money
  end

  def new
    @investment = Investment.new
  end

  def create
    @investment = Investment.new(investment_params)
     respond_to do |format|
      if @investment.save
        format.html { redirect_to @investment }
      else
        format.html { render action: "new" }
        format.json { render json: @investment.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @investment = Investment.find(params[:id])
  end

  def update
    @investment = Investment.find(params[:id])
    @investment.update(investment_params)
    redirect_to investment_path(@investment)
  end

   def destroy
    @investment = Investment.find(params[:id])
    @investment.destroy
    redirect_to investments_path
  end

  private

  def investment_params
    params.require(:investment).permit!
  end
end
