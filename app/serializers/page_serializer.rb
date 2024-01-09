class PageSerializer < ActiveModel::Serializer
  attributes :id, :owner_address, :collection_address, :title, :template
  attribute :description, if: :show_description?

  def show_description?
    @instance_options[:show_description]
  end
end
