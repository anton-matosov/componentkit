Pod::Spec.new do |s|
  s.name = 'ComponentKit'
  s.version = '0.20.master'
  s.license = 'BSD'
  s.summary = 'A React-inspired view framework for iOS'
  s.homepage = 'https://componentkit.org'
  s.social_media_url = 'https://twitter.com/componentkit'
  s.authors = 'adamjernst@fb.com'
  s.source = { :git => 'https://github.com/anton-matosov/ComponentKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.1'
  s.requires_arc = true

  s.default_subspec = 'Main'
  s.subspec 'Main' do |ss|
    ss.source_files = 'ComponentKit/**/*', 'ComponentTextKit/**/*'
    ss.frameworks = 'UIKit', 'CoreText'
    ss.library = 'c++'
    ss.xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++14',
      'CLANG_CXX_LIBRARY' => 'libc++',
    }
    ss.dependency 'Yoga', '~> 1.6.0' 
  end

  s.subspec 'Test' do |ss|
    ss.dependency 'OCMock', '~> 3.4'
    ss.dependency 'FBSnapshotTestCase', '~> 2.1.4'
  end
end
