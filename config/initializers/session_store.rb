# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_rails3_blog_session',
  :secret => '8c5cfed6666169402da74cbfe1e4acbbef693be301476b85ad7a3c4c93230bbefbf5cacbd211db7daec6e56551621344ac517eabacf943e587511789a29fa650'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
