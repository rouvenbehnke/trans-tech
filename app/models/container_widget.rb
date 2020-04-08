class ContainerWidget < Widget
  attribute :widgets, :widgetlist
  attribute :color, :enum, values: ["white", "grey", "very_light", "light", "dark", "very dark"], default: "grey"
  attribute :section_name, :string
  attribute :title, :string
  attribute :include_in_nav, :enum, values: ["ja", "nein"], default: "ja"

  def description_for_editor
    "Container Widget"
  end

  def color
    case self[:color]
      when "white"
        "trans-tech-white"
      when "grey"
        "trans-tech-grey"
      when "very_light"
        "trans-tech-blue-superlight"
      when "light"
        "trans-tech-blue-light"
      when "dark"
        "trans-tech-blue-dark"
      when "very dark"
        "trans-tech-blue-darker"
      else
        "trans-tech-blue-superlight"
    end
  end

  def section_name
    self[:section_name].presence || "missing section name"
  end

  def section_title 
    self[:title].presence || "missing section title"
  end

end
