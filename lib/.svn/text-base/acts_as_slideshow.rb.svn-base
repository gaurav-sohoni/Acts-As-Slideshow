module ActiveRecord
  module SlideShowable
    def self.included(base)
      base.class_eval do
        include InstanceMethods
      end
    end
      
    module InstanceMethods   
      def get_photo_data_xml
        str = ''
        xml = Builder::XmlMarkup.new(:target => str, :indent => 1)
        xml.root {
          create_xml_node(self, xml)
        }
      end
      
      def create_xml_node(user, xml)
        user.photos.each do |photo|
          xml.Image {
            xml.ImageName   photo.imagename
            xml.ImageTitle  photo.imagetitle
            xml.Description photo.description
            xml.ImageURL    photo.imageurl
            xml.ThumbURL    photo.thumburl
          }
        end
      end
      
    end #InstanceMethods
  end #SlideShowable
end #ActiveRecord