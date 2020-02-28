class MoneysController < ApplicationController
  def index
    @moneys = Money.all
    @sum_money = Money.all.sum(:extra_money)
  end

  def create
    @money = Money.new(params.require(:money).permit(:deposit, :extra_money, :sum_money))
    @money.save
    redirect_to moneys_path
  end

  def new
    @money = Money.new
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end
end
