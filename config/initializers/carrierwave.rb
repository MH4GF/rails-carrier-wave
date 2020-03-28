if ENV['AWS_REGION'] && ENV['FOG_DIRECTORY']
  CarrierWave.configure do |config|
    config.fog_credentials = {
        provider: 'AWS',
        use_iam_profile: true,
        region: ENV['AWS_REGION'],
    }
    config.fog_directory = ENV['FOG_DIRECTORY']
    config.cache_storage = :fog
  end
end
