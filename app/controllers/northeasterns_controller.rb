class NortheasternsController < ApplicationController
  before_action :set_northeastern, only: %i[ show edit update destroy ]

  # GET /northeasterns or /northeasterns.json
  def index
    @northeasterns = Northeastern.all
  end

  # GET /northeasterns/1 or /northeasterns/1.json
  def show
  end

  # GET /northeasterns/new
  def new
    @northeastern = Northeastern.new
  end

  # GET /northeasterns/1/edit
  def edit
  end

  # POST /northeasterns or /northeasterns.json
  def create
    @northeastern = Northeastern.new(northeastern_params)

    respond_to do |format|
      if @northeastern.save
        format.html { redirect_to northeastern_url(@northeastern), notice: "Northeastern was successfully created." }
        format.json { render :show, status: :created, location: @northeastern }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @northeastern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /northeasterns/1 or /northeasterns/1.json
  def update
    respond_to do |format|
      if @northeastern.update(northeastern_params)
        format.html { redirect_to northeastern_url(@northeastern), notice: "Northeastern was successfully updated." }
        format.json { render :show, status: :ok, location: @northeastern }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @northeastern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /northeasterns/1 or /northeasterns/1.json
  def destroy
    @northeastern.destroy

    respond_to do |format|
      format.html { redirect_to northeasterns_url, notice: "Northeastern was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_northeastern
      @northeastern = Northeastern.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def northeastern_params
      params.fetch(:northeastern, {})
    end
end
