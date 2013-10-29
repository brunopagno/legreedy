require 'machinist/active_record'

User.blueprint do
  email { 'user@user.com' }
  name { 'User Souza' }
  password { '12345678' }
end

Transaction.blueprint do
  user { User.make! }
  way { TransactionWay::IN }
  value { 19.90 }
  date { Date.today }
end
