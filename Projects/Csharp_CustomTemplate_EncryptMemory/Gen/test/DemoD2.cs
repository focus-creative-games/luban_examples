
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using Newtonsoft.Json;
using Scripts;







namespace cfg.test
{
    [Serializable]
    public partial class DemoD2 : AConfig
    {
        [JsonProperty("x2")]
        private int _x2 { get; set; }
        [JsonIgnore]
        public EncryptInt x2 { get; private set; } = new();


        public override void EndInit() 
        {
            x2 = _x2;
        }

        public override string ToString() => JsonConvert.SerializeObject(this);
    }
}
