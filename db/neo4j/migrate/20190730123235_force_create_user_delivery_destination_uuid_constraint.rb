class ForceCreateUserDeliveryDestinationUuidConstraint < Neo4j::Migrations::Base
  def up
    add_constraint :UserDeliveryDestination, :uuid, force: true
  end

  def down
    drop_constraint :UserDeliveryDestination, :uuid
  end
end
