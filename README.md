# doorkeeper-mongodb extension

## Installation

doorkeeper-nobrainer provides doorkeeper support to NoBrainer ORM
To start using it, add to your Gemfile:

``` ruby
gem 'doorkeeper-nobrainer'
```

Run [doorkeeper’s installation generator]:

    rails generate doorkeeper:install

[doorkeeper’s installation generator]: https://github.com/doorkeeper-gem/doorkeeper#installation

This will install the doorkeeper initializer into
`config/initializers/doorkeeper.rb`.

Set the ORM configuration:

``` ruby
Doorkeeper.configure do
  orm :nobrainer
end
```

### NoBrainer indexes

`rake nobrainer:sync_indexes`

---
