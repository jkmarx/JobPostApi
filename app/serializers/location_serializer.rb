class LocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :state, :jobs
end
