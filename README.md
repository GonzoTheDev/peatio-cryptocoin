# Peatio::CryptoCoin

Peatio Plugin to enable CryptoCoin coin.

## Usage in peatio


Add this line to your application's `Gemfile.plugin`:

```ruby
gem 'peatio-cryptocoin'
```

`Coin:` config/seeds/currencies.yml

```
- id:                     crypto
  name:                   CryptoCoin
  blockchain_key:         ~
  symbol:                 '₡'
  type:                   coin
  precision:              12
  base_factor:            1_000_000_000_000
  enabled:                true
  # Deposits with less amount are skipped during blockchain synchronization.
  # We advise to set value 10 times bigger than the network fee to prevent losses.
  min_deposit_amount:     0.1
  min_collection_amount:  0.1
  withdraw_limit_24h:     0.5
  withdraw_limit_72h:     1.2
  deposit_fee:            0
  withdraw_fee:           0
  options:                {}
```

`wallet:` config/seeds/wallet.yml

`deposit wallet:`
```cassandraql
  settings:
    # CryptoCoin gateway client settings.
    uri:           http://wallet_name:wallet_password@127.0.0.1:33333
    account_index: 0 # CryptoCoin Account Index
```


`hot wallet:`
```cassandraql
  settings:
    # Monero gateway client settings.
    uri:           http://wallet_name:wallet_password@127.0.0.1:33333
    account_index: 0 # CryptoCoin Account Index
    address_index: 1 # CryptoCoin Account Sub Address Index
```
## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GonzoTheDev/peatio-cryptocoin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Peatio::Monero project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/GonzoTheDev/peatio-cryptocoin/blob/master/CODE_OF_CONDUCT.md).
