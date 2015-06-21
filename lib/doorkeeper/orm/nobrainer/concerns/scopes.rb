module Doorkeeper
  module Models
    module Nobrainer
      module Scopes
        extend ActiveSupport::Concern

        included do
          field :scopes, type: String
        end

        def scopes=(value)
          write_attribute :scopes, value if value.present?
        end
      end
    end
  end
end
