class Connection
  include Mongoid::Document
  include Mongoid::Timestamps

  belongs_to :company

  field :default, type: Mongoid::Boolean, default: false
end
