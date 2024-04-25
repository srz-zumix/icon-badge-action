# icon-badge-action

Adds various badges to icon files based on user-defined inputs.

This action processes icons using [HazAT/badge](https://github.com/HazAT/badge)

## Supported runner

* Linux
* macOS

## Usage

```yaml
- uses: srz-zumix/icon-badge-action@v1
  with:
    glob: test/assets/*_shield.png
    shield: "icon--badge--action-${{ github.head_ref }}-blue"
```

If the runner you are running is Linux only, you can also use the docker-action version.

```yaml
- uses: srz-zumix/icon-badge-action/docker@v1
  with:
    glob: test/assets/*_shield.png
    shield: "icon--badge--action-${{ github.head_ref }}-blue"
```

## Inputs

### `glob`

Specifies the glob pattern for icon file paths. Default is `CURRENT_PATH/**/*.appiconset/*.{png,PNG}`.

### `dark`

Enables dark mode. Default is `false`.

### `grayscale`

Makes the icon grayscale. Default is `false`.

### `alpha_channel`

Keeps the alpha channel. Default is `false`.

### `alpha`

Adds an alpha badge. Default is `false`.

### `beta`

Adds a beta badge. Default is `false`.

### `shield`

Adds a shield static badge string. Default is an empty string.

### `shield_geometry`

Adds a shield static badge geometry. Default is an empty string.

### `shield_scale`

Adds a shield static badge scale. Default is an empty string.

### `shield_no_resize`

Disables resizing of the shield static badge. Default is `false`.
