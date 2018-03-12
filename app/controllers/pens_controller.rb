class PensController < ApplicationController

def index
@pens = Pen.all
end 
 
  def show
      @pen = Pen.find(params[:id])
          
  end

  def new
      @pen = Pen.new
          
  end

  def create
    @pice = Pice.find(params[:pice_id])
    @pen = @pice.pens.create(pens_params)

    redirect_to pen_path(@pen)
  end
 
  def destroy
    @pen = Pen.find(params[:id])
    @pen.destroy 
    redirect_to pices_path
   
  end

def clear
 @pen = Pen.all
 
    @pen.delete_all
 
    redirect_to pices_path
   
  end

  
   private
    def pens_params
      params.require(:pen).permit(:phone,:mtype,:price,:description,:quantity,:total,:tquantity,:tprice)
    end

end