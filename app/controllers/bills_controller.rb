class BillsController < ApplicationController
  before_action :get_bill, only: [:show,:edit,:update,:destroy]
  def index
    @bills = current_user.bills
  end
  
  def new
    @bill = current_user.bills.new
    2.times {@bill.items.build}
  end

  def create
    @bill = current_user.bills.new(bill_params)
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
    if @bill.update_attributes(bill_params)
      redirect_to bills_path, notice: "Bill Updated Successfully"
    else
      render "edit"
    end
  end

  def destroy
    @bill.destroy
    redirect_to bills_path , notice: "Bill destroyed successfully"
  end

private
def get_bill
  @bill = current_user.bills.find(params[:id])
    
  end  

  def bill_params
    params.require(:bill).permit(:name, :phone, :status, :delivery, :amount, :advance, :totalitems, :user_id)
    
  end

end


