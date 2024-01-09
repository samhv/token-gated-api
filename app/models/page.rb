class Page < ApplicationRecord
    def has_access user_address, signed_message
        has_valid_signature(user_address, signed_message) && is_holder(user_address)
    end
    
    private
        def has_valid_signature user_address, signed_message
            EthereumUtils.verify_signature user_address, signed_message, "Sign it to verify you have access to the collection ##{self.id}"
        end
        
        def is_holder user_address
            AlchemyApi.is_holder_of_contract user_address, self.collection_address
        end
end
