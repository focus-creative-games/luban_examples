
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







namespace cfg.item
{
    [Serializable]
    public partial class DesignDrawing : AConfig
    {
        public System.Collections.Generic.List<int>  learn_component_id { get; set; }


        public override void EndInit() 
        {
        }

        public override string ToString() => JsonConvert.SerializeObject(this);
    }
}
