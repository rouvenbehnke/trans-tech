class Homepage < Obj
  attribute :body, :widgetlist
  attribute :universal, :string
  attribute :first_sub_headline, :string
  attribute :second_sub_headline, :string
  attribute :button_text_service, :string
  attribute :button_text_offer, :string
  attribute :button_text_work_with, :string
  attribute :title, :string
  attribute :country, :enum, values: Obj.countries_based_on_flag_images
  attribute :country_name_translation, :string

  def self.default
    Homepage.all.first
  end

  def title
    self[:title] || "empty homepage title"
  end

  def allowed_widget_classes_for_nav
    [ContainerWidget, OurServicesWidget]
  end

  def country_name_translation
    self[:country_name_translation].presence || "missing"
  end

  def country
    self[:country] || "Germany"
  end

  def nav_based_on_widgets
    container_and_services_widgets = self[:body].select{|widget| allowed_widget_classes_for_nav.include?(widget.class)}
    container_and_services_widgets.reject{|widget| widget.include_in_nav == "nein"}
  end
end
