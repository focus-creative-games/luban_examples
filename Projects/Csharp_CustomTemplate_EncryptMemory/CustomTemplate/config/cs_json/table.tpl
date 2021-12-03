using System;
using Scripts;
{{ 
    name = x.name
}}
namespace {{x.namespace_with_top_module}}
{
	{{~if x.comment != '' ~}}
	/// <summary>
	/// {{x.escape_comment}}
	/// </summary>
	{{~end~}}
    [Config]
    public partial class {{name}} : ACategory<{{x.value_type}}>
    {
        public override void TranslateText(Func<string, string, string> translator)
        {
            foreach(var v in dict.Values)
            {
                v.TranslateText(translator);
            }
        }
    }
}
