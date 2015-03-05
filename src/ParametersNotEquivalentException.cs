namespace Aether.Core
{
    using System;

    public class ParametersNotEquivalentException : Exception
    {
        public ParametersNotEquivalentException(string message)
            : base(message)
        {
        }

        public ParametersNotEquivalentException(string message, Exception inner)
            : base(message, inner)
        {
        }
    }
}
