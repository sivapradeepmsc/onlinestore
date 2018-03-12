class PicesController < ApplicationController


 before_action :authenticate_user!

def index
  
@pices = Pice.all.paginate(:page => params[:page], per_page: 3)  
 if params[:search]
    @pices = Pice.search(params[:search]).order("created_at DESC").all.paginate(:page => params[:page], per_page: 3)  
  else
    @pices = Pice.all.order('created_at DESC').all.paginate(:page => params[:page], per_page: 3)  
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

  def  create
    @pice = Pice.new(pice_params)  
 
    if @pice.save
      redirect_to pices_path

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


def show_pens
  @pen = Pen.find(params[:id])
end
 
  private
    def pice_params
      params.require(:pice).permit(:phone, :mtype,:price,:description)
    end
end
