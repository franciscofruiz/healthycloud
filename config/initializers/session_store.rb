# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_healthycloud_session',
  :secret      => 'af90107f17fbc236537bed8046a695b1e7baed1d61d4315c2c1771fba1b08b226a8a94c397dbc484bff712bbd167db9da86940c23322a3c0341e2e6c9229d0a2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
