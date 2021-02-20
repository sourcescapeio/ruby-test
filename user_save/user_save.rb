module Example
  def save_user
    user = User.new
    user.email = 'hello@example.com' unless self.anonymous?
    user.save
  end
end
