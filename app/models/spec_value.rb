class SpecValue
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :name, type: String

  has_one :in, :spec_field, type: :belong, model_class: SpecField
  has_one :in, :item, type: :belong, model_class: Item
end
