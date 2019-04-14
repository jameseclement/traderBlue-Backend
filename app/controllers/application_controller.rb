class ApplicationController < ActionController::API
  private
   def secret_key
     Rails.application.credentials.secret_auth_key
   end

   #given a payload, return a token
   def encode(payload)
     JWT.encode(payload, secret_key, 'HS256')
   end

   #given a token, return the decrypted payload
   def decode(token)
     JWT.decode(token, secret_key, true, {algorithm: 'HS256'})[0]
   end
end
