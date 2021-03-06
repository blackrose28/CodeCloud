#
# Be sure to run `pod lib lint CodeCloud.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CodeCloud'
  s.version          = '0.1.2'
  s.summary          = 'CodeCloud SDK for ios.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

s.homepage         = 'https://github.com/blackrose28/CodeCloud'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'chuonglv' => 'chuonglevan@vccorp.vn' }
s.source           = { :git => 'https://github.com/blackrose28/CodeCloud.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.1'

s.source_files        = 'CodeCloud/Classes/*.h'
s.public_header_files = 'CodeCloud/Classes/*.h'
s.preserve_paths = 'libcodecloud.a','libuv.a','libssl.a','libcrypto.a'
s.ios.vendored_library = 'libcodecloud.a','libuv.a','libssl.a','libcrypto.a'
s.libraries = 'uv','ssl','crypto','codecloud'

  # s.resource_bundles = {
  #   'CodeCloud' => ['CodeCloud/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
