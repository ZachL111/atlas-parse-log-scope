# atlas-parse-log-scope

`atlas-parse-log-scope` is a compact Ruby repository for parsers, centered on this goal: Implement a Ruby parsers project for log incremental indexing, using append-only fixtures and checkpoint recovery checks.

## Why It Exists

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how token drift and label quality should influence a review result.

## Atlas Parse Log Scope Review Notes

`stale` and `recovery` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Features

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/atlas-parse-log-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `token drift` and `error locality`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Ruby code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `stale` is the high score at 248; `recovery` is the low score at 116.

## Limitations And Roadmap

The fixture set is small enough to audit by hand. The next useful expansion is malformed input coverage, not extra surface area.
