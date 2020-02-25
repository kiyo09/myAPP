class SubskillsController < MandarasController

  def new
    @subskill = Subskill.new
  end

  def create
    @subskill = Subskill.new
    @subskill = Subskill.create(subskill_params)
    redirect_to root_path, notice: "今週も頑張ろう！！"
  end
  
  def edit
    @subskill = subskill.find(params[:id])
  end

  def update
    @subskill = Subskill.new
    @subskill = subskill.find(params[:id])
    @subskill.update(subskill_params)
    redirect_to edit_mandara_path(mandara), notice: "今週も頑張ろう！！"
  end
  
  private
  def subskill_params
    params.require(:subskill).permit(
      :subtext1, :subtext2, :subtext3, :subtext4, :subtext6,  :subtext7,  :subtext8,  :subtext9, :checkbox,
      :subskill2_1,
      :subskill2_2,
      :subskill2_3,
      :subskill2_4,
      :subskill2_6,
      :subskill2_7,
      :subskill2_8,
      :subskill2_9,
      # ----------,----------
      :subskill3_1,
      :subskill3_2,
      :subskill3_3,
      :subskill3_4,
      :subskill3_6,
      :subskill3_7,
      :subskill3_8,
      :subskill3_9,
      # ----------,----------
      :subskill4_1,
      :subskill4_2,
      :subskill4_3,
      :subskill4_4,
      :subskill4_6,
      :subskill4_7,
      :subskill4_8,
      :subskill4_9,
      # ----------,----------
      :subskill5_1,
      :subskill5_2,
      :subskill5_3,
      :subskill5_4,
      :subskill5_6,
      :subskill5_7,
      :subskill5_8,
      :subskill5_9,
      # ----------,----------
      :subskill6_1,
      :subskill6_2,
      :subskill6_3,
      :subskill6_4,
      :subskill6_6,
      :subskill6_7,
      :subskill6_8,
      :subskill6_9,
      # ----------,----------
      :subskill7_1,
      :subskill7_2,
      :subskill7_3,
      :subskill7_4,
      :subskill7_6,
      :subskill7_7,
      :subskill7_8,
      :subskill7_9,
      # ----------,----------
      :subskill8_1,
      :subskill8_2,
      :subskill8_3,
      :subskill8_4,
      :subskill8_6,
      :subskill8_7,
      :subskill8_8,
      :subskill8_9,
      # ----------,----------
      :subskill9_1,
      :subskill9_2,
      :subskill9_3,
      :subskill9_4,
      :subskill9_6,
      :subskill9_7,
      :subskill9_8,
      :subskill9_9,
      :checkbox).merge(
        mandara_id: @mandara)
    end
  end