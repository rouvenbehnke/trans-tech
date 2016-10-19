class Page < Obj
  attribute :title, :string
  attribute :body, :widgetlist
  attribute :child_order, :referencelist


  def nav_based_on_widgets
    self.parent.nav_based_on_widgets
  end
end
