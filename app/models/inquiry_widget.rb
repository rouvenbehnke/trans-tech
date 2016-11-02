class InquiryWidget < Widget
  attribute :inquiry_text, :html
  attribute :inquiry_button_text, :string
  attribute :work_for_us_text, :html
  attribute :work_for_us_button_text, :string
  attribute :send_button_text, :string

  attribute :project_intel, :string
  attribute :user_details, :string
  attribute :request_type, :string
  attribute :expertise, :string




  def description_for_editor
    "Inquiry Widget"
  end
end
