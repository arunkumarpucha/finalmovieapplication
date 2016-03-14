json.array!(@logins) do |login|
  json.extract! login, :id, :user_name, :password, :phone_no
  json.url login_url(login, format: :json)
end
