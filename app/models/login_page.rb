class LoginPage < Obj
  attribute :title, :string
  attribute :body, :widgetlist
  attribute :child_order, :referencelist

  def self.instance
    LoginPage.all.first
  end
end
