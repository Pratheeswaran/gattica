module Gattica
  module Settings

    USE_SSL = true
    SSL_PORT = 443
    NON_SSL_PORT = 80
    NO_VERIFY_SSL_MODE = OpenSSL::SSL::VERIFY_NONE
    VERIFY_SSL_MODE = OpenSSL::SSL::VERIFY_PEER

    TIMEOUT = 100

    DEFAULT_ARGS = {
        start_date: nil,
        end_date: nil,
        dimensions: [],
        metrics: [],
        filters: [],
        sort: [],
        sampling_level: 'HIGHER_PRECISION',
        quota_user: nil,
        max_results: 10000,
    }

    DEFAULT_OPTIONS = {
        email: nil,        # eg: 'email@gmail.com'
        password: nil,     # eg: '$up3r_$ekret'
        token: nil,
        api_key: nil,
        profile_id: nil,
        debug: false,
        gzip: false,
        headers: {},
        logger: Logger.new(STDOUT),
        verify_ssl: true,
        ssl_ca_path: nil,
        proxy: nil,        # eg: proxy => { host: '127.0.0.1', port: 3128 }
        http_proxy: {}
    }

    FILTER_METRIC_OPERATORS = %w{ == != > < >= <= }
    FILTER_DIMENSION_OPERATORS = %w{ == != =~ !~ =@ ~@ }

  end
end
