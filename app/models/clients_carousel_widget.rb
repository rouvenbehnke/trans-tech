class ClientsCarouselWidget < Widget
  attribute :images, :linklist
  attribute :title, :string

  def description_for_editor
    "Clients Carousel Widget"
  end
end
