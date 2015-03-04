class BillsController < ApplicationController
  before_action :get_bill, only: [:show,:edit,:update,:destroy]
  def index
    @bills = current_user.bills
  end
  
  def new
    @bill = current_user.bill.new
  end

  def create
    @bill = current_user.bill.new(bill_params)
    if @bill.save
    redirect_to bills_path , notice: "Bill created successfully" 
  else
    render "new"
  end

  end

  
  def show
  end

  def edit
  end
  
  def update
  end

  def destroy
  end

private
def get_bill
  @bill = current_user.bills.find(params[:id])
    
  end  

  def bill_params
    params.require (:bill).permit(:name, :phone, :status, :delivery, :amount, :advance, :totalitems, :user_id)
    
  end

end


