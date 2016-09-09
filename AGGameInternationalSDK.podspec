#
# Be sure to run `pod lib lint AGGameInternationalSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AGGameInternationalSDK'
  s.version          = '1.0.0'
  s.summary          = 'AGGameInternationalSDK.'
  s.homepage         = 'http://www.appgame.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'supermao' => '625257555@qq.com' }
  s.source           = { :git => 'https://github.com/appgame-sdk/AGGameInternationalSDK-for-iOS.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'  
  s.requires_arc = true

  s.frameworks = 'MobileCoreServices', 'SystemConfiguration', 'UIKit', 'GameKit', 'CoreGraphics','Social','StoreKit','AdSupport', 'iAd', "Security"
  s.vendored_frameworks = 'AGGameInternationalSDK/AGGameInternationalSDK.framework'
  s.xcconfig = {'OTHER_LDFLAGS' => '$(inherited) -ObjC'}
end
