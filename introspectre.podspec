#
# Be sure to run `pod lib lint introspectre.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "introspectre"
  s.version          = "0.1.0"
  s.summary          = "introspectre..objective-c runtime but good"
  s.description      = <<-DESC
                        Wrap the objc-runtime.h stuff to use obj-c objects
                       DESC
  s.homepage         = "https://github.com/mfrawley/introspectre"

  s.license          = 'MIT'
  s.author           = { "Mark Frawley" => "markfrawley@gmail.com" }
  s.source           = { :git => "https://github.com/mfrawley/introspectre.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/firlefanshans'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'introspectre' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
