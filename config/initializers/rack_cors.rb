Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://casba-react-front.herokuapp.com'
      resource '*',
          headers: :any,
          methods: [:get, :post, :patch, :put, :delete, :options],
          expose: ['Authorization']
    end
  end