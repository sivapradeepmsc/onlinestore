class PensController < ApplicationController
def index
@pens = Pen.all
end	
 
  def show
	    @pen = Pen.find(params[:id])
          
	end


	def create
    @pice = Pice.find(params[:pice_id])
    #params[:pen][:total]=@pice.price.to_f*params[:pen][:quantity].to_f
    #arams[:pen][:quantity]=@params.quantity.to_f+@params.quantity.to_f
    @pen = @pice.pens.create(pens_params)

    redirect_to pen_path(@pen)
  end
 
  #def destroy
   # @pice = Pice.find(params[:pen_id])
    #@pen = @pice.pens.find(params[:id])
    #@pen.destroy
    #redirect_to pice_path(@pice)
  #end
  def destroy
    @pen = Pen.find(params[:id])
    @pen.destroy
 
    redirect_to pices_path
   
  end

   private
    def pens_params
      params.require(:pen).permit(:phone, :mtype,:price,:description,:quantity, :total,:tquantity,:tprice)
    end

end
