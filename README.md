# pack-action
This action uses the [Pack CLI](https://github.com/buildpacks/pack) (a product of the [Cloud Native Buildpacks project](https://buildpacks.io)) to build applications and associated artifacts. For more about pack, see the [pack docs](https://buildpacks.io/docs)

## Usage

```yaml
on: push

jobs:
  test:
    runs-on: linux
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Pack help
        uses: dfreilich/pack-chocolatey@v1
        with:
          args: help
```

## Inputs
### `args`
**Required** The arguments to pass into pack. A list of available commands can be found [here](https://buildpacks.io/docs/reference/pack/pack/).

## How can I help ?
Any contribution is welcome! The most basic way to show your support is to star :star2: the project, or to raise issues :speech_balloon:.

## License
Apache. See [LICENSE](LICENSE) for more details.