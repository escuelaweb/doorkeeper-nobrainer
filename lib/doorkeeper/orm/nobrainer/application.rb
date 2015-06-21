module Doorkeeper
  class Application
    include NoBrainer::Document
    include NoBrainer::Document::Timestamps
    include Models::Nobrainer::Scopes

    include ApplicationMixin

    store_in table: :oauth_applications

    field :name, type: String
    field :uid, type: String, index: true, unique: true
    field :secret, type: String
    field :redirect_uri, type: String

    has_many :authorized_tokens, class_name: 'Doorkeeper::AccessToken'

    def self.authorized_for(resource_owner)
      ids = AccessToken.where(resource_owner_id: resource_owner.id, revoked_at: nil).map(&:application_id)
      find(ids)
    end
  end
end
