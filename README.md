# ttyd

**ttyd** is a simple command-line tool for sharing terminal over the web.

tsl0922.github.io/ttyd

<img src="https://i.ibb.co/Sw6HHjC/Screenshot-20240925-180111-Brave.jpg" alt="ttyd logo" width="80%" height="auto">

## How to use this Makejail

```
appjail makejail \
    -j ttyd \
    -f gh+AppJail-makejails/ttyd \
    -o virtualnet=":<random> default" \
    -o nat \
    -o expose=7681
appjail start ttyd
```

### Arguments (stage: build):

* `ttyd_tag` (default: `13.5`): See [#tags](#tags).
* `ttyd_ajspec` (default: `gh+AppJail-makejails/ttyd`): Entry point where the `appjail-ajspec(5)` file is located.

### Arguments (stage: start):

* `ttyd_command` (default: `sh`): Command to execute.

### Check current status

The custom stage `ttyd_status` can be used to run `top(1)` to check the status of Flatnotes.

```sh
appjail run -s ttyd_status ttyd
```

### Log

To view the log generated by the application, run the custom stage `ttyd_log`.

```sh
appjail run -s ttyd_log ttyd
```

## Tags

| Tag    | Arch    | Version        | Type   |
| ------ | ------- | -------------- | ------ |
| `13.5` | `amd64` | `13.5-RELEASE` | `thin` |
| `14.3` | `amd64` | `14.3-RELEASE` | `thin` |
