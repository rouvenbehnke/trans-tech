class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_domain

  def check_domain
    if Rails.env.production? && !request.host.casecmp('trans-tech.de').zero?
      redirect_to request.protocol + 'trans-tech.de' + request.fullpath, status: 301
    end
  end
end
