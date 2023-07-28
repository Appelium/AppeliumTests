Pod::Spec.new do |s|  
    s.name             		= 'AppeliumTestsKit'
	s.version				= '4.1.3'
    s.summary          		= 'UITests companion to be used together with Appelium services. Learn more at https://www.appelium.com'
    s.homepage         		= 'https://www.appelium.com/'
    s.cocoapods_version     = '>= 1.10.0'

    s.author           		= { 'Appelium' => 'support@appelium.com' }
    s.license      			= { :type => 'Commercial', :file => 'LICENSE.md' }

    s.ios.deployment_target = '13.0'
    s.tvos.deployment_target = '13.0'
    s.swift_versions        = ['5.6']
    s.source       			= { :http => "https://github.com/Appelium/AppeliumTests/releases/download/#{s.version}/AppeliumTestsKit.xcframework.zip" }
    s.library      			= 'z'
    s.frameworks   			= 'AVFoundation', 'CoreGraphics', 'SystemConfiguration', 'UIKit', 'CoreVideo', 'XCTest'
    s.xcconfig    			= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AppeliumTestsKit/"' }
    s.requires_arc 			= true
    s.vendored_frameworks	= 'AppeliumTestsKit.xcframework'
end  
