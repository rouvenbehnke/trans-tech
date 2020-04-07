class AcceptedCookiesHintController < ApplicationController
  include CookieHintHelper

  def index
    accepted_cookies_hint!(Obj.find(params[:id]))
    head :ok
  end
end
