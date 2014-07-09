require 'digest'

module BewdEncrypter

	def encryptor(value)
		Digest::SHA256.hexdigest value
	end

end