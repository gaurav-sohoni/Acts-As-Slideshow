require 'action_view'

module ActionView #:nodoc:
  module Helpers # :nodoc:
    module SlideShowableHelper # :nodoc:
      def self.included(base)
        base.class_eval do
          include InstanceMethods
        end
      end
      module InstanceMethods
        # simple tag that helps to embed the flash component in the application views ...
        def embed_slideshow_tag(source='/flash/Flex_slideshow.swf', options={})
          if not File.exists? File.join(RAILS_ROOT, 'public', source)
            return "<div><strong>Warning:</strong> The file <code>#{File.join('public', source)}</code> does not exist.</div>"
          end
          div_id = options[:div_id] || "flashcontent_#{rand(1_100)}"

          return <<-"EOF"
          <div id="#{div_id}" align="center">
            <embed src="#{source}" menu="false" quality="best" scale="noborder" height="100%" width="100%" allowScriptAccess="sameDomain" name="slideshow" align="center" allowFullScreen="false" swLiveConnect=true type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer" />
          </div>
EOF
        end
      end #InstanceMethods
    end #SlideShowableHelper
  end #Helpers
end #ActionView