module SessionsHelper
  @@current_user = nil
  def sign_in(admin)
    self.current_user = admin
  end

  def signed_in?
    !current_user.nil?
  end

  def sign_out
    self.current_user = nil
  end

  def current_user=(admin)
    @@current_user = admin
  end

  def current_user
    @@current_user
  end
end
