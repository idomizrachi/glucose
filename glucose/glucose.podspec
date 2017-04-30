#
# Be sure to run `pod lib lint glucose.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'glucose'
  s.version          = '0.0.1'
  s.summary          = 'Glucose - Autolayout syntactic sugar'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Glucose is a set of methods for UIView that ease programmatic autolayout implementation.
The implementation was highly inspired by TinyConstraints.
                       DESC

  s.homepage         = 'https://github.com/idomizrachi/glucose'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.author           = { 'idomizrachi' => 'ido.mizrachi@jivesoftware.com' }
  s.source           = { :git => 'https://github.com/idomizrachi/glucose.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/idomizrachi'

  s.ios.deployment_target = '8.0'

  s.source_files = 'glucose/Classes/**/*'
  s.public_header_files = 'glucose/Classes/**/*.h'
  s.frameworks = 'UIKit', 'MapKit'
end
