class PicesController < ApplicationController
	


def index
  @pices = Pice.all
@search =params[:id]

if @pice
   Pice.where('id LIKE ? AND id LIKE ?', "%#{params[:id]}%")
end
end



   def show
    @pice = Pice.find(params[:id])
  end

  def new
    @pice = Pice.new
  end
 
  def edit
    @pice = Pice.find(params[:id])
  end
  def cartdet
    
    @pice = Pice.new

  end

  def  create
    @pice = Pice.new(pice_params)  
 
    if @pice.save
      redirect_to @pice
    else
      render 'new'
    end
    
  end



  def update
    @pice = Pice.find(params[:id])
 
    if @pice.update(pice_params)
      redirect_to @pice
    else
      render 'edit'
    end
  end
   def destroy
    @pice = Pice.find(params[:id])
    @pice.destroy
 
    redirect_to pices_path
  end
 
  private
    def pice_params
      params.require(:pice).permit(:phone, :mtype,:price,:description)
    end

end
