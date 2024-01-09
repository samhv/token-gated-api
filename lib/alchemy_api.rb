module AlchemyAPI
    include HTTParty
    base_uri "https://eth-mainnet.g.alchemy.com/nft/v3/#{ENV['ALCHEMY_API_KEY']}/"
  
    def self.is_holder_of_contract user_address, collection_address
        response = get("isHolderOfContract", query: { wallet: user_address, contractAddress: collection_address })
        puts "alchemy response"
        puts response
        if response.success?
            return response['data'].any? { |nft| nft['owner'] == user_address }
        else
            return false
        end
    end
end
