class PricingWidget < Widget
  attribute :title, :string
  attribute :main, :string
  attribute :sub_main, :string
  attribute :first_li, :string
  attribute :second_li, :string
  attribute :third_li, :string
  attribute :link_text, :string
  attribute :flag, :string

  def description_for_editor
    "Pricing Widget"
  end
end
