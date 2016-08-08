Rails.configuration.stripe = {

  :publishable_key => "#{ENV['sk_test_Y3b0pQYmyCo2soxOcPd9ezcK']}",

  :secret_key => "#{ENV['pk_test_p1uZGyPRnavJzkzqoVsBNxRe']}"

}

Stripe.api_key = Rails.configuration.stripe[:secret_key]