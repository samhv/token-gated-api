# NFT gated content
Access-gating app that allows users to create content exclusively accessible by owners of specific NFTs. Imagine a world where owning a digital asset can grant you access to exclusive content, tailored just for you!

# Important files to review
- models/pages.rb
- lib/alchemy_api.rb
- lib/ethereum_utils.rb
- controllers/pages_controller.rb
- serializers/page_serializer.rb


# Run it
You need:
- Ruby 3.3.0
- PostgreSQL running

```
bin/bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails s
```
