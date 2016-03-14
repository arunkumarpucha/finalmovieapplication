json.array!(@signups) do |signup|
  json.extract! signup, :id, :user_name, :password, :email, :phone_no
  json.url signup_url(signup, format: :json)
end
