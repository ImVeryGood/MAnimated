using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Custom.Toast.RNCustomToast
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNCustomToastModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNCustomToastModule"/>.
        /// </summary>
        internal RNCustomToastModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNCustomToast";
            }
        }
    }
}
