#
# Be sure to run `pod lib lint UPPaymentSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UPPaymentSDK'
  s.version          = '0.0.3'
  s.summary          = '银联支付SDK'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/yaofen/UPPayment'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'yaofen' => '2363253102@qq.com' }
  s.source           = { :git => 'https://github.com/yaofen/UPPayment.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.ios.deployment_target = '10.0'
  s.ios.vendored_libraries = 'UPPaymentSDK/Classes/lib/libPaymentControl.a'
  s.libraries = 'z'
  s.frameworks = 'CFNetwork','SystemConfiguration','CoreTelephony'
  s.source_files = 'UPPaymentSDK/Classes/Headers/*.h'
  s.user_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lc++']}
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }



end
