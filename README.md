# Quick Look Preview for Google Drive for Desktop

This is a simple macOS background app to preview Google Documents, Slides, and Sheets directly from Finder using Quick Look (i.e. pressing <kbd>Space</kbd> when a file is highlighted). A few things to note:

- Only works for files with public link sharing enabled
  - If anyone knows how to hijack Drive for Desktop's auth session to allow previews of private docs, lmk
- I recommend adding the `.app` file to your "Login Items," since the preview only works if the app is running.
- View only (no edit support)
- Only tested with Google Docs files (`.gdoc`) on macOS 13.1, but should work with other macOS versions and Google file types listed [here](https://github.com/lukeredmore/google-drive-ql-preview/blob/6eb044b40d1a20decb2638523a3c894bcfa75d5d/google-drive-ql-preview/Info.plist#L22-L26).