
module Doorkeeper
  class AccessGrant
    include NoBrainer::Document
    include NoBrainer::Document::Timestamps

    include DoorkeeperNobrainer::AccessGrantMixin
    include Doorkeeper::Models::Nobrainer::Scopes
    store_in table: :oauth_access_grants

    field :resource_owner_id, primary_key: true
    field :token, type: String, index: true, unique: true
    field :expires_in, type: Integer
    field :redirect_uri, type: String
    field :revoked_at, type: DateTime

  end
end
