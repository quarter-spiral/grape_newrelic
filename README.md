# GrapeNewrelic

Grape Middleware to instrument APIs for Newrelic.

This uses the approach and code from http://artsy.github.com/blog/2012/11/29/measuring-performance-in-grape-apis-with-new-relic/

## Usage

Add ``grape_newrelic`` to your Gemfile.

Enable the instrumenting like this in your Grape API:

```ruby
class API << Grape::API
  use GrapeNewrelic::Instrumenter
  …
end
```