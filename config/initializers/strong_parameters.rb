ActionController::Parameters::PERMITTED_SCALAR_TYPES << BSON::ObjectId

if defined?(Mongoid)
  module Mongoid
    module Document
      include ActiveModel::ForbiddenAttributesProtection
    end
  end
end
