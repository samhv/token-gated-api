module EthereumUtils
    def self.verify_signature ethereum_address, signed_message, original_message
        # Ensure the address is normalized
        normalized_address = Eth::Utils.normalize_address ethereum_address

        # Decode the hex signature
        signature = Eth::Signature.decode signed_message

        # The signature is valid if the public key derived from the signature matches the user's Ethereum address
        signature.recoverable? && signature.recover_public_key_from_message(original_message).to_address == normalized_address
    end
end
