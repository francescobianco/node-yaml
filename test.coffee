test = require "ava"

{readSync} = require "."

test "Should work with relative paths", (t) ->
  t.deepEqual readSync("test/file"),
    unicode: 'Sosa did fine.☺'
    control: '\b1998\t1999\t2000\n'
    'hex esc': '\r\n is \r\n',
    single: '"Howdy!" he cried.'
    quoted: ' # Not a \'comment\'.'
    'tie-fighter': '|\\-*-/|'
