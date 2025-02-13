Feature: CLI for parse
  In order to process LoAR
  As a CLI
  I need to be able to set

  Scenario: No file specified, but --dry-run is.
    When I run `prec parse --dry-run`
    Then the output should contain "Input is the standard input"
    Then the output should contain "Output is the standard output"

