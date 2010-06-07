require 'acts_as_slideshow'
require 'acts_as_slideshow_helper'

ActionView::Base.send(:include, ActionView::Helpers::SlideShowableHelper)
ActiveRecord::Base.send(:include, ActiveRecord::SlideShowable)