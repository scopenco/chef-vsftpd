require_relative 'spec_helper'

describe 'vsftpd' do
  it 'is listening on port 21' do
    expect(port(21)).to be_listening
  end

  it 'is a running service of vsftpd' do
    expect(service('vsftpd')).to be_running
    expect(service('vsftpd')).to be_enabled
  end
end
