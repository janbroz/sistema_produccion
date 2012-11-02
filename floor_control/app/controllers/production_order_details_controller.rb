class ProductionOrderDetailsController < ApplicationController

  def new
    @production_order_detail = ProductionOrderDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @production_order_detail }
    end
  end

  def create
    @production_order_detail = ProductionOrderDetail.new(params[:production_order_detail])

    respond_to do |format|
      if @production_order_detail.save
        format.html { redirect_to @production_order, notice: 'Success' }
        format.json { render json: @production_order_detail, status: :created, location: @production_order_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @production_order_details.errors, status: :unproccessable_entity }
      end
    end
  end


end
