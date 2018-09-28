class InquiryFormsController < ApplicationController
  include Scrivito::ControllerActions

  def create
    @form = InquiryForm.new(inquiry_params)
    mailer_selection(@form)
    flash[:notice] = 'Your Inquiry was succesfully send. You will receive a confirmation via Email'
    redirect_to scrivito_path(Obj.find(params[:inquiry_form][:obj_id])) + anchor
  end

  def anchor
    '#request_information'
  end

  def inquiry_params
    params.require(:inquiry_form).permit(
      :first_name, :last_name, :email, :subject,
      :volume, :date, :obj_id, :source_language,
      :target_language, :specialist_areas, :remarks
    )
  end

  def mailer_selection(form)
    if form.type == 'project_inquiry'
      InquiryNotifier.project_inquiry(@form).deliver_now
      InquiryNotifier.info_to_trans_tech_mail(@form).deliver_now
    else
      InquiryNotifier.info_to_trans_tech_mail(@form).deliver_now
      InquiryNotifier.work_with_us_inquiry(@form).deliver_now
    end
  end
end
