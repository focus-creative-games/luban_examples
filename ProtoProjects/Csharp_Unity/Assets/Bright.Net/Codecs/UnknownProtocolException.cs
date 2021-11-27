using System;
using System.Runtime.Serialization;

namespace Bright.Net.Codecs
{
    public class UnknownProtocolException : Exception
    {
        public UnknownProtocolException()
        {
        }

        public UnknownProtocolException(string message) : base(message)
        {
        }

        public UnknownProtocolException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected UnknownProtocolException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}
