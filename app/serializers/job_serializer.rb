class JobSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :location_id, :category, :position_type, :company, :keywords
end
