using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Utilities
{
    public static class LogWriter
    {
        public static void UpdateLog(string message)
        {

            string fileName = "Logs_" + DateTime.Now.ToShortDateString().Trim().Replace('/', '_') + ".txt";
            //open the file if exists or create new file with the file name above
            File.AppendAllText(fileName, DateTime.Now.ToString() + "___" + message + Environment.NewLine);
           
        }
    
    }
}
