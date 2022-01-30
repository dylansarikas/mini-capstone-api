class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :is_discounted?, :inventory

  belongs_to :supplier
  has_many :categories
  has_many :images
end
