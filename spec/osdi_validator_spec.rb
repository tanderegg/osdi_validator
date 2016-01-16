require 'spec_helper'

describe OsdiValidator do
  it 'has a version number' do
    expect(OsdiValidator::VERSION).not_to be nil
  end

  it 'can connect to an api' do
    validator = OSDIValidator::Validator.new("http://opensupporter.org/api/", "apikey")
    expect(validator.validate())
  end
end
