class TestimonialWidget < Widget
  attribute :image, :reference
  attribute :link, :reference
  attribute :content, :string
  attribute :name, :string
  attribute :job_title, :string
  attribute :color, :enum, values: ["very_light", "light", "dark", "dark"]
  attribute :pdf, :reference

  def color
    case self[:color]
      when "very_light"
        "trans-tech-blue-superlight"
      when "light"
        "trans-tech-blue-light"
      when "dark"
        "trans-tech-blue-dark"
      when "dark"
        "trans-tech-blue-darker"
      else
        "trans-tech-blue-superlight"
    end
  end

  def description_for_editor
    "TestiomnialWidget"
  end

end
