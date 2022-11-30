class IndexController < ApplicationController
  def index
    @clients = Client.all
    @prestations = Prestation.all
  end
end
