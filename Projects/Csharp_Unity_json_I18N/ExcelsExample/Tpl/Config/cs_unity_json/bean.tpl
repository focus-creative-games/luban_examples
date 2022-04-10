using System;
using Nireus;
using Newtonsoft.Json;
using System.Collections.Generic;

namespace {{x.namespace_with_top_module}}
{
	{{~if x.comment != '' ~}}
	/// <summary>
	/// {{x.escape_comment}}
	/// </summary>
	{{~end~}}
    [Serializable]
    public partial class {{name}} : {{if parent_def_type}} {{x.parent}} {{else}} AConfig {{end}}
    {
    {{~ for field in export_fields ~}}
		{{~if field.name != "id"~}}
		    {{~if field.comment != '' ~}}
    	/// <summary>
    	/// {{field.escape_comment}}
    	/// </summary>
		    {{~end~}}
            {{~if field.gen_text_key~}}
        [JsonProperty("{{field.name}}")]
        private TranslateText _{{field.name}} { get; set; }
        [JsonIgnore]
        public string {{field.name}} => _{{field.name}}.text;
            {{~else~}}
        [JsonProperty]
        public {{cs_define_type field.ctype}} {{field.name}} { get; private set; }
            {{~end~}}
		{{~end~}}
    {{~end~}}
    }
}
