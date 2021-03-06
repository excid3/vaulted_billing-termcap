Factory.define :customer, :class => VaultedBilling::Customer do |c|
  c.email { Faker::Internet.email }
end

Factory.define :existing_customer, :parent => :customer do |c|
  c.vault_id { Factory.next(:identifier) }
end
