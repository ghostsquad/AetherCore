<#############################################################################
The GravityPS module is a core framework for Powershell, enhancing
various idioms, and streamlining common, repetitive code.

Copyright (c) 2014 Wes McNamee

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
#############################################################################>

@{
      ModuleToProcess = 'GravityPS.psm1'

        ModuleVersion = '0.1.3'

                 GUID = 'E3AE1C95-D0D6-442F-9165-8654DC7A2055'

               Author = 'Weston McNamee'

          CompanyName = 'GhostSquad'

            Copyright = 'Copyright 2014 Weston McNamee'

          Description = 'The GravityPS module is a core framework for Powershell, enhancing various idioms, and streamlining common, repetitive code.'

    PowerShellVersion = '3.0'

         NestedModules = @(
                        'PSCX'
                        )

      FunctionsToExport = @(
                        'Add-TypeAccelerator'
                        'Assert-ScriptBlockParametersEqual'
                        'Attach-PSNote'
                        'Attach-PSProperty'
                        'Attach-PSScriptMethod'
                        'ConvertTo-HashTable'
                        'Create-DirectoryIfNotExists'
                        'Get-CurrentFunctionName'
                        'Get-Delegate'
                        'Get-DelegateType'
                        'Guard-ArgumentNotNull'
                        'Guard-ArgumentNotNullOrEmpty'
                        'Guard-ArgumentValid'
                        'Guard-DirectoryExists'
                        'Guard-FileExists'
                        'Invoke-Generic'
                        'Invoke-Using'
                        'New-Closure'
                        'New-DynamicModuleBuilder'
                        'New-Enum'
                        'New-GenericObject'
                        'New-Lazy'
                        'New-PSCredential'
                        'New-PSObject'
                        'New-PSObjectEqualityComparer'
                        'Where-Any'
                        )

             FileList = @(
                        'LICENSE'
                        'GravityPS.psd1'
                        'GravityPS.psm1'
                        'functions\Add-TypeAccelerator'
                        'functions\Assert-ScriptBlockParametersEqual'
                        'functions\Attach-PSNote'
                        'functions\Attach-PSProperty'
                        'functions\Attach-PSScriptMethod'
                        'functions\ConvertTo-HashTable'
                        'functions\Create-DirectoryIfNotExists'
                        'functions\Get-CurrentFunctionName'
                        'functions\Get-Delegate'
                        'functions\Get-DelegateType'
                        'functions\Guard-ArgumentNotNull'
                        'functions\Guard-ArgumentNotNullOrEmpty'
                        'functions\Guard-ArgumentValid'
                        'functions\Guard-DirectoryExists'
                        'functions\Guard-FileExists'
                        'functions\Invoke-Generic'
                        'functions\Invoke-Using'
                        'functions\New-Closure'
                        'functions\New-DynamicModuleBuilder'
                        'functions\New-Enum'
                        'functions\New-GenericObject'
                        'functions\New-Lazy'
                        'functions\New-PSCredential'
                        'functions\New-PSObject'
                        'functions\New-PSObjectEqualityComparer.ps1'
                        'functions\Where-Any.ps1'
                        )

          PrivateData = @{
                            PSData = @{
                                Tags = 'GravityPS framework powershell'
                                LicenseUri = 'http://opensource.org/licenses/MIT'
                                ProjectUri = 'https://github.com/GhostSquad/GravityPS'
                                IconUri = ''
                                ReleaseNotes = ''
                            }
                        }
}