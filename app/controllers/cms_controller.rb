class CmsController < ApplicationController
  include Scrivito::ControllerActions

  before_action :set_obj

  def set_obj
    @obj ||= params[:id].present? ? Obj.find(params[:id]) : RootPage.all.first
  end

end
