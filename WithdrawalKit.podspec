#
#  Be sure to run `pod spec lint WithdrawalKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name            = "WithdrawalKit"
  spec.version         = "2.0.0-beta.5"
  spec.summary         = "WithdrawalKit é framework destinado a Merci e seus parceiros."
  spec.swift_versions  = ['5']

  spec.description  = <<-DESC
  Esse framework é de uso da Merci e seus parceiros a fim de construir recursos de integração entre nosso sistemas.
                   DESC

  spec.homepage     = 'https://github.com/merci-app/withdrawalkit-podspec'
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  spec.authors      = { 'Thais Sadami' => 'thais dot sadami @ dock dot tech' }
  spec.source       = { :git => 'https://github.com/merci-app/withdrawalkit-podespec.git', :tag => 'version/2.0.0-beta.5' }

  spec.ios.deployment_target = '10.0'
  spec.vendored_frameworks   = [
    'MCISDKWithdrawal.xcframework',
    'WithdrawalKit.xcframework'
  ]

  spec.frameworks  = 'UIKit', 'MapKit'
  spec.dependency 'Alamofire', '<= 4.9.1'
  spec.dependency 'Kingfisher'
  spec.dependency 'KeychainAccess', '~> 4.2.2'
  spec.dependency 'TPKeyboardAvoiding', '~> 1.3'
end
