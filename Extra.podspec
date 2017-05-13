Pod::Spec.new do |s|
  s.name             = 'Extra'
  s.version          = '0.5.0'
  s.summary          = 'Usefull and lightfull extensions in Swift 3 for your Cocoa Touch projects.'

  s.homepage         = 'https://github.com/smartnsoft/Extra'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Smart&Soft' => 'contact@smartnsoft.com' }
  s.source           = { :git => 'https://github.com/smartnsoft/Extra.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.ios.frameworks        = 'UIKit', 'QuartzCore', 'Foundation'

  s.source_files = 'Extra/Classes/Extra/**/*.{swift}'

  s.subspec 'UIKit' do |sp|
    sp.source_files = 'Extra/Classes/Extra/**/*.{swift}','Extra/Classes/UIKit/**/*.{swift}'
  end

  s.subspec 'Foundation' do |sp|
    sp.source_files = 'Extra/Classes/Foundation/**/*.{swift}'
  end

  s.subspec 'Realm' do |sp|
    sp.source_files = 'Extra/Classes/Extra/**/*.{swift}','Extra/Classes/Realm/**/*.{swift}'
    sp.dependency 'RealmSwift', '~> 2.7'
  end
end
