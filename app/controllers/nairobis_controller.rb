class NairobisController < ApplicationController
  before_action :set_nairobi, only: %i[ show edit update destroy ]

  # GET /nairobis or /nairobis.json
  def index
    @nairobis = Nairobi.all
  end

  # GET /nairobis/1 or /nairobis/1.json
  def show
  end

  # GET /nairobis/new
  def new
    @nairobi = Nairobi.new
  end

  # GET /nairobis/1/edit
  def edit
  end

  # POST /nairobis or /nairobis.json
  def create
    @nairobi = Nairobi.new(nairobi_params)

    respond_to do |format|
      if @nairobi.save
        format.html { redirect_to nairobi_url(@nairobi), notice: "Nairobi was successfully created." }
        format.json { render :show, status: :created, location: @nairobi }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nairobi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nairobis/1 or /nairobis/1.json
  def update
    respond_to do |format|
      if @nairobi.update(nairobi_params)
        format.html { redirect_to nairobi_url(@nairobi), notice: "Nairobi was successfully updated." }
        format.json { render :show, status: :ok, location: @nairobi }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nairobi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nairobis/1 or /nairobis/1.json
  def destroy
    @nairobi.destroy

    respond_to do |format|
      format.html { redirect_to nairobis_url, notice: "Nairobi was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nairobi
      @nairobi = Nairobi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nairobi_params
      params.fetch(:nairobi, {})
    end
end
