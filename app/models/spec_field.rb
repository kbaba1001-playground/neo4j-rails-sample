class SpecField
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :name, type: String

  has_one :in, :category, type: :belong, model_class: Category
  has_one :out, :spec_field, type: :belong, model_class: SpecValue
end
