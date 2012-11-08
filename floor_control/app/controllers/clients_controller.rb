class ClientsController < ApplicationController


  def show
  end

  def new
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client }
    end
  end

  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        format.html { redirect_to clientz_path, notice: 'Success'}
        format.json { render json: @client, status: :created, location: @client }
      else
        format.html { render action: "new", notice: 'Bad' }
        format.json { render json: @client.errors, status: :unproccessable_entity }
      end
    end
  end

end
