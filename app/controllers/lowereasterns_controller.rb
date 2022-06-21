class LowereasternsController < ApplicationController
  before_action :set_lowereastern, only: %i[ show edit update destroy ]

  # GET /lowereasterns or /lowereasterns.json
  def index
    @lowereasterns = Lowereastern.all
  end

  # GET /lowereasterns/1 or /lowereasterns/1.json
  def show
  end

  # GET /lowereasterns/new
  def new
    @lowereastern = Lowereastern.new
  end

  # GET /lowereasterns/1/edit
  def edit
  end

  # POST /lowereasterns or /lowereasterns.json
  def create
    @lowereastern = Lowereastern.new(lowereastern_params)

    respond_to do |format|
      if @lowereastern.save
        format.html { redirect_to lowereastern_url(@lowereastern), notice: "Lowereastern was successfully created." }
        format.json { render :show, status: :created, location: @lowereastern }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lowereastern.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lowereasterns/1 or /lowereasterns/1.json
  def update
    respond_to do |format|
      if @lowereastern.update(lowereastern_params)
        format.html { redirect_to lowereastern_url(@lowereastern), notice: "Lowereastern was successfully updated." }
        format.json { render :show, status: :ok, location: @lowereastern }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lowereastern.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lowereasterns/1 or /lowereasterns/1.json
  def destroy
    @lowereastern.destroy

    respond_to do |format|
      format.html { redirect_to lowereasterns_url, notice: "Lowereastern was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lowereastern
      @lowereastern = Lowereastern.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lowereastern_params
      params.fetch(:lowereastern, {})
    end
end
