﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;

namespace SalesForceTestRequest.Utils
{
    public class Log
    {
        public static StringBuilder log = new StringBuilder();

        /// <summary>
        /// Método para registrar log de erro em arquivo externo
        /// </summary>
        /// <param name="e"></param>
        public static void logException(Exception e)
        {

            //Configurando diretorio atual para emissão de logs         
            string oldPath = Directory.GetCurrentDirectory();
            string rawPath = HttpRuntime.AppDomainAppPath + @"\Logs\";
            if (!Directory.Exists(rawPath)) Directory.CreateDirectory(rawPath);
            Directory.SetCurrentDirectory(rawPath);

            //Emitindo Log
            log.Append(DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss"));
            log.AppendLine();
            log.Append(e.Message);
            log.AppendLine();
            log.Append(e.StackTrace);
            log.AppendLine();
            if (e.InnerException != null)
            {
                log.AppendLine("InnerException: " + e.InnerException.Message);
            }
            File.AppendAllText("LogError.txt", log.ToString());
            log.Clear();

            //Restaurando diretorio anterior
            Directory.SetCurrentDirectory(oldPath);
        }

        public static void logException(Exception e, string message)
        {

            //Configurando diretorio atual para emissão de logs         
            string oldPath = Directory.GetCurrentDirectory();
            string rawPath = HttpRuntime.AppDomainAppPath + @"\Logs\";
            if (!Directory.Exists(rawPath)) Directory.CreateDirectory(rawPath);
            Directory.SetCurrentDirectory(rawPath);

            //Emitindo Log
            log.Append(DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss"));
            log.AppendLine();
            log.Append(e.Message + "AGENT: " + message);
            log.AppendLine();
            log.Append(e.StackTrace);
            log.AppendLine();
            if (e.InnerException != null)
            {
                log.AppendLine("InnerException: " + e.InnerException.Message);
            }
            File.AppendAllText("LogError.txt", log.ToString());
            log.Clear();

            //Restaurando diretorio anterior
            Directory.SetCurrentDirectory(oldPath);
        }

        /// <summary>
        /// Método para registrar mensagem de erro em arquivo externo
        /// </summary>
        /// <param name="message"></param>
        public static void logMessage(string message)
        {

            //Configurando diretorio atual para emissão de mensagem  
            string oldPath = Directory.GetCurrentDirectory();
            string rawPath = HttpRuntime.AppDomainAppPath + @"\Logs\";
            if (!Directory.Exists(rawPath)) Directory.CreateDirectory(rawPath);
            Directory.SetCurrentDirectory(rawPath);

            //Emitindo mensagem
            log.Append(DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss"));
            log.Append(" " + message);
            log.AppendLine();
            File.AppendAllText("LogMessage.txt", log.ToString());
            log.Clear();

            //Restaurando diretorio anterior
            Directory.SetCurrentDirectory(oldPath);
        }
    }
}