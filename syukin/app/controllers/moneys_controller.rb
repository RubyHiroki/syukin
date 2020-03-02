class MoneysController < ApplicationController
  def index
    @moneys = Money.all
    @moneys_arr = @moneys.pluck(:deposit)
  end

  def create
    @money = Money.new(params.require(:money).permit(:deposit))
    @money.save
    redirect_to moneys_path
  end

  def new
    @money = Money.new
  end

  def update
    @money = Money.find(params[:id])
    @money.update(params.require(:money).permit(:deposit))
    redirect_to moneys_path
  end

  def edit
    @money = Money.find(params[:id])
  end

  def destroy
  end

  def show
  end
end
