class PageSerializer < ActiveModel::Serializer
  attributes :id, :owner_address, :collection_address, :title, :description, :template
  
  def include_description?
    @instance_options[:show_description]
  end
end
