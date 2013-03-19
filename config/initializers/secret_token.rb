# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
SidekiqBug::Application.config.secret_key_base = 'a90dd3bdb0b3beb7bc425f5a986e23dc769913c716bd701e57f40820700177243412e66b6ddbf59f6f7ccd7c5919c707f46ddfca1948a4ae148246ccffc73b31'
