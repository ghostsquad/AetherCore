function New-PSObjectEqualityComparer {
    param (
        [Func[PSObject, PSObject, bool]]$EqualsDelegate,
        [Func[PSObject, int]]$GetHashCodeDelegate
    )

    return (new-object GravityPS.PSObjectEqualityComparer($EqualsDelegate, $GetHashCodeDelegate))
}

Add-Type -TypeDefinition @"
    namespace GravityPS {
        using System;
        using System.Collections.Generic;
        using System.Management.Automation;

        public class PSObjectEqualityComparer : IEqualityComparer<PSObject> {
            private Func<PSObject, PSObject, bool> EqualsDelegate;
            private Func<PSObject, int> GetHasCodeDelegate;

            public PSObjectEqualityComparer(Func<PSObject, PSObject, bool> equalsDelegate, Func<PSObject, int> getHasCodeDelegate) {
                if (equalsDelegate == null) {
                    throw new ArgumentNullException("equalsDelegate");
                }

                if (getHasCodeDelegate == null) {
                    throw new ArgumentNullException("getHasCodeDelegate");
                }

                this.EqualsDelegate = equalsDelegate;
                this.GetHasCodeDelegate = getHasCodeDelegate;
            }

            public bool Equals(PSObject x, PSObject y)
            {
                return this.EqualsDelegate(x, y);
            }


            public int GetHashCode(PSObject obj)
            {
                return this.GetHasCodeDelegate(obj);
            }
        }
    }
"@