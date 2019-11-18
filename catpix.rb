require 'catpix'
require "catpix/version"
require "catpix/private"

Catpix::print_image("Pusheen.png", {
  :limit_x => 1.0,
  :limit_y => 0,
  :center_x => true,
  :center_y => true,
  :bg => "white",
  :bg_fill => true,
  :resolution => "low"}
)

 
# require "catpix/version"
# require "catpix/private"

# module Catpix
#     def self.print_image(/Pusheen.png, options={})
#         options = default_options.merge! options
    
#         if options[:resolution] == 'auto'
#           options[:resolution] = can_use_utf8? ? 'high' : 'low'
#         end
#         @@resolution = options[:resolution]
    
#         img = load_image path
#         resize! img, options[:limit_x], options[:limit_y]
    
#         margins = get_margins img, options[:center_x], options[:center_y]
#         margins[:colour] = options[:bg_fill] ? options[:bg] : nil
    
#         if high_res?
#           do_print_image_hr img, margins, options
#         else
#           do_print_image_lr img, margins, options
#         end
#       end
#     end