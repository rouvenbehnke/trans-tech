
module CookieHintHelper
  def accepted_cookies_hint!(obj)
    cookies["accepted_cookies_hint_#{obj.id}"] = { value: 'true', expires: 1.year.from_now }
  end

  def cookie_hint_accepted?(obj)
    if cookies["accepted_cookies_hint_#{obj.id}"].present?
      cookies["accepted_cookies_hint_#{obj.id}"] == 'true'
    end
  end
end