require 'eth'

module EthereumUtils
    def self.verifySignature(ethereumAddress, signedMessage, originalMessage)
        # Ensure the address is normalized
        normalized_address = Eth::Utils.normalize_address(ethereumAddress)

        # Decode the hex signature
        signature = Eth::Signature.decode(signedMessage)

        # The signature is valid if the public key derived from the signature
        # matches the user's Ethereum address
        signature.recoverable? && signature.recover_public_key_from_message(originalMessage).to_address == normalized_address
    end
end
