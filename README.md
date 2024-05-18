# Austral System and FileSystem

Bindings for `system`, and some of the `fopen` family of functions from the
C standard library for the [austral programming language](https://austral-lang.org)

## Implemented functionality

#### System

This module implements the calling of system functions, and requires
an associated capability also handled in the module.

#### FileSystem

This module handles capabilities used to interact with the file system.

#### FileSystem.File

This module uses the capability from FileSystem and allows file operations,
currently opening and closing files as well as read, write, seek, and tell
operations.
