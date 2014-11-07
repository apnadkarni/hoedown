# Tcl extension for the hoedown library

The Tcl `hoedown` extension provides a Tcl script-level interface
to the `hoedown` C library for processing text in Markdown format.

## Loading the extension

The command

    package require hoedown

will load the hoedown package. All commands are placed in the `hoedown`
namespace.

## Commands

The extension has a single command `hoedown::render` which takes
Markdown text and returns formatted HTML. The command syntax is

    hoedown::render ?options? MARKDOWNTEXT

### Options

The following options are supported

#### `-escapehtml`

If specified, any inline HTML in the markdown text is escaped.

#### `-skiphtml`

If specified, any inline HTML in the markdown text is completely excluded
from the output.

#### `-extensions`

Enables the use of various extensions to Markdown. See the hoedown
library documentation for details about the extensions.

## Building the extension

Building the extension requires the `critcl` Tcl package to be present.
Then the following shell commands in the `tcl` directory should build 
the extension.

    tclsh build.tcl -target TARGET

where `TARGET` is one of the platforms supported by `critcl`. The built
extension is placed under the `tcl/build` directory.
