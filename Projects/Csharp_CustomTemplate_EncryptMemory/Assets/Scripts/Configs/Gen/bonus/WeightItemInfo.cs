
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







namespace cfg.bonus
{
    [Serializable]
    public partial class WeightItemInfo : AConfig
    {
        [JsonProperty("item_id")]
        private int _item_id { get; set; }
        [JsonIgnore]
        public EncryptInt item_id { get; private set; } = new();

        [JsonProperty("num")]
        private int _num { get; set; }
        [JsonIgnore]
        public EncryptInt num { get; private set; } = new();

        [JsonProperty("weight")]
        private int _weight { get; set; }
        [JsonIgnore]
        public EncryptInt weight { get; private set; } = new();


        public override void EndInit() 
        {
            item_id = _item_id;
            num = _num;
            weight = _weight;
        }

        public override string ToString() => JsonConvert.SerializeObject(this);
    }
}