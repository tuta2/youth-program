class MombasasController < ApplicationController
  def index
    @mombasas = Mombasa.all
  end

  def edit
    @mombasa = Mombasa.find(params[:id])
  end

  def create
    @mombasa = Mombasa.new(mombasa_params)

    if @mombasa.save
      flash[:notice] = "Record Created"
      redirect_to "/mombasas"
    else
      flash[:alert] = @mombasa.errors.full_messages.join(', ') 
      redirect_to "/mombasas"
    end
  end

  def update
    @mombasa = Mombasa.find(params[:id])
    @mombasa.update(mombasa_params)
    flash[:success] = "Record Updated Successfully"
    redirect_to '/mombasas'
  end

  def destroy
    @mombasa = Mombasa.find(params[:id])
    @mombasa.destroy
    flash[:success] = "Record Deleted"
    redirect_to '/mombasas'
  end

  private

  def mombasa_params
    params.require(:mombasa).permit(:sub_county, :investiture_sungura, :investiture_chipukizi, :investiture_mwamba, :investiture_jasiri, :total)
  end
end
