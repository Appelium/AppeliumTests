Pod::Spec.new do |s|
    s.name             		= 'AppeliumTestsKit'
	s.version				= '4.12.0'
    s.summary          		= 'UITests companion to be used together with Appelium services. Learn more at https://www.appelium.com'
    s.homepage         		= 'https://www.appelium.com/'
    s.cocoapods_version     = '>= 1.16.0'

    s.author           		= { 'Appelium' => 'support@appelium.com' }
    s.license      			= { :type => 'Commercial', :file => 'LICENSE.md' }

    s.ios.deployment_target = '15.0'
    s.tvos.deployment_target = '15.0'
    s.swift_versions        = ['5.10']
    s.source       			= { :http => "https://api.appelium.com/files/public/sdks/AppeliumTestsKit/#{s.version}.zip" }
    s.library      			= 'z'
    s.frameworks   			= 'AVFoundation', 'CoreGraphics', 'SystemConfiguration', 'UIKit', 'CoreVideo', 'XCTest'
    s.xcconfig    			= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AppeliumTestsKit/"' }
    s.requires_arc 			= true
    s.vendored_frameworks	= 'AppeliumTestsKit.xcframework'
    s.xcconfig 				= { 'EXCLUDED_ARCHS' => 'x86_64' }
end
