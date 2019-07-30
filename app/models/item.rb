class Item
  include Neo4j::ActiveNode
  include Neo4j::Timestamps
  property :name, type: String
  property :description, type: String
  enum delivery_kind: %i(image video unknown) # お急ぎ、通常、未定
  enum stock_kind: %i(stock shortage) # 在庫あり、在庫なし
end
