{testCase} = require "../helper"

describe "[TS] function", ->
  testCase """
    -> has types
    ---
    const x = (a: number, b: number) : number ->
      return a + b
    ---
    const x = function(a: number, b: number) : number {
      return a + b;
    };
  """

  testCase """
    'function' has types
    ---
    function add(a: number, b: number) : number
      return a + b
    ---
    function add(a: number, b: number) : number {
      return a + b;
    };
  """

  testCase """
    optional parameter
    ---
    const x = (a: number, b?: number) : number ->
      return a + b
    ---
    const x = function(a: number, b?: number) : number {
      return a + b;
    };
  """

  testCase """
    asserts
    ---
    assert = (value: unknown): asserts value ->
      return !!value
    ---
    assert = function(value: unknown): asserts value {
      return !!value;
    };
  """

  testCase """
    type predicate
    ---
    isCat = (animal: Cat | Dog): animal is Cat ->
      return typeof animal.numberOfLives === 'number'
    ---
    isCat = function(animal: Cat | Dog): animal is Cat {
      return typeof animal.numberOfLives === 'number';
    };
  """

  testCase """
    async function type
    ---
    async function() : X {
      return "x"
    }
    ---
    async function() : X {
      return "x";
    };
  """

  testCase """
    async generator function type
    ---
    async function* () : X {
      return "x"
    }
    ---
    async function* () : X {
      return "x";
    };
  """

  testCase """
    generator function type
    ---
    function* () : X {
      return "x"
    }
    ---
    function* () : X {
      return "x";
    };
  """
