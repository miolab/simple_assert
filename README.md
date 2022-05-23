# SimpleAssert

![example workflow](https://github.com/miolab/simple_assert/actions/workflows/ci.yml/badge.svg)
[![hex.pm version](https://img.shields.io/hexpm/v/simple_assert.svg)](https://hex.pm/packages/simple_assert)
[![hex.pm](https://img.shields.io/hexpm/l/simple_assert.svg)](https://github.com/miolab/simple_assert/blob/master/LICENSE)

SimpleAssert asserts the given parameter is `true` or `false`.

In future, we will implement the type checking features.

## versions

```
% elixir -v
Erlang/OTP 24 [erts-12.1.5] [source] [64-bit] [smp:8:8] [ds:8:8:10] [async-threads:1] [jit]

Elixir 1.12.3 (compiled with Erlang/OTP 24)
```

## Installation

In order to use `SimpleAssert`, you will need to install Elixir.

Then create an Elixir project via the mix build tool:

```
% mix new my_app
```

Then the package can be installed
by adding `simple_assert` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:simple_assert, "~> 0.2.0"}
  ]
end
```

## More information

The docs can
be found at [https://hexdocs.pm/simple_assert](https://hexdocs.pm/simple_assert).

## LICENSE

Copyright 2022 Ryotaro Imahashi

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
