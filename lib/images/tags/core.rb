module Images
  module Tags
    module Core
      include Radiant::Taggable
      
      class TagError < StandardError; end
      
      desc %{
        The namespace for referencing images. You may specify the title
        attribute for this tag to use only images with the specified title.
      
        *Usage:* 
        <pre><code><r:images>...</r:images></code></pre>
      }
      tag 'images' do |tag|
        tag.locals.images = Helpers.current_images(tag)
        tag.expand
      end
      
      desc %{
        Expands if images exist
      }
      tag 'images:if_images' do |tag|
        tag.expand if tag.locals.images.present?
      end
      
      desc %{
        Expands unless images exist
      }
      tag 'images:unless_images' do |tag|
        tag.expand unless tag.locals.images.present?
      end
      
      desc %{
        Goes through each of the available images.
        Use the limit and offset attributes to render a specific number of images.
        Use the by and order attributes to control the order of images.
      
        *Usage:* 
        <pre><code><r:images:each [limit=0] [offset=0] [order="asc|desc"] [by="position|title|..."]>...</r:images:each></code></pre>
      }
      tag 'images:each' do |tag|
        content = tag.locals.images.map { |image|
          tag.locals.image = image
          tag.expand
        }
      end
      
      desc %{
        Expands the current image context. 
        Images can be obtained by passing a ID, title or position attribute.
        
        *Usage:*
        <pre><code><r:image [id=] [title=""] [position=]>...</r:image></code></pre>
      }
      tag 'image' do |tag|
        tag.locals.image = Helpers.current_image(tag)
        
        tag.expand if tag.locals.image.present?
      end
      
      desc %{
        Outputs the full URL of the image including the filename. 
        The style of the image can be specified by passing the style attribute.
        
        *Usage:*
        <pre><code><r:image title='image'><r:url [style="preview|original"] /></r:image></code></pre>
      }
      tag 'image:url' do |tag|
        style = tag.attr['style'] || Radiant::Config['images.default']
        Helpers.current_image(tag).url(style.to_sym, false)
      end
      
      desc %{
        Outputs a very simple image tag.
        The style of the image can be specified by passing the style attribute.
        
        *Usage:*
        <pre><code><r:image title='image' style='preview'><r:tag [style="original"] /></r:image></code></pre>
      }
      tag 'image:tag' do |tag|
        style = tag.attr['style'] || Radiant::Config['images.default']
        %{<img src="#{Helpers.current_image(tag).url(style.to_sym, false)}" />}
      end
      
      [:id, :title, :position].each do |symbol|
        desc %{
          Outputs the #{symbol} of the current image
          
          *Usage:*
          <pre><code><r:image title='image'><r:#{symbol} /></code></pre>
        }
        tag "image:#{symbol}" do |tag|
          Helpers.current_image(tag).send(symbol)
        end
      end
      
    end
  end
end