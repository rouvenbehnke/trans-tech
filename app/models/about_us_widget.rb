class AboutUsWidget < Widget
  attribute :image, :reference
  attribute :name, :string
  attribute :job_description, :string
  attribute :description, :string
  attribute :headline, :string


  def description_for_editor
    "About Us Widget"
  end
end
