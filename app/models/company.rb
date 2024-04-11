class Company
  include Mongoid::Document
  include Mongoid::Timestamps

  has_many :connections, validate: false

  def default_connections
    connections.find { |c| c.default? }
  end
end
