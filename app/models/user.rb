class User < ApplicationRecord
	has_secure_password
	validates :name, presence: true, uniqueness: true
	after_destroy :ensure_an_admin_remains
end

class Error < StandardError

	private
		def ensure_an_admin_remains
			if User.count.zero?
				raise Error.new "Can't delete last administrative user."
			end
		end
end
