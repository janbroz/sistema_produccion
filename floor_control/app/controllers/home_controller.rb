class HomeController < ApplicationController
  before_filter :authenticate_user!

  def index

  end

  def materialsZone
    @mats = Material.find(:all, :order => "LOWER(reference)")
  end

  def productionOrdersZone
    @prodOrd = ProductionOrder.all
  end

  def usersZone
    @usrs = User.all
  end

  def clientsZone
    @clients = Client.find(:all, :order => "LOWER(corporate_name)")
  end

end
