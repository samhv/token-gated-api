require 'eth'

module EthereumUtils
    def self.verify_signature ethereum_address, signed_message, original_message
        return Eth::Signature.verify(original_message, signed_message, ethereum_address)
    end
end
