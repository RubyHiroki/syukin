class MoneysController < ApplicationController
  def index
    @moneys = Money.all
    @moneys_arr = @moneys.pluck(:id, :deposit, :created_at)
    @sum_money = []
  end

  def create
    @money = Money.new(money_params)
    if @money.save
      redirect_to moneys_path, notice: "今日の回収金#{@money.deposit}円を登録しました"
    else
      render action: :new
    end
  end

  def new
    @money = Money.new
  end

  def update
    @money = find_money_by_id
    if @money.update(money_params)
      redirect_to moneys_path, notice: "編集しました"
    else
      render action: :edit
    end
  end

  def edit
    @money = find_money_by_id
  end

  def destroy
    @money = find_money_by_id
    @money.destroy
    redirect_to moneys_path, notice: "削除しました"
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
