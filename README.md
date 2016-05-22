# ExrmProtocolRepro

Repro for https://github.com/bitwalker/exrm/issues/356

To reproduce:

```bash
git checkout 0.0.1
mix deps.get
mix release
git checkout 0.0.2
mix release
rel/exrm_protocol_repro/bin/exrm_protocol_repro console

iex> Proto.go %Bar{}
```

Expected:

To see "In Bar Proto"

Actual:

```
** (Protocol.UndefinedError) protocol Proto not implemented for %Bar{x: nil}
    (exrm_protocol_repro) lib/exrm_protocol_repro.ex:4: Proto.impl_for!/1
    (exrm_protocol_repro) lib/exrm_protocol_repro.ex:5: Proto.go/1
```
