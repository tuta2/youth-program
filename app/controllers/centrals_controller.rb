class CentralsController < ApplicationController
  before_action :set_central, only: %i[ show edit update destroy ]

  # GET /centrals or /centrals.json
  def index
    @centrals = Central.all
  end

  # GET /centrals/1 or /centrals/1.json
  def show
  end

  # GET /centrals/new
  def new
    @central = Central.new
  end

  # GET /centrals/1/edit
  def edit
  end

  # POST /centrals or /centrals.json
  def create
    @central = Central.new(central_params)

    respond_to do |format|
      if @central.save
        format.html { redirect_to central_url(@central), notice: "Central was successfully created." }
        format.json { render :show, status: :created, location: @central }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @central.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /centrals/1 or /centrals/1.json
  def update
    respond_to do |format|
      if @central.update(central_params)
        format.html { redirect_to central_url(@central), notice: "Central was successfully updated." }
        format.json { render :show, status: :ok, location: @central }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @central.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /centrals/1 or /centrals/1.json
  def destroy
    @central.destroy

    respond_to do |format|
      format.html { redirect_to centrals_url, notice: "Central was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_central
      @central = Central.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def central_params
      params.fetch(:central, {})
    end
end
