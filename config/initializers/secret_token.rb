# Be sure to restart your server when you modify this file.

<<<<<<< HEAD
# Make sure your secret_key_base is kept private
# if you're sharing your code publicly, such as by adding
# .secret to your .gitignore file.

=======
# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
>>>>>>> 6f2a9d9b68c988ed496642a8770928cffa6476e5
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

<<<<<<< HEAD
SampleApp::Application.config.secret_key_base = secure_token
=======
Lhapp::Application.config.secret_key_base = '3ebc04174dc2492c4584d5334fabdef07b77162abcf70436ca0552b4ed56c1f8c58cf6ffb8aa853240d9a5b869660e0dbcddcfcaa649c0d3b9e665189536b524'
>>>>>>> 6f2a9d9b68c988ed496642a8770928cffa6476e5
