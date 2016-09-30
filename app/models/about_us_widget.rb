class AboutUsWidget < Widget
  attribute :image, :reference
  attribute :name, :string
  attribute :job_description, :string
  attribute :description, :string
  attribute :headline, :string
  attribute :mail, :string
  attribute :fax, :string
  attribute :phone, :string


  def description_for_editor
    "About Us Widget"
  end
end
