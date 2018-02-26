class BagsController < ApplicationController
	def create
    @pice = Pice.find(params[:pice_id])
    @bag = @pice.bags.create(comment_params)
    redirect_to pice_path(@pice) 
  end
 
  def destroy
    @pice = Pice.find(params[:pice_id])
    @bag = @pice.bags.find(params[:id])
    @bag.destroy
    redirect_to pice_path(@pice)
  end
 
  private
    def bags_params
      params.require(:bag).permit(:quantity, :total)
    end
end
