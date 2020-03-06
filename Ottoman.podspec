Pod::Spec.new do |s|
  s.name             = 'Ottoman'
  s.version          = '1.1.0'
  s.summary          = 'Strongly typed Swift wrapper around XCTest / XCUI, enabling you to write BDD-style automation tests, without writing much code at all.'
  s.homepage         = 'https://github.com/arvindravi/Ottoman'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'zacoid55' => 'zac@theappbusiness.com',
                         'KaneCheshire' => 'kane.cheshire@theappbusiness.com',
                         'theblixguy' => 'suyash.srijan@theappbuisness.com' }
  s.source           = { :git => 'https://github.com/arvindravi/Ottoman.git', :tag => s.version.to_s, :branch => 'feature/ttk-rebrand-introducing-ottoman' }
  s.ios.deployment_target = '10.0'
  s.swift_version    = '5.0'
  s.source_files = 'Ottoman/Classes/**/*'
  s.frameworks = 'XCTest'

  s.subspec 'Biometrics' do |b|
    b.source_files = 'Ottoman/Classes/Biometrics/**/*'
  end
  s.subspec 'BDD' do |b|
    b.source_files = 'Ottoman/Classes/BDD/**/*'
  end
  
  s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO' }
end
