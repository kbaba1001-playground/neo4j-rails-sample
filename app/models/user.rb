class User
  include Neo4j::ActiveNode
  include Neo4j::Timestamps
  property :family_name, type: String
  property :given_name, type: String
  property :email, type: String
  property :password_digest, type: String

  has_many :out, :user_delivery_destinations, type: :remember, model_class: :UserDeliveryDestination
end
