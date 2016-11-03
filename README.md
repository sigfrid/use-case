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

## Steps chain

Steps may be `symbols` or `classes`.

A symbol is resolved as the instance method defined in the use case itself.
A Class is resolved as the `call` class method defined in the class.

## Api

SaveUser.call({}).on(
  success: ->  (user) do
    puts user
  end,

  failure: -> (error) do
    puts error
  end
)
