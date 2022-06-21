class KwalesController < ApplicationController
  before_action :set_kwale, only: %i[ show edit update destroy ]

  # GET /kwales or /kwales.json
  def index
    @kwales = Kwale.all
  end

  # GET /kwales/1 or /kwales/1.json
  def show
  end

  # GET /kwales/new
  def new
    @kwale = Kwale.new
  end

  # GET /kwales/1/edit
  def edit
  end

  # POST /kwales or /kwales.json
  def create
    @kwale = Kwale.new(kwale_params)

    respond_to do |format|
      if @kwale.save
        format.html { redirect_to kwale_url(@kwale), notice: "Kwale was successfully created." }
        format.json { render :show, status: :created, location: @kwale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kwale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kwales/1 or /kwales/1.json
  def update
    respond_to do |format|
      if @kwale.update(kwale_params)
        format.html { redirect_to kwale_url(@kwale), notice: "Kwale was successfully updated." }
        format.json { render :show, status: :ok, location: @kwale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kwale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kwales/1 or /kwales/1.json
  def destroy
    @kwale.destroy

    respond_to do |format|
      format.html { redirect_to kwales_url, notice: "Kwale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kwale
      @kwale = Kwale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kwale_params
      params.fetch(:kwale, {})
    end
end
