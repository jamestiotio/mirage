Configure
  $ ./test.exe configure a b c 2> configure.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat configure.err
  * Is_file? config.ml -> true
  * Run_cmd 'head -1 config.ml' (ok)
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Write to test/context (26 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> true
  * Run_cmd_cli '_build/default/./config.exe configure a b c --dry-run --context
                 ./test/context' (ok)

Clean
  $ ./test.exe clean a b c 2> clean.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)
  $(dune clean)

  $ cat clean.err
  * Is_file? config.ml -> true
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe clean a b c --dry-run' (ok)
  * Get_var INSIDE_FUNCTORIA_TESTS -> <not set>
  * Run_cmd 'dune clean' (ok)
  * Ls ./ (10 entries)
  * Is_file? dune-project -> true
  * Read dune-project (47 bytes)
  * Rm dune-project (removed)
  * Rm test/context (no-op)
  * Is_file? dune -> true
  * Read dune (52 bytes)
  * Rm dune (removed)
  * Is_file? dune.build -> false
  * Rm dune.build (no-op)
  * Is_file? dune.config -> true
  * Read dune.config (137 bytes)
  * Rm dune.config (removed)

Query
  $ ./test.exe query a b c 2> query.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat query.err
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe query a b c --dry-run' (ok)

Describe
  $ ./test.exe describe a b c 2> describe.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat describe.err
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe describe a b c --dry-run' (ok)

Help
  $ ./test.exe help a b c 2> help.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat help.err
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe help a b c --dry-run' (ok)

Simple help
  $ ./test.exe help 2> simple-help.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat simple-help.err
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe help --dry-run' (ok)

Help configure
  $ ./test.exe help configure 2> configure.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat configure.err
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe help configure --dry-run' (ok)

Configure help
  $ ./test.exe configure help 2> configure-help.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat configure-help.err
  * Is_file? config.ml -> true
  * Run_cmd 'head -1 config.ml' (ok)
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Write to test/context (25 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> true
  * Run_cmd_cli '_build/default/./config.exe configure help --dry-run --context
                 ./test/context' (ok)

Help no config
  $ ./test.exe help --file=empty/config.ml --man-format=plain 2> help-no-config.err
  NAME
         test - The test application builder
  
  SYNOPSIS
         test [COMMAND] …
  
  DESCRIPTION
         The test application builder. It glues together a set of libraries and
         configuration (e.g. network and storage) into a standalone unikernel
         or UNIX binary.
  
         Use test help <command> for more information on a specific command.
  
  COMMANDS
         clean [OPTION]…
             Clean the files produced by test for a given application.
  
         configure [OPTION]…
             Configure a test application.
  
         describe [OPTION]…
             Describe a test application.
  
         help [--man-format=FMT] [OPTION]… [TOPIC]
             Display help about test commands.
  
         query [OPTION]… [INFO]
             Query information about the test application.
  
  COMMON OPTIONS
         --color=WHEN (absent=auto)
             Colorize the output. WHEN must be one of auto, always or never.
  
         --help[=FMT] (default=auto)
             Show this help in format FMT. The value FMT must be one of auto,
             pager, groff or plain. With auto, the format is pager or plain
             whenever the TERM env var is dumb or undefined.
  
         -q, --quiet
             Be quiet. Takes over -v and --verbosity.
  
         -v, --verbose
             Increase verbosity. Repeatable, but more than twice does not bring
             more.
  
         --verbosity=LEVEL (absent=warning)
             Be more or less verbose. LEVEL must be one of quiet, error,
             warning, info or debug. Takes over -v.
  
         --version
             Show version information.
  
  EXIT STATUS
         test exits with:
  
         0   on success.
  
         123 on indiscriminate errors reported on standard error.
  
         124 on command line parsing errors.
  
         125 on unexpected internal errors (bugs).
  
  $ cat help-no-config.err
  * Is_file? empty/config.ml -> false

Help no config with bad arguments
  $ ./test.exe help --file=empty/config.ml a b c 2> help-no-config-args.err

  $ cat help-no-config-args.err
  test: too many arguments, don't know what to do with 'b', 'c'
  Usage: test help [--man-format=FMT] [OPTION]… [TOPIC]
  Try 'test help --help' or 'test --help' for more information.
  * Is_file? empty/config.ml -> false
  configuration file empty/config.ml missing
  (exit 1)

Version configure
  $ ./test.exe configure --version a b c
  1.0~test

Ambiguous
  $ ./test.exe c a b c 2> ambiguous.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat ambiguous.err
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe c a b c --dry-run' (ok)

Default
  $ ./test.exe 2> default.err
  $(dune build ./config.exe --root . --workspace ./test/dune-workspace.config)

  $ cat default.err
  * Is_file? config.ml -> true
  * Mkdir test (created)
  * Is_file? test/dune-workspace.config -> false
  * Write to test/dune-workspace.config (65 bytes)
  * Is_file? dune-project -> false
  * Write to dune-project (47 bytes)
  * Is_file? dune.config -> false
  * Write to dune.config (137 bytes)
  * Is_file? dune -> false
  * Write to dune (52 bytes)
  * Run_cmd 'dune build ./config.exe --root . --workspace
             ./test/dune-workspace.config' (ok)
  * Is_file? test/context -> false
  * Run_cmd_cli '_build/default/./config.exe --dry-run' (ok)

Parsing error in global arguments
  $ ./test.exe -o
  test: unknown option '-o'.
        unknown option '--dry-run'.
  Usage: test [COMMAND] …
  Try 'test --help' for more information.
  [1]

Parsing error in global arguments, with subcommand
  $ ./test.exe configure -o
  test: option '-o' needs an argument
  Usage: test configure [OPTION]…
  Try 'test configure --help' or 'test --help' for more information.
  [1]
