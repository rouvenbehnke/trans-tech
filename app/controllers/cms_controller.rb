class CmsController < ApplicationController
  include Scrivito::ControllerActions

  before_filter :set_obj

  def set_obj
    @obj ||= params[:id].present? ? Obj.find(params[:id]) : RootPage.all.first
  end

end
