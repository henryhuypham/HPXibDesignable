#
# Be sure to run `pod lib lint HPXibDesignable.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "HPXibDesignable"
  s.version          = "0.1.5"
  s.summary          = "A base class that helps its subclasses (associated with a xib file with the same name as the class) to be rendered in Interface Builder."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
                        As the name stated, this is a convenient base class that helps rendering a custom view class (associated with a xib file) in Interface Builder.
                       DESC

  s.homepage         = "https://github.com/huyphamthanh8290/HPXibDesignable"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Huy Pham" => "huyphamthanh8290@gmail.com" }
  s.source           = { :git => "https://github.com/huyphamthanh8290/HPXibDesignable.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'HPXibDesignable' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
