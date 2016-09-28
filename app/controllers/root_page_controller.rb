class RootPageController < CmsController
  def index
    @root_page = true
    @homepages = Homepage.all.to_a
  end

end
