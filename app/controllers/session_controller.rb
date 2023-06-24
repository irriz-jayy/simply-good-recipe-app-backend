# class SessionController < ApplicationController
#     skip_before_action :authorize, only: [:create]

#     def create
#       user = User.find_by(email: params[:email])
  
#       if user && user.authenticate(params[:password])
#         token = JWT.encode({ user_id: user.id }, 'my_s3cr3t')
#         render json: { loggedin: true, current_user: user, user_type: "User", jwt: token }, status: :accepted
#       else
#         render json: { error: 'Invalid email or password' }, status: :unauthorized
#       end
#     end
  
#     def destroy
#       cookies.delete(:jwt_token)
#       render json: { message: 'Logged out successfully' }
#     end

#     private

#     def session_params
#       params.permit(:email, :password)
#     end
# end
