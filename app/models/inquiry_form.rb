class InquiryForm
  include ActiveModel::Model

  attr_accessor :first_name
  attr_accessor :last_name
  attr_accessor :email
  attr_accessor :subject
  attr_accessor :volume
  attr_accessor :date
  attr_accessor :obj_id
  attr_accessor :source_language
  attr_accessor :target_language
  attr_accessor :specialist_areas
  attr_accessor :remarks
  attr_accessor :type
end
