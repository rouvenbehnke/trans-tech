class Page < Obj
  attribute :title, :string
  attribute :body, :widgetlist
  attribute :child_order, :referencelist
  attribute :iso_code_language, :string
  attribute :meta_tags, :string
  attribute :meta_description, :string


  def nav_based_on_widgets
    self.parent.nav_based_on_widgets
  end
end
