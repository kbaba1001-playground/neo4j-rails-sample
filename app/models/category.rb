class Category
  include Neo4j::ActiveNode
  include Neo4j::Timestamps

  property :name, type: String
  property :display_order, type: Integer

  # TODO 親子関係はどうやって作ったらいいのか？
  # has_one :in, :category, type: :parent, model_class: Category
  # has_many :out, :categories, type: :children, model_class: Category

  has_many :out, :spec_fields, type: :belong, model_class: SpecField
end
