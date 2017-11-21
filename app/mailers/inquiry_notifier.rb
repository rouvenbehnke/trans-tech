class InquiryNotifier < ApplicationMailer
  default from: 'info@trans-tech.de'

  def project_inquiry(inquiry)
    @inquiry = inquiry
    mail(to: @inquiry.email,
         subject: 'Your Inquiry for translation services.')
  end

  def work_with_us_inquiry(inquiry)
    @inquiry = inquiry
    mail(to: @inquiry.email,
         subject: 'Your Inquiry for Working with Trans-Tech')
  end

  def info_to_trans_tech_mail(inquiry)
    @inquiry = inquiry
    mail(to: 'rouven.behnke@infopark.de',
         subject: 'Neue Anfrage von Trans-Tech erhalten.')
  end
end
