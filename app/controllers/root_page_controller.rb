class RootPageController < CmsController
  before_action :redirect_to_language

  def index
    @root_page = true
    @homepages = Homepage.all.to_a

    if request.post?
      redirect_to scrivito_path Obj.find(params[:homepage])
    end

  end

  def redirect_to_language
    return if scrivito_in_editable_view?

    langs = accepted_locales(request.env['HTTP_ACCEPT_LANGUAGE'])
    homepage = Homepage.where(:iso_code_language, :equals, langs.first.to_s).to_a.first
    if homepage
      redirect_to scrivito_url(homepage)
    else
      redirect_to scrivito_url(Homepage.where(:iso_code_language, :equals, 'en'))
    end
  end

  def accepted_locales(http_accept_language)
    return [] if http_accept_language.blank?

    langs = http_accept_language.scan(/([a-zA-Z]{2,4})(?:-[a-zA-Z]{2})?(?:;q=(1|0?\.[0-9]{1,3}))?/).map do |pair|
      lang, q = pair
      [lang.to_sym, (q || '1').to_f]
    end
    langs.sort_by { | lang, q| q }.map { |lang, q| lang }.reverse
  end
end
