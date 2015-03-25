class TradesController < ApplicationController

	def index
    @trades = Trade.all

    render(:template => "trades/index")
  end

  def show
    @trade = Trade.find(params[:id])
  end

  def new
    @trade = Trade.new

    render(:template => "trades/new")
  end

  def create
    @trade = Trade.new(trade_params)

    if @trade.save
      redirect_to trade_path(@trade.id)
    else
      render(:template => "trades/new")
    end
  end

  #def edit
    #@trade = Trade.find(params[:id])

    #render(:template => "trades/edit")
  #end

  #def update
    #@trade = Trade.find(params[:id])

    #if @trade.update(trade_params)
      #redirect_to trade_path(@trade)
    #else
      #render(:template => "trades/edit")
    #end
  #end

  def destroy
    @trade = Trade.find(params[:id])
    @trade.destroy!
    redirect_to trades_path
  end

  def trade_params
    params.require(:trade).permit!
  end

end
