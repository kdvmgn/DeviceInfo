#
#  Be sure to run `pod spec lint DeviceInfo.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "DeviceSpec"
  spec.version      = "0.0.4"
  
  spec.summary      = "Framework for getting general device specification"
  spec.description  = <<-DESC
  Framework DeviceSpec provides with all required device specofication: model name, marketing model name, model type and screen parameters and other usefull information
                   DESC
                   
  spec.platform     = :ios
  spec.ios.deployment_target = "10.0"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Dmitry Kuleshov" => "kdv.mgn@gmail.com" }

  spec.homepage     = "https://github.com/kdvmgn/DeviceSpec.git"

  spec.source       = { :git => "https://github.com/kdvmgn/DeviceSpec.git", :tag => spec.version.to_s }
  spec.source_files  = ["DeviceSpec/*.{h,m,swift}", "DeviceSpec/Models/*.{h,m,swift}"]
  spec.requires_arc = true
  spec.framework  = "UIKit"
  spec.swift_version = "5.0"

end
