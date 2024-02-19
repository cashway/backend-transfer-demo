class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = @current_user
    @order = Order.new(order_params.merge(user: @user))
    if @order.save
      render json: @order, status: :created
    else
      render json:{ message: 'Conta não encontrada' }, status: :unprocessable_entity
    end
  end

  def show
    @order = Order.find(params[:id])
    render json: @order
  end

  def index
    @orders = Order.all
    render json: @orders
  end

  private

  def order_params
    params.require(:order).permit(:favored_account, :amount)
  end
end
