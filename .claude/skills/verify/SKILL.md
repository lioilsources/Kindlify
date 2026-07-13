---
name: verify
description: Drive the Kindlify macOS app end-to-end to verify reader/summary changes at the real UI surface.
---

# Verifying Kindlify on macOS

No Accessibility/Screen Recording permission is granted to the shell, so
AppleScript clicks and `screencapture` do NOT work. Drive the real app with
the integration driver instead:

```bash
flutter drive --driver=test_driver/integration_test.dart \
  --target=integration_test/verify_flow_test.dart -d macos
```

- Runs the real app bundle against the real on-disk DB:
  `~/Library/Containers/com.ol1n.kindlify/Data/Documents/kindlify.sqlite`
  (inspect with `sqlite3` before/after to check imports). An older container
  `cz.kindlify.kindlify` exists from a previous bundle id — ignore it.
- `integration_test/verify_flow_test.dart` is the existing flow harness
  (library → reader → breadcrumb × word-cloud intents → node:// jumps →
  Analects import). Extend it for new flows.

## Gotchas that cost time

- **Never use `pumpAndSettle`** — spinners animate forever; use the
  `pumpUntil(tester, condition)` helper in the harness.
- Two `Markdown` widgets coexist during `AnimatedSwitcher` transitions —
  read the **last** one.
- Word-cloud taps: use `find.widgetWithText(WordBubble, term)` and wait for
  it to exist (`tapBubble` helper) — the cloud briefly rebuilds through a
  spinner on every state change, and a bare text finder can hit the AppBar
  filter-chip label, which has no tap handler.
- Chapter chips live in a lazy horizontal ListView; off-screen chips are
  unreliable to scroll+tap — prefer entering chapters via `node://` links in
  the summary (`tapSummaryLink` helper).
- `binding.takeScreenshot` is not implemented on macOS
  (MissingPluginException) — evidence is `debugPrint` STEP lines and
  Markdown `data` assertions.
- If a `tester.tap` throws mid-run, the drive can hang ~1h before reporting;
  always guard taps with an existence `pumpUntil` first.
