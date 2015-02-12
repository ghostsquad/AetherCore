# Originally taken from: http://stackoverflow.com/questions/1499466/powershell-equivalent-of-linq-any
# But with some enhancements if the user uses "-InputObject"

<#
.SYNOPSIS
   Tests if any object in an array matches the expression

.EXAMPLE
    @( "red", "blue" ) | Where-Any { $_ -eq "blue" } | Write-Host
#>
function Where-Any {
    [CmdletBinding()]
    param(
        [Parameter(ValueFromPipeline = $True)]
        [object[]]$InputObject,

        [Parameter(Position=0)]
        [Scriptblock]$Condition
    )

    begin {
        [bool]$isMatch = $False
    }

    process {
        foreach($item in $InputObject) {
            write-debug "testing $item"
            $_ = $item
            if (& $Condition $item) {
                [bool]$isMatch = $true
                break
            }
        }
    }

    end {
        Write-Output $isMatch
    }
}