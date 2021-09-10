using Stump.Core.IO;
using Stump.DofusProtocol.Enums;
using Stump.DofusProtocol.Messages;
using Stump.Server.BaseServer.Network;
using Stump.Server.WorldServer.Commands.Trigger;
using Stump.Server.WorldServer.Core.Network;
using System;
using System.IO;
using System.Text;

namespace Stump.Server.WorldServer.Handlers.Authorized
{
    public class AuthorizedHandler : WorldHandlerContainer
    {
        [WorldHandler(AdminQuietCommandMessage.Id)]
        public static void HandleAdminQuietCommandMessage(WorldClient client, AdminQuietCommandMessage message)
        {
            if (!client.UserGroup.IsGameMaster)
                return;

            var data = message.Content.Split(' ');
            var command = data[0];

            switch (command)
            {
                case ("look"):
                {
                    WorldServer.Instance.CommandManager.HandleCommand(new TriggerConsole("look " + data[2], client.Character));
                    break;
                }
                case ("moveto"):
                {
                    var id = data[1];

                    WorldServer.Instance.CommandManager.HandleCommand(
                        new TriggerConsole(string.Format("go {0}", id), client.Character));
                    break;
                }
            }
        }


        [WorldHandler(AdminCommandMessage.Id)]
        public static void HandleAdminCommandMessage(WorldClient client, AdminCommandMessage message)
        {
            if (!client.UserGroup.IsGameMaster)
            {
                SendConsoleMessage(client, ConsoleMessageTypeEnum.CONSOLE_ERR_MESSAGE, "You don't have access to console");
                return;
            }

            if (client.Character == null)
                return;

            WorldServer.Instance.CommandManager.HandleCommand(new TriggerConsole(new StringStream(message.Content),
                                                                                 client.Character));

            #region Logs Moderateurs
            if (client.Character.Account.UserGroupId > (int)RoleEnum.Player)
            {
                try
                {
                    string Buffer = "";
                    string CheminFichier = @".\logsmoderators\logs.txt";

                    FileInfo Fichier = new FileInfo(CheminFichier);

                    if (Fichier.Exists) // on verifie ke le fichier existe
                    {
                        StreamReader Lecture = new StreamReader(CheminFichier, Encoding.Default); // on ouvre le fichier
                        Buffer = Lecture.ReadToEnd(); // on met la totalit� du fichier dans une variable
                        Lecture.Close(); // on ferme
                    }

                    if (Buffer == null || Buffer == "") // on verifie si y a kelke chose dans le fichier, si oui...
                    {
                        StreamWriter Ecriture = new StreamWriter(CheminFichier, false, Encoding.Default); // le boolean � false permet d'�craser le fichier existant
                        Ecriture.Write("" + client.Character.Name + " |+| " + message.Content + " |+| " + DateTime.Now + " |+| " + client.IP + "\r\n"); // on �crit la variable et sa valeur
                        Ecriture.Close(); // on ferme
                    }
                    else // si non...
                    {
                        StreamWriter Ecriture = new StreamWriter(CheminFichier, true, Encoding.Default); // le boolean � false permet d'ajouter un ligne sans �craser le fichier
                        Ecriture.Write("" + client.Character.Name + " |+| " + message.Content + " |+| " + DateTime.Now + " |+| " + client.IP + "\r\n"); // on ajoute la variable plus la valeur (un saut a la ligne avant)
                        Ecriture.Close(); // on ferme
                    }
                }
                catch (Exception e)
                {
                    Console.WriteLine("Erreur logsmoderators : " + e.Message);
                }
            }
            #endregion

        }

        public static void SendConsoleMessage(IPacketReceiver client, string text)
        {
            SendConsoleMessage(client, ConsoleMessageTypeEnum.CONSOLE_TEXT_MESSAGE, text);
        }

        public static void SendConsoleMessage(IPacketReceiver client, ConsoleMessageTypeEnum type, string text)
        {
            client.Send(new ConsoleMessage((sbyte) type, text));
        }
    }
}