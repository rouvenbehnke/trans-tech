class InquiryWidget < Widget
  attribute :inquiry_text, :string
  attribute :inquiry_button_text, :string
  attribute :work_for_us_text, :string
  attribute :work_for_us_button_text, :string
  attribute :send_button_text, :string



  def description_for_editor
    "Inquiry Widget"
  end
end
