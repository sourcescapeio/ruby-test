module Example
  def save_user
    user = User.new
    user.email = 'hello@example.com' unless self.anonymous?
    user.save
  end


  def save_user_again
    user = User.new
    user.save
  end

  def not_a_save
    user = User.new
  end
end
