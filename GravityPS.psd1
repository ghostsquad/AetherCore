<#############################################################################
The GravityPS module is a core framework for Powershell, enhancing
various idioms, and streamlining common, repetitive code.

The MIT License (MIT)

Copyright (c) 2014 Wes McNamee

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
#############################################################################>

@{
      ModuleToProcess = 'GravityPS.psm1'

        ModuleVersion = '0.1.1'

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