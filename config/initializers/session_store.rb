# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_MeristemCounty_session',
  :secret      => '1699ecf3451047704dfd5a29f52f40623a5ec2b300e48097a0b1138dc7d4d9638fc46faaa169e939c735d858b2f9b0d9e578c9313055425b83d4ae46735a36ca'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
