class Homepage < Obj
  attribute :body, :widgetlist

  attribute :title, :string, default: 'countryname'
  attribute :country, :enum, values: Obj.countries_based_on_flag_images
  attribute :country_name_translation, :string
  attribute :iso_code_language, :string
  attribute :meta_tags, :string
  attribute :meta_description, :string
  attribute :cookie_notice, :string
  attribute :cookie_notice_link, :link
  attribute :cookie_notice_button_text, :string

  # mail

  attribute :mail_not_sendable, :string, default: 'There was a problem sending your email. Please repeat or try again at a later time.'
  attribute :mail_thanks_services, :string, default: 'Thank you for your interest in trans-tech. We will respond as soon as possible. Kind regards, Werner Behnke'
  attribute :mail_thanks_for_working_with_us, :string, default: 'Thank you for your interest in our translation services. We will send you an offer as soon as possible. Kind regards, Werner Behnke'
  
  # big_image

  attribute :button_1, :string, default: 'who_we_are'
  attribute :button_2, :string, default: 'request_offer'
  attribute :button_3, :string, default: 'work_with_us'
  attribute :universal, :string
  attribute :first_sub_headline, :string
  attribute :second_sub_headline, :string
  attribute :button_text_service, :string
  attribute :button_text_offer, :string
  attribute :button_text_work_with, :string
  attribute :slider_image, :reference
  attribute :menu_language, :string

  # footer
  attribute :contact_us_text, :string, default: 'Contact Us'
  attribute :right_links_headline, :string, default: 'Further Links'
  attribute :rights_links, :referencelist
  attribute :trans_tech_text_headline, :string, default: 'trans-tech'
  attribute :trans_tech_text, :string, default: 'Over 2500+ happy customers since December 1996. We are looking forward to your project and hope to hear from you soon.'
  attribute :more_sites, :string, default: 'More sites'
  attribute :adress, :string, default: '12205, Berlin, Carstennstraße.43b'
  attribute :number, :string, default: 'More sites'

  def self.default
    Homepage.all.first
  end

  def title
    self[:title] || 'empty homepage title'
  end

  def allowed_widget_classes_for_nav
    [ContainerWidget, OurServicesWidget]
  end

  def country_name_translation
    self[:country_name_translation].presence || 'missing'
  end

  def country
    self[:country] || 'Germany'
  end

  def homepage
    self
  end

  def nav_based_on_widgets
    container_and_services_widgets = self[:body].select { |widget| allowed_widget_classes_for_nav.include?(widget.class) }
    container_and_services_widgets.reject { |widget| widget.include_in_nav == 'nein' }
  end
end
