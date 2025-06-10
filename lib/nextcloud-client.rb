require "net/https"
require "nokogiri"

require "nextcloud-client/version/nextcloud-client"
require "nextcloud-client/errors/nextcloud-client"

require "nextcloud-client/helpers/nextcloud-client"
require "nextcloud-client/helpers/properties"

require "nextcloud-client/api"

require "nextcloud-client/ocs_api"
require "nextcloud-client/ocs/user"
require "nextcloud-client/ocs/group"
require "nextcloud-client/ocs/app"
require "nextcloud-client/ocs/file_sharing_api"
require "nextcloud-client/ocs/group_folder"

require "nextcloud-client/webdav_api"
require "nextcloud-client/webdav/directory"

require "nextcloud-client/models/user"
require "nextcloud-client/models/directory"

# Namespace for Nextcloud OCS API communication
module NextcloudClient
  class << self
    # Allow base initializing
    #
    # @return [Object] Api
    def new(args)
      Api.new(args)
    end

    # Access to OCS API from base instance
    #
    # @param [Hash] args authentication credentials.
    # @option args [String] :url Nextcloud instance URL
    # @option args [String] :username Nextcloud instance administrator username
    # @option args [String] :password Nextcloud instance administrator password
    def ocs(args)
      OcsApi.new(args)
    end

    # Access to WebDAV API from base instance
    #
    # @param [Hash] args authentication credentials.
    # @option args [String] :url Nextcloud instance URL
    # @option args [String] :username Nextcloud instance administrator username
    # @option args [String] :password Nextcloud instance administrator password
    def webdav(args)
      WebdavApi.new(args)
    end
  end
end
