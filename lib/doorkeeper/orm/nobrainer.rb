module Doorkeeper
  module Orm
    module Nobrainer
      def self.initialize_models!
        require 'doorkeeper/orm/nobrainer/application'
        require 'doorkeeper/orm/nobrainer/access_grant'
        require 'doorkeeper/orm/nobrainer/access_token'
      end

      def self.initialize_application_owner!
        require 'doorkeeper/models/concerns/ownership'

        Doorkeeper::Application.send :include, Doorkeeper::Models::Ownership
      end

      def self.check_requirements!(_config); end
    end
  end
end
