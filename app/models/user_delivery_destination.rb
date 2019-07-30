class UserDeliveryDestination
  include Neo4j::ActiveNode
  include Neo4j::Timestamps
  property :zip_code, type: String
  property :phone_number, type: String
  property :address, type: String

  has_one :in, :user, origin: :remember
end
