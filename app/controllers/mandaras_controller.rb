class MandarasController < ApplicationController
  def index
    @mandaras = Mandara.all
  end
  
  def new
    @mandara = Mandara.new
  end
  
  def create
    mandara = Mandara.create(mandara_params)
    
    redirect_to edit_mandara_path(mandara), notice: "今週も頑張ろう！！"
  end
  
  def edit
    @subskill = Subskill.new
  end

  def update
    @subskill = Subskill.create(subskill_params)
    redirect_to mandara_path(mandara), notice: "今週も頑張ろう！！"
  end
  
  private
  def mandara_params
    params.require(:mandara).permit(:text, :subtext1, :subtext2, :subtext3, :subtext4, :subtext6,  :subtext7,  :subtext8,  :subtext9, :checkbox)
  end
end
