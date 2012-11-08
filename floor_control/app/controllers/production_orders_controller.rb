class ProductionOrdersController < ApplicationController

  def new
    @production_order = ProductionOrder.new
    @clients = Client.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @production_order }
    end
  end

  def show
    @production_order = ProductionOrder.find(params[:id])
    @pod = @production_order.production_order_details
    @production_order_detail = ProductionOrderDetail.new
    @production_order_detail.production_order_id = @production_order.id

    # Here comes the pain!
    @plegado = Plegado.new

    # Here it ends
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @production_order }
    end
  end

  def create
    @production_order = ProductionOrder.new(params[:production_order])
    @production_order.state = "created"
    respond_to do |format|
      if @production_order.save
        format.html { redirect_to @production_order, notice: 'Success' }
        format.json { render json: @production_order, status: :created, location: @production_order }
      else
        format.html { render action: "new" }
        format.json { render json: @production_order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @production_order = ProductionOrder.find(params[:id])

    respond_to do |format|
      if @production_order.update_attributes(params[:production_order])
        format.html { redirect_to @production_order, notice: 'Order is confirmed, now you can\'t add details to it'}
        format.json { head :no_content }
      else
        format.html { redirect_to @production_order }
        format.json { render json: @production_order.errors, status: :unproccessable_entity }
      end
    end
  end

end
