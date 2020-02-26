class MoneysController < ApplicationController
  def index
    @moneys = Money.all
  end

  def create
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
