class User < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection
  def to_s() name end
end
