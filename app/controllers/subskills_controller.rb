class SubskillsController < ApplicationController
  
  def new
    @subskill = Subskill.new
  end

  def create
    @subskill = Subskill.create(subskill_params)
    redirect_to mandara_subskill_path(mandara), notice: "今週も頑張ろう！！"
  end

  private
  def subskill_params
    params.require(:subskill).permit(:mandara_id,
       :subtext2_1, :subtext2_2, :subtext2_3, :subtext2_4, :subtext2_6,  :subtext2_7,  :subtext2_8,  :subtext2_9,
       :subtext3_1, :subtext3_2, :subtext3_3, :subtext3_4, :subtext3_6,  :subtext3_7,  :subtext3_8,  :subtext3_9,
       :subtext4_1, :subtext4_2, :subtext4_3, :subtext4_4, :subtext4_6,  :subtext4_7,  :subtext4_8,  :subtext4_9,
       :subtext6_1, :subtext6_2, :subtext6_3, :subtext6_4, :subtext6_6,  :subtext6_7,  :subtext6_8,  :subtext6_9,
       :subtext7_1, :subtext7_2, :subtext7_3, :subtext7_4, :subtext7_6,  :subtext7_7,  :subtext7_8,  :subtext7_9,
       :subtext8_1, :subtext8_2, :subtext8_3, :subtext8_4, :subtext8_6,  :subtext8_7,  :subtext8_8,  :subtext8_9,
       :subtext9_1, :subtext9_2, :subtext9_3, :subtext9_4, :subtext9_6,  :subtext9_7,  :subtext9_8,  :subtext9_9,
        :checkbox).merge(mandara_id: params[:mandara_id])
  end
end
