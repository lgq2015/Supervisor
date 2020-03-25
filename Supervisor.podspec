#
# Be sure to run `pod lib lint iSupervisor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Supervisor'
  s.version          = '0.1.0'
  s.summary          = 'a monitor tool kit for iOS developer.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  a monitor tool kit for iOS developer.
  DESC

  s.homepage         = 'https://github.com/madaoCN/Supervisor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'madaoCN' => '1349963838@163.com' }
  s.source           = { :git => 'https://github.com/madaoCN/Supervisor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Supervisor/Classes/**/*'
  
  s.resource_bundles = {
      'iSupervisor' => ['Supervisor/Assets/*.png']
  }
  
  s.user_target_xcconfig = { 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES' }

  s.subspec 'SupervisorLogger' do |subspec|
      subspec.source_files = 'Core/SupervisorLogger/Classes/**/*'
  end
  
  s.subspec 'NSLogSupervisor' do |subspec|
      subspec.source_files = 'Core/NSLogSupervisor/Classes/**/*'
      subspec.dependency     'fishhook', '~> 0.2'
  end
  
  s.subspec 'CrashSupervisor' do |subspec|
      subspec.source_files = 'Core/CrashSupervisor/Classes/**/*'
  end
  # s.resource_bundles = {
  #   'iSupervisor' => ['iSupervisor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
