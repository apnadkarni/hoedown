package require critcl 3.1
package require critcl::app
package require platform

set buildarea [file normalize [file join [pwd] build]]

# Note argv will override -target, -pkg and -libdir options if specified
critcl::app::main [list -pkg -libdir [file join $buildarea lib] -includedir [file join $buildarea include] -cache [file join $buildarea cache] {*}$argv hoedown [file join [file dirname [info script]] hoedown.critcl] ]

