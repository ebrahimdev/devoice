class User < ApplicationRecord
  has_secure_password
  
  validates :email, presence: true, 
                   uniqueness: true, 
                   format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, 
                      length: { minimum: 6 }, 
                      if: -> { password.present? }
                      
  # Generate JWT token for user
  def generate_token
    payload = {
      user_id: id,
      exp: 24.hours.from_now.to_i
    }
    JWT.encode(payload, Rails.application.credentials.secret_key_base)
  end

  # Verify JWT token
  def self.verify_token(token)
    begin
      decoded = JWT.decode(token, Rails.application.credentials.secret_key_base)[0]
      User.find_by(id: decoded["user_id"])
    rescue JWT::DecodeError
      nil
    end
  end
end 