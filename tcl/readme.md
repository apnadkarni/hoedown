# Tcl extension for the hoedown library

## Loading the extension

The command

    package require hoedown

will load the hoedown package. All commands are placed in the `hoedown`
namespace.

## Commands

The extension has a single command `hoedown::render` which takes
Markdown text and returns formatted HTML. The command syntax is

    hoedown::render ?options? MARKDOWNTEXT

The following options are supported

### `-escapehtml`

If specified, any inline HTML in the markdown text is escaped.

### `-skiphtml`

If specified, any inline HTML in the markdown text is completely excluded
from the output.

### `-extensions`

Enables the use of various extensions to Markdown. See the hoedown
library documentation for details about the extensions.

