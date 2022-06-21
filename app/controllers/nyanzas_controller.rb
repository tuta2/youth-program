class NyanzasController < ApplicationController
  before_action :set_nyanza, only: %i[ show edit update destroy ]

  # GET /nyanzas or /nyanzas.json
  def index
    @nyanzas = Nyanza.all
  end

  # GET /nyanzas/1 or /nyanzas/1.json
  def show
  end

  # GET /nyanzas/new
  def new
    @nyanza = Nyanza.new
  end

  # GET /nyanzas/1/edit
  def edit
  end

  # POST /nyanzas or /nyanzas.json
  def create
    @nyanza = Nyanza.new(nyanza_params)

    respond_to do |format|
      if @nyanza.save
        format.html { redirect_to nyanza_url(@nyanza), notice: "Nyanza was successfully created." }
        format.json { render :show, status: :created, location: @nyanza }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nyanza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nyanzas/1 or /nyanzas/1.json
  def update
    respond_to do |format|
      if @nyanza.update(nyanza_params)
        format.html { redirect_to nyanza_url(@nyanza), notice: "Nyanza was successfully updated." }
        format.json { render :show, status: :ok, location: @nyanza }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nyanza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nyanzas/1 or /nyanzas/1.json
  def destroy
    @nyanza.destroy

    respond_to do |format|
      format.html { redirect_to nyanzas_url, notice: "Nyanza was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nyanza
      @nyanza = Nyanza.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nyanza_params
      params.fetch(:nyanza, {})
    end
end
