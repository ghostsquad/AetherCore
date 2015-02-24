$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\..\TestCommon.ps1"

Describe "Assert-ScriptBlockParametersEqual" {
    It 'Given X is Null, expect exception' {
        $y = {param($a)}

        { Assert-ScriptBlockParametersEqual $null $y } | Should Throw 'X or Y is Null'
    }

    It 'Given Y is Null, expect exception' {
        $x = {param($a)}

        { Assert-ScriptBlockParametersEqual $x $null } | Should Throw 'X or Y is Null'
    }

    It 'Given X & Y are Null, expect exception' {
        { Assert-ScriptBlockParametersEqual $null $null } | Should Throw 'X or Y is Null'
    }

    It 'Given X & Y with no param types, expect no exception' {
        $x = {param($a)}
        $y = {param($a)}

        { Assert-ScriptBlockParametersEqual $x $y } | Should Not Throw
    }

    It 'Given X with no param type and Y with specific type, expect exception' {
        $x = {param($a)}
        $y = {param([int]$a)}

        { Assert-ScriptBlockParametersEqual $x $y } | Should Throw 'Param type mismatch. x: System.Object y: System.Int32'
    }

    It 'Given X with same params and types as Y, expect no exception' {
        $x = {param([int]$a)}
        $y = {param([int]$a)}

        { Assert-ScriptBlockParametersEqual $x $y } | Should Not Throw
    }

    It 'Given X with different param types Y, expect exception' {
        $x = {param([int]$a)}
        $y = {param([string]$a)}

        { Assert-ScriptBlockParametersEqual $x $y } | Should Throw 'Param type mismatch. x: System.Int32 y: System.String'
    }

    It 'Given X with more params than Y, expect no exception' {
        $x = {param([int]$a, [string]$b)}
        $y = {param([int]$a)}

        { Assert-ScriptBlockParametersEqual $x $y } | Should Not Throw
    }

    It 'Given X with fewer params than Y, expect no exception' {
        $x = {param([int]$a)}
        $y = {param([int]$a, [string]$b)}

        { Assert-ScriptBlockParametersEqual $x $y } | Should Not Throw
    }

    It 'Given X with more params than Y and Strict, expect exception' {
        $x = {param([int]$a, [string]$b)}
        $y = {param([int]$a)}

        { Assert-ScriptBlockParametersEqual $x $y -Strict } | Should Throw 'Param count mismatch. x: 2 y: 1'
    }

    It 'Given X with fewer params than Y and Strict, expect no exception' {
        $x = {param([int]$a)}
        $y = {param([int]$a, [string]$b)}

        { Assert-ScriptBlockParametersEqual $x $y -Strict } | Should Throw 'Param count mismatch. x: 1 y: 2'
    }
}