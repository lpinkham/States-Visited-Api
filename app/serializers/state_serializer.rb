class StateSerializer < ActiveModel::Serializer
  attributes :id, :state_name, :date_visited, :highlight, :revisit, :user
end
