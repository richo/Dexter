ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  setup do
    REDIS.flushall
  end

  def mock_url
    @mock_url ||= "http://google.com"
  end

  def mock_file
    File.open(Rails.root.join("test", "fixtures", "farnsworth.png"))
  end

end

class ActionController::TestCase
  def mock_file
    fixture_file_upload(Rails.root.join('test', 'fixtures', 'farnsworth.png'))
  end
end
