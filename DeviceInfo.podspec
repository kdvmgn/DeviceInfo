#
#  Be sure to run `pod spec lint DeviceInfo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "DeviceInfo"
  spec.version      = "0.0.3"
  
  spec.summary      = "Framework for getting device information"
  spec.description  = <<-DESC
  Framework which provide all required device information: model name, model type and screen parameters
                   DESC
                   
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Dmitry Kuleshov" => "kdv.mgn@gmail.com" }

  spec.homepage     = "https://github.com/kdvmgn/DeviceInfo.git"

  spec.source       = { :git => "https://github.com/kdvmgn/DeviceInfo.git", :tag => spec.version.to_s }
  spec.source_files  = "DeviceInfo/*.{h,m,swift}"
  spec.requires_arc = true
  spec.framework  = "UIKit"
  spec.swift_version = "5.0"

end
