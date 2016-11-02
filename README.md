# UseCase

Use Cases - POC

## Usage
`rake console`


## Ideas

- A UseCase understands `.call`.
- A UseCase has a series of _independent_ steps.
- A Step can fail and __stop processing__.
- A Step receives _params_ from its predecessor.
- A step passes _params_ to its successor.
- A step returns either a `Success` or a `Failure`.

## Api

SaveUser.call(params).on(
  success: ->  (user) do
    puts user
  end,

  failure: -> (error) do
    p error
  end
)
