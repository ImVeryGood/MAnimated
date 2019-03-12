require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
Pod::Spec.new do |s|
  s.name         = "RNMintCache"
  s.version      = package['version']
  s.summary      = "RN清除缓存"
  s.description  = package['description']
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "8.0"
  s.source       = { :git => "http://git.xinbangfintech.com/mobile/rn-plugin.git", :tag => s.version }
  s.source_files  = "ios/RNMintCache/*.{h,m}"

  s.dependency "React"
  #s.dependency "others"

end


