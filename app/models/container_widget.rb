class ContainerWidget < Widget
  attribute :widgets, :widgetlist
  attribute :color, :enum, values: ["white", "grey", "very_light", "light", "dark", "very dark"]

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

end
