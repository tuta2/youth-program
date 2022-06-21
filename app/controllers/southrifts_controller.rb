class SouthriftsController < ApplicationController
  before_action :set_southrift, only: %i[ show edit update destroy ]

  # GET /southrifts or /southrifts.json
  def index
    @southrifts = Southrift.all
  end

  # GET /southrifts/1 or /southrifts/1.json
  def show
  end

  # GET /southrifts/new
  def new
    @southrift = Southrift.new
  end

  # GET /southrifts/1/edit
  def edit
  end

  # POST /southrifts or /southrifts.json
  def create
    @southrift = Southrift.new(southrift_params)

    respond_to do |format|
      if @southrift.save
        format.html { redirect_to southrift_url(@southrift), notice: "Southrift was successfully created." }
        format.json { render :show, status: :created, location: @southrift }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @southrift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /southrifts/1 or /southrifts/1.json
  def update
    respond_to do |format|
      if @southrift.update(southrift_params)
        format.html { redirect_to southrift_url(@southrift), notice: "Southrift was successfully updated." }
        format.json { render :show, status: :ok, location: @southrift }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @southrift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /southrifts/1 or /southrifts/1.json
  def destroy
    @southrift.destroy

    respond_to do |format|
      format.html { redirect_to southrifts_url, notice: "Southrift was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_southrift
      @southrift = Southrift.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def southrift_params
      params.fetch(:southrift, {})
    end
end
