using Foundation;
using System.CodeDom.Compiler;

namespace virtualfridge
{
    [Register("DataViewController")]
    partial class DataViewController
    {
        [Outlet]
        [GeneratedCodeAttribute("iOS Designer", "1.0")]
        UIKit.UILabel dataLabel { get; set; }

        void ReleaseDesignerOutlets()
        {
            if (dataLabel != null)
            {
                dataLabel.Dispose();
                dataLabel = null;
            }
        }
    }
}

