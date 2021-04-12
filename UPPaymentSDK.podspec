#
# Be sure to run `pod lib lint UPPaymentSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UPPaymentSDK'
  s.version          = '0.0.2'
  s.summary          = '银联支付SDK'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yaofen/UPPayment'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yaofen' => '2363253102@qq.com' }
  s.source           = { :git => 'https://github.com/yaofen/UPPayment.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  s.source_files = 'UPPaymentSDK/Classes/Headers/*.h'
  s.ios.vendored_libraries = 'UPPaymentSDK/Classes/lib/libPaymentControl.a'
  s.frameworks = 'CFNetwork','SystemConfiguration'
  s.libraries = 'z'

end
