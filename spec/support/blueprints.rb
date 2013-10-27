require 'machinist/active_record'

User.blueprint do
  email { 'user@user.com' }
  name { 'User Souza' }
end

Transaction.blueprint do
  user { User.make! }
  type { TransactionType::IN }
  value { 19.90 }
  date { Date.today }
end
