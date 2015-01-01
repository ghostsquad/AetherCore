$ErrorActionPrefence = "Stop"
Set-StrictMode -Version Latest

$here = Split-Path -Parent $MyInvocation.MyCommand.Path

. $here\functions\Add-TypeAccelerator.ps1
. $here\functions\Assert-ScriptBlockParametersEqual.ps1
. $here\functions\Attach-PSNote.ps1
. $here\functions\Attach-PSProperty.ps1
. $here\functions\Attach-PSScriptMethod.ps1
. $here\functions\ConvertTo-HashTable.ps1
. $here\functions\Create-DirectoryIfNotExists.ps1
. $here\functions\Get-Delegate.ps1
. $here\functions\Get-DelegateType.ps1
. $here\functions\Guard-ArgumentNotNull.ps1
. $here\functions\Guard-ArgumentNotNullOrEmpty.ps1
. $here\functions\Guard-ArgumentValid.ps1
. $here\functions\Invoke-Generic.ps1
. $here\functions\Invoke-Using.ps1
. $here\functions\New-Closure.ps1
. $here\functions\New-DynamicModuleBuilder.ps1
. $here\functions\New-Enum.ps1
. $here\functions\New-GenericObject.ps1
. $here\functions\New-Lazy.ps1
. $here\functions\New-PSCredential.ps1
. $here\functions\New-PSObject.ps1
. $here\functions\PSCustomObjectExtensions.ps1

Export-ModuleMember -Function *-*