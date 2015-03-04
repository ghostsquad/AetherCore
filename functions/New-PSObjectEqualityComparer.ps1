function New-PSObjectEqualityComparer {
    param (
        [Func[PSObject, PSObject, bool]]$EqualsDelegate,
        [Func[PSObject, int]]$GetHashCodeDelegate
    )

    return (new-object [Aether.Core.PSObjectEqualityComparer]($EqualsDelegate, $GetHashCodeDelegate))
}