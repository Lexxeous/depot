# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true, uniqueness: true
  after_destroy :ensure_an_admin_remains
end

class Error < StandardError
end

private

def ensure_an_admin_remains
  raise Error, "Can't delete last administrative user." if User.count.zero?
end
