class OurServicesWidget < Widget
  attribute :section_name, :string
  attribute :include_in_nav, :enum, values: ["ja", "nein"], default: "ja"
  attribute :cell_title_1, :string
  attribute :cell_title_2, :string
  attribute :cell_title_3, :string
  attribute :cell_title_4, :string
  attribute :cell_title_5, :string
  attribute :cell_title_6, :string
  attribute :cell_title_7, :string
  attribute :cell_title_8, :string
  attribute :cell_title_9, :string
  attribute :cell_title_10, :string
  attribute :cell_title_11, :string
  attribute :cell_title_12, :string
  attribute :cell_title_13, :string
  attribute :cell_title_14, :string
  attribute :cell_title_15, :string
  attribute :cell_title_16, :string
  attribute :cell_title_17, :string
  attribute :cell_title_18, :string
  attribute :cell_title_19, :string
  attribute :cell_title_20, :string

  attribute :cell_content_1, :string
  attribute :cell_content_2, :string
  attribute :cell_content_3, :string
  attribute :cell_content_4, :string
  attribute :cell_content_5, :string
  attribute :cell_content_6, :string
  attribute :cell_content_7, :string
  attribute :cell_content_8, :string
  attribute :cell_content_9, :string
  attribute :cell_content_10, :string
  attribute :cell_content_11, :string
  attribute :cell_content_12, :string
  attribute :cell_content_13, :string
  attribute :cell_content_14, :string
  attribute :cell_content_15, :string
  attribute :cell_content_16, :string
  attribute :cell_content_17, :string
  attribute :cell_content_18, :string
  attribute :cell_content_19, :string
  attribute :cell_content_20, :string

  def description_for_editor
    "Our Services Widget"
  end

  def section_name
    self[:section_name].presence || "missing section name"
  end

end
