class MoneysController < ApplicationController
  def index
    @moneys = Money.all
    @moneys_arr = @moneys.pluck(:id, :deposit, :created_at)
  end

  def create
    @money = Money.new(money_params)
    @money.save
    redirect_to moneys_path
  end

  def new
    @money = Money.new
  end

  def update
    @money = find_money_by_id
    @money.update(money_params)
    redirect_to moneys_path
  end

  def edit
    @money = find_money_by_id
  end

  def destroy
  end

  def show
  end

  private
  def money_params
    params.require(:money).permit(:deposit)
  end
  
  def find_money_by_id
    Money.find(params[:id])
  end
end
