class QuoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :author, :description, :kind_id
end
