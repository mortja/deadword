# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_samson_session',
  :secret      => '0e2b7437d3908e14d76dd9e07e7cccc5a2f6a1253e23dff94c6ce94d8cf9d10caa29d91caf0d57338a36fc1b761805afa9c6d29300054fc25f40222a09605ae9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
