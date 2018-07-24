module Helpers
  def help
    :available
  end

  def mock_get(url, response)
    response_mock = double
    allow(response_mock).to receive(:body).and_return(response)

    mock = double
    allow(mock).to receive(:execute).with(hash_including(:url => url, :method => :get)).and_return(response_mock)

    return mock
  end
end
