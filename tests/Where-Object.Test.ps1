$here = Split-Path -Parent $MyInvocation.MyCommand.Path
. "$here\..\TestCommon.ps1"

Describe 'Where-Any' {
    Context 'using $_' {
        It 'When piped objects, given 1-10, condition $_ > 5, returns true' {
            $result = @(1..10) | Where-Any {$_ -gt 5}
            $result | Should Be $true
        }

        It 'When piped objects, given 1-4, condition $_ > 5, returns true' {
            $result = @(1..4) | Where-Any {$_ -gt 5}
            $result | Should Be $false
        }

        It 'When using -InputObject, given 1-10, condition $_ > 5, returns true' {
            $result = Where-Any -InputObject @(1..10) {$_ -gt 5}
            $result | Should Be $true
        }

        It 'When using -InputObject, given 1-4, condition $_ > 5, returns true' {
            $result = Where-Any -InputObject @(1..4) {$_ -gt 5}
            $result | Should Be $false
        }
    }

    Context 'using $args[0]' {
        It 'When piped objects, given 1-10, condition $_ > 5, returns true' {
            $result = @(1..10) | Where-Any {$args[0] -gt 5}
            $result | Should Be $true
        }

        It 'When piped objects, given 1-4, condition $_ > 5, returns true' {
            $result = @(1..4) | Where-Any {$args[0] -gt 5}
            $result | Should Be $false
        }

        It 'When using -InputObject, given 1-10, condition $_ > 5, returns true' {
            $result = Where-Any -InputObject @(1..10) {$args[0] -gt 5}
            $result | Should Be $true
        }

        It 'When using -InputObject, given 1-4, condition $_ > 5, returns true' {
            $result = Where-Any -InputObject @(1..4) {$args[0] -gt 5}
            $result | Should Be $false
        }
    }
}



