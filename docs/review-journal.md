# Review Journal

I treated `atlas-parse-log-scope` as a project where the smallest useful behavior should still be inspectable.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its parsers focus without claiming live deployment or external usage.

## Cases

- `baseline`: `token drift`, score 120, lane `watch`
- `stress`: `grammar width`, score 146, lane `ship`
- `edge`: `label quality`, score 136, lane `watch`
- `recovery`: `error locality`, score 116, lane `watch`
- `stale`: `token drift`, score 248, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
