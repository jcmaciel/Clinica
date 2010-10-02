# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_clinica_session',
  :secret      => '0b29e0298b0f39439df8e4ac9893627c12ee29f33c37fffce146896ecbb0d42d8b1f9b3127a8ad6cbd33f8e504ac1319d0f4a7fb007dc8d6519a1c52437b2d89'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
