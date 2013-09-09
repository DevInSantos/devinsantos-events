# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
secret = ENV['SECRET_TOKEN']
secret ||= 'eec9ce830dc866131b3b6e83b40969e8d9dcad120d9c9cf03cb14b158e1763fcf3690c2b8434dddb6457b49da8dce0bf9c31edf453553419c3c06cec5d257ba6'
Devinsantos::Application.config.secret_key_base = secret
