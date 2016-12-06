module SeoHelper
  def meta_tags_for(obj)
    return if obj.blank?

    html = []
    html << tag(:meta, name: 'language', content: obj[:iso_code_language] || "language")
    html << tag(:meta, name: 'keywords', content: obj[:meta_tags] || "meta_tags")
    html << tag(:meta, name: 'description', content: obj[:meta_description] || "meta_description")

    html.join("\n").html_safe
  end
end
