module AlchemyApi
    include HTTParty
    base_uri "https://eth-goerli.g.alchemy.com/nft/v3/#{ENV['ALCHEMY_API_KEY']}"
  
    def self.is_holder_of_contract user_address, collection_address
        response = get("/isHolderOfContract", query: { wallet: user_address, contractAddress: collection_address })
        response["isHolderOfContract"]
    end
end
