def login(user)
  session[:user_id] = user.id
end

def logout
  session[:user_id] = nil
end

def current_user
  @user ||= User.find(session[:user_id])
end

def logged_in?
  !current_user.nil?
end