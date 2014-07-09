require 'digest'

module BewdEncrypter

	def self.encryptor(value)
		Digest::SHA256.hexdigest value
	end

end