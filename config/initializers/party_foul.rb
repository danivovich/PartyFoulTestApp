# require 'party_foul/processors/sidekiq'


PartyFoul.configure do |config|
  
  # config.processor = PartyFoul::Processors::Sidekiq
  
  # The collection of exceptions PartyFoul should not be allowed to handle
  # The constants here *must* be represented as strings
  config.blacklisted_exceptions = ['ActiveRecord::RecordNotFound', 'ActionController::RoutingError']

  # The OAuth token for the account that is opening the issues on GitHub
  config.oauth_token            = ''

  config.owner                  = 'KatanaCode'

  config.repo                   = 'PartyFoulTestApp'

end
