class InquiryWidget < Widget
  attribute :inquiry_text, :html
  attribute :inquiry_button_text, :string
  attribute :work_for_us_text, :html
  attribute :work_for_us_button_text, :string
  attribute :send_button_text, :string

  attribute :project_intel, :string
  attribute :project_further_intel, :string
  attribute :user_details, :string
  attribute :request_type, :string
  attribute :expertise, :string

  # form

  attribute :first_name, :string, default: 'First Name'
  attribute :last_name, :string, default: 'Last Name'
  attribute :email, :string, default: 'Email Adress'
  attribute :subject, :string, default: 'Subject'
  attribute :volume, :string, default: 'Volume'
  attribute :source_language, :string, default: 'Source Language'
  attribute :target_language, :string, default: 'Target Language'
  attribute :specialist_areas, :string, default: 'Specialist Areas'
  attribute :remarks, :string, default: 'Further Information'

  def description_for_editor
    'Inquiry Widget'
  end
end
