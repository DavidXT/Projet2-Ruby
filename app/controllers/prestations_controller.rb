class PrestationsController < ApplicationController
  before_action :set_prestation, only: %i[ show edit update destroy ]
  before_action :set_clients, only: %i[ create new update edit ]

  # GET /prestations or /prestations.json
  def index
    @prestations = Prestation.all
  end

  # GET /prestations/1 or /prestations/1.json
  def show
  end

  # GET /prestations/new
  def new
    @prestations = Prestation.all
    @prestation = Prestation.new
  end

  # GET /prestations/1/edit
  def edit
  end

  # POST /prestations or /prestations.json
  def create
    @prestation = Prestation.new(prestation_params)

    respond_to do |format|
      if @prestation.save
        format.html { redirect_to "/prestations/new", notice: "Prestation was successfully created." }
        format.json { render :show, status: :created, location: @prestation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prestations/1 or /prestations/1.json
  def update
    respond_to do |format|
      if @prestation.update(prestation_params)
        format.html { redirect_to "/prestations/new", notice: "Prestation was successfully updated." }
        format.json { render :show, status: :ok, location: @prestation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prestation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prestations/1 or /prestations/1.json
  def destroy
    @prestation.destroy

    respond_to do |format|
      format.html { redirect_to "/prestations/new", notice: "Prestation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prestation
      @prestation = Prestation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prestation_params
      params.require(:prestation).permit(:ClientName, :Date, :Description)
    end

    def set_clients
      clients = Client.all
      @client_name = clients.map{|e|e.Name}
    end
end
