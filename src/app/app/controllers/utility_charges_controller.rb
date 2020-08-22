require 'ChargeServices'
class UtilityChargesController < ApplicationController
  def index
    render :json => ChargeServices.new(nil, nil, nil).find_or_search()
  end

  def new
    render :json => {result: "ok"}
  end

  def create
    render :json => {result: "create"}
  end

  def show
    render :json => ChargeServices.new(params[:id], params[:s], params[:d]).find_or_search()
  end
end
