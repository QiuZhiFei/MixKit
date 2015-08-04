Pod::Spec.new do |s|

  s.name               = 'MixKit'
  s.version            = '1.0.0'
  s.summary            = 'MixKit for iOS'
  s.homepage           = 'https://github.com/QiuZhiFei/MixKit'
  s.platform           = :ios, '7.0'
  s.author             = { 'Douban iOS Developers' => 'ios-dev@douban.com' }
  s.source       = {
      :git => 'https://github.com/QiuZhiFei/MixKit.git',
      :tag => s.version.to_s
  }
  s.source_files       = 'MixKit/*.{h,m,swift}'
  s.requires_arc       = true

end
