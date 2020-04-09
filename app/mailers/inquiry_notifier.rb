class InquiryNotifier < ApplicationMailer
  default from: 'info@trans-tech.de'

  def project_inquiry(inquiry, new_attachments, homepage)
    @homepage = homepage
    @inquiry = inquiry
    create_attachments(new_attachments)
    mail(to: @inquiry.email,
         subject: 'Your Inquiry for translation services.')
  end

  def work_with_us_inquiry(inquiry, new_attachments, homepage)
    @homepage = homepage

    @inquiry = inquiry
    create_attachments(new_attachments)
    mail(to: @inquiry.email,
         subject: 'Your Inquiry for Working with trans-tech')
  end

  def info_to_trans_tech_mail(inquiry, new_attachments, homepage, type)
    @homepage = homepage
    @inquiry = inquiry
    @type = type
    create_attachments(new_attachments)
    mail(to: 'wbehnke@trans-tech.de',
         subject: 'Neue Anfrage von trans-tech.de ')
  end

  def create_attachments(new_attachments)
    new_attachments.each do |attach|
      attachments[attach.original_filename] = File.read(attach.path)
    end
  end
end
