class NorthriftsController < ApplicationController
  before_action :set_northrift, only: %i[ show edit update destroy ]

  # GET /northrifts or /northrifts.json
  def index
    @northrifts = Northrift.all
  end

  # GET /northrifts/1 or /northrifts/1.json
  def show
  end

  # GET /northrifts/new
  def new
    @northrift = Northrift.new
  end

  # GET /northrifts/1/edit
  def edit
  end

  # POST /northrifts or /northrifts.json
  def create
    @northrift = Northrift.new(northrift_params)

    respond_to do |format|
      if @northrift.save
        format.html { redirect_to northrift_url(@northrift), notice: "Northrift was successfully created." }
        format.json { render :show, status: :created, location: @northrift }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @northrift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /northrifts/1 or /northrifts/1.json
  def update
    respond_to do |format|
      if @northrift.update(northrift_params)
        format.html { redirect_to northrift_url(@northrift), notice: "Northrift was successfully updated." }
        format.json { render :show, status: :ok, location: @northrift }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @northrift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /northrifts/1 or /northrifts/1.json
  def destroy
    @northrift.destroy

    respond_to do |format|
      format.html { redirect_to northrifts_url, notice: "Northrift was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_northrift
      @northrift = Northrift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def northrift_params
      params.fetch(:northrift, {})
    end
end
