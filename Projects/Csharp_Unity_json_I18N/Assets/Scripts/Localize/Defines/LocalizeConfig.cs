using System.Collections.Generic;
using UnityEngine;

namespace Example
{
    public class LocalizeConfig
    {
        public IAssetLoader   loader;
        public SystemLanguage current_language;
        public SystemLanguage default_language;

        /// <summary>
        /// 一些在下载更新前的多语言内容
        /// </summary>
        public List<ALocalizeConfig> init_datas;


        public LocalizeConfig(IAssetLoader          loader,
                              SystemLanguage        current_language,
                              SystemLanguage        default_language,
                              List<ALocalizeConfig> init_datas)
        {
            this.loader           = loader;
            this.current_language = current_language;
            this.default_language = default_language;
            this.init_datas       = init_datas ?? new List<ALocalizeConfig>();
        }
    }
}