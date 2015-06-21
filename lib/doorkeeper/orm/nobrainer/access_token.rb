
module Doorkeeper
  class AccessToken
    include NoBrainer::Document
    include NoBrainer::Document::Timestamps

    include DoorkeeperNobrainer::AccessTokenMixin
    include Doorkeeper::Models::Nobrainer::Scopes

    store_in table: :oauth_access_tokens

    field :resource_owner_id, primary_key: true
    field :token, type: String, index: true, unique: true
    field :refresh_token, type: String, index: true
    field :expires_in, type: Integer
    field :revoked_at, type: DateTime


    def self.delete_all_for(application_id, resource_owner)
      where(application_id: application_id,
            resource_owner_id: resource_owner.id).delete_all
    end
    private_class_method :delete_all_for

    def self.order_method
      :order_by
    end

    def self.created_at_desc
      [:created_at, :desc]
    end
  end
end
