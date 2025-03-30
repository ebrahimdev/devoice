class ApplicationController < ActionController::API
  before_action :authenticate_user
  
  private
  
  def authenticate_user
    header = request.headers['Authorization']
    token = header.split(' ').last if header
    
    if token
      @current_user = User.verify_token(token)
      unless @current_user
        render json: { error: 'Invalid or expired token' }, status: :unauthorized
      end
    else
      render json: { error: 'Token missing' }, status: :unauthorized
    end
  end
  
  def current_user
    @current_user
  end
end
