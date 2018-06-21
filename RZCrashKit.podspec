#
# Be sure to run `pod lib lint RZCrashKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RZCrashKit'
  s.version          = '0.7.8.6'
  s.summary          = '针对iOS开发过程中可能出现的闪退处理'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "结合Runtime消息转发、Runtime方法替换、Aspect_hook切面处理等进行动态处理iOSapp可能会产生的错误异常"

  s.homepage         = 'https://github.com/zhangrongwu/RZCrashKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangrongwu' => 'zhangrongwuios@icloud.com' }
  s.source           = { :git => 'https://github.com/zhangrongwu/RZCrashKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  
  s.source_files = 'RZCrashKit/**/*.{h,m,bundle}'

  s.public_header_files = 'RZCrashKit/**/*.h'


  # s.resource_bundles = {
  #   'RZCrashKit' => ['RZCrashKit/Assets/*.png']
  # }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
