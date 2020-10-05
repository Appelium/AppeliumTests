Pod::Spec.new do |s|  
    s.name             		= 'AppeliumTests'
	s.version				= '2.2.2'
    s.summary          		= 'UITests companion to be used together with Appelium services. Learn more at https://www.appelium.com'
    s.homepage         		= 'https://www.appelium.com/'

    s.author           		= { 'Appelium' => 'support@appelium.com' }
    s.license      			= { :type => 'Commercial', :file => 'LICENSE.md' }

    s.platform     			= :ios, '10.0'
    s.source       			= { :http => "https://github.com/Appelium/AppeliumTests/releases/download/#{s.version}/AppeliumTests.framework.zip" }
    s.library      			= 'z'
    s.frameworks   			= 'AVFoundation', 'CoreGraphics', 'SystemConfiguration', 'UIKit', 'CoreVideo', 'XCTest'
    s.xcconfig    			= { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/AppeliumTests/"' }
    s.requires_arc 			= true
    s.vendored_frameworks	= 'AppeliumTests.framework'
end  
