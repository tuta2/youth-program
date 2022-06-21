class WesternsController < ApplicationController
  before_action :set_western, only: %i[ show edit update destroy ]

  # GET /westerns or /westerns.json
  def index
    @westerns = Western.all
  end

  # GET /westerns/1 or /westerns/1.json
  def show
  end

  # GET /westerns/new
  def new
    @western = Western.new
  end

  # GET /westerns/1/edit
  def edit
  end

  # POST /westerns or /westerns.json
  def create
    @western = Western.new(western_params)

    respond_to do |format|
      if @western.save
        format.html { redirect_to western_url(@western), notice: "Western was successfully created." }
        format.json { render :show, status: :created, location: @western }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @western.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /westerns/1 or /westerns/1.json
  def update
    respond_to do |format|
      if @western.update(western_params)
        format.html { redirect_to western_url(@western), notice: "Western was successfully updated." }
        format.json { render :show, status: :ok, location: @western }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @western.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /westerns/1 or /westerns/1.json
  def destroy
    @western.destroy

    respond_to do |format|
      format.html { redirect_to westerns_url, notice: "Western was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_western
      @western = Western.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def western_params
      params.fetch(:western, {})
    end
end
