#
#  Be sure to run `pod spec lint CLStoreKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
    s.name         = "CLStoreKit"
    s.version      = "1.0.0"
    s.summary      = "CLStoreKit just save your time"
    s.homepage     = "https://github.com/coooliang/CLStoreKit"
    s.license      = { :type => "MIT", :file => "LICENSE" }
    s.author       = "coooliang"
    s.platform     = :ios, "10.0"
    s.source       = { :git => "https://github.com/coooliang/CLStoreKit.git", :tag => "#{s.version}" }
    s.requires_arc = true
  
    s.ios.deployment_target = '10.0'
    s.default_subspec = 'All'
  
    s.subspec 'All' do |all|
      all.source_files = 'Sources/**/*.swift'
      all.ios.frameworks = 'AVFoundation', 'UIKit'
    end
  
    s.subspec 'CLKV' do |ss|
      ss.source_files = 'Sources/CLKV/**/*.swift'
      ss.ios.frameworks = 'UIKit'
    end
  
    s.subspec 'CLDB' do |ss|
      ss.source_files = 'Sources/CLDB/**/*.swift'
      ss.dependency "AFNetworking", "~> 3.2.1"
      ss.ios.frameworks = 'AVFoundation'
    end
  
  end
  
  