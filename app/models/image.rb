class Image < Obj
  attribute :blob, :binary
  attribute :alt, :string

  # activate image resizing and optimization
  def apply_image_transformation?
    true
  end
end
