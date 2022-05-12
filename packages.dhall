let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.15.0-20220509/packages.dhall sha256:d4c1a03606efdbb7bb7745a9d3aa908cb1ba5611921373659a4c7bf1c41c106c

let additions =
  { dom-simple =
    { dependencies =
      [ "arrays"
      , "console"
      , "effect"
      , "ffi-simple"
      , "functions"
      , "nullable"
      , "prelude"
      , "spec"
      , "spec-mocha"
      , "unsafe-coerce"
      ]
    , repo = "https://github.com/poorscript/purescript-dom-simple"
    , version = "v0.2.7"
    }
  , ffi-simple =
    { dependencies =
      [ "prelude"
      , "effect"
      , "maybe"
      , "functions"
      , "nullable"
      , "unsafe-coerce"
      ]
    , repo = "https://github.com/poorscript/purescript-ffi-simple"
    , version = "v0.2.10"
    }
  }

in  (upstream // additions)
