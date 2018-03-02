class PensController < ApplicationController
	def show
	    @pen = Pen.find(params[:id])
	end


	def create
    @pice = Pice.find(params[:pice_id])
    params[:pen][:total]=@pice.price.to_f*params[:pen][:quantity].to_f
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
