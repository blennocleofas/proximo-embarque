if defined?(Rack::Timeout)
  Rack::Timeout.timeout = Integer(12)
end
