Types::UserType = GraphQL::ObjectType.define do
  name "User"
  field :id, !types.ID
  field :name, !types.String
  field :is_admin, !types.Boolean
  field :email, !types.String
end
