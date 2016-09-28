class OurServicesWidget < Widget
  attribute :section_name, :string
  attribute :include_in_nav, :enum, values: ["ja", "nein"], default: "ja"

  def description_for_editor
    "Our Services Widget"
  end

  def section_name
    self[:section_name].presence || "missing section name"
  end

end
