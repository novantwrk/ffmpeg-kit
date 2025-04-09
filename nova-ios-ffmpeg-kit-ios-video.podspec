require "json"

Pod::Spec.new do |s|
  s.name         = "nova-ios-ffmpeg-kit-ios-video" # Match your file name
  s.version      = "6.0.3"
  s.summary      = "FFmpeg Kit iOS Https Shared Framework"
  s.description  = "Includes FFmpeg with gmp and gnutls libraries enabled."
  s.homepage     = "https://github.com/novantwrk/ffmpeg-kit"
  s.license      = { :type => "LGPL-3.0", :text => "Licensed under the LGPL-3.0" }
  s.authors      = "NOVA"


  s.source = {
    :http => "https://d201dxmsht1mhv.cloudfront.net/bundle-apple-xcframework-ios.zip"
  }

  s.platform          = :ios
  s.ios.deployment_target = "15.1"
  s.requires_arc      = true
  s.static_framework  = true

  s.libraries = [
    "z",
    "bz2",
    "c++",
    "iconv"
  ]

  s.frameworks = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]

  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }
  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }

s.vendored_frameworks = [
  "bundle-apple-xcframework-ios/ffmpegkit.xcframework",
  "bundle-apple-xcframework-ios/libavcodec.xcframework",
  "bundle-apple-xcframework-ios/libavdevice.xcframework",
  "bundle-apple-xcframework-ios/libavfilter.xcframework",
  "bundle-apple-xcframework-ios/libavformat.xcframework",
  "bundle-apple-xcframework-ios/libavutil.xcframework",
  "bundle-apple-xcframework-ios/libswresample.xcframework",
  "bundle-apple-xcframework-ios/libswscale.xcframework",
]

end