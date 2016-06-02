#
# Be sure to run `pod lib lint FIDataFlowArchitecture.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FIDataFlowArchitectureNew"
  s.version          = "1.5.2"
  s.summary          = "A structure to build a data flow of application."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
Easy to create a clear architecture application with FIDataFlowArchitectureNew. I think you will gradually love it.
                       DESC

  s.homepage         = "https://github.com/congncif/FIDataFlowArchitectureNew"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = '[iF] Solution'
  s.author           = { "NGUYEN CHI CONG" => "congnc.if@gmail.com" }
  s.source           = { :git => "https://github.com/congncif/FIDataFlowArchitectureNew.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/congncif'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  #s.source_files = 'Pod/Classes/**/*'
  #s.resource_bundles = {
  #  'FIDataFlowArchitecture' => ['Pod/Assets/*.png']
  #}

  # s.public_header_files = 'Pod/Classes/**/*.h'

    s.frameworks = 'UIKit'
    s.dependency 'ReactiveCocoa'
    s.dependency 'JSONModel' , '~> 1.1'
    s.ios.vendored_frameworks  = 'Pod/FIDataFlowArchitectureNew.framework'

#   s.dependency 'AFNetworking', '~> 2.6'
#   s.dependency 'ISO8601', '~> 0.3'
#  s.dependency 'Typhoon', '~> 3.0'
end
