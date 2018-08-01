# frozen_string_literal: true

#---
# Excerpted from "Agile Web Development with Rails 5",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails5 for more book information.
#---
require "active_merchant/billing/rails"
credit_card = ActiveMerchant::Billing::CreditCard.new(
  first_name: "Jon",
  last_name:  "Doe",
  number:     "5466 1603 2231 9813",
  month:      "8",
  year:       "2020",
  brand:       "bogus",
  verification_value:  "367",
)

puts "Is #{credit_card.number} valid?  #{credit_card.valid?}"
puts credit_card.display_number
puts credit_card.validate
