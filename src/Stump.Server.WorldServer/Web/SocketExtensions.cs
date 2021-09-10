using System.Net.Sockets;
using System.Threading.Tasks;

namespace Stump.Server.WorldServer.Web
{
    public static class SocketExtensions
    {
        public static Task<Socket> AcceptAsync(this Socket s)
        {
            return Task.Factory.FromAsync(s.BeginAccept, s.EndAccept, s);
        }

        public static Task<int> ReceiveAsync(this Socket s, byte[] buffer, int size, int offset, SocketFlags sf = SocketFlags.None)
        {
            return Task.Factory.FromAsync(s.BeginReceive(buffer, offset, size, sf, null, s), s.EndReceive);
        }

        public static Task<int> SendAsync(this Socket s, byte[] buffer, int size, int offset, SocketFlags sf = SocketFlags.None)
        {
            return Task.Factory.FromAsync(s.BeginSend(buffer, offset, size, sf, null, s), s.EndSend);
        }
    }
}
