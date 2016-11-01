# UseCase

Use Cases - POC

## Usage
`rake console`


## Ideas

- A UseCase understands `.call`.
- A UseCase has a series of steps.
- A Step can fail and __stop processing__.
- A Step receives _params_ from its predecessor.
- A step passes _params_ to its successor.


## Api

SaveUser.call
