class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :is_discounted?, :tax, :total, :inventory

  belongs_to :supplier
  #has_many :images
end
