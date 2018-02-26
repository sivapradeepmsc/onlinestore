class PensController < ApplicationController
	def create
    @pice = Pice.find(params[:pice_id])
    total=@pice.price * params[:pen][:quantity]
    @pen = @pice.pens.create(pens_params)
    redirect_to pice_path(@pice) 
  end
 
  def destroy
    @pice = Pice.find(params[:pice_id])
    @pen = @pice.pens.find(params[:id])
    @pen.destroy
    redirect_to pice_path(@pice)
  end

 
  private
    def pens_params
      params.require(:pen).permit(:phone, :mtype,:price,:description,:quantity, :total)
    end


end
