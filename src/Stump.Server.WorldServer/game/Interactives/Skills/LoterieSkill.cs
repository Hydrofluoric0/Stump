using Stump.Core.Extensions;
using Stump.Server.BaseServer.Database;
using Stump.Server.WorldServer.Database.Interactives;
using Stump.Server.WorldServer.Game.Actors.RolePlay.Characters;
using Stump.Server.WorldServer.Game.Items;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;

namespace Stump.Server.WorldServer.Game.Interactives.Skills
{
    [Discriminator("Loterie", typeof(Skill), typeof(int), typeof(InteractiveCustomSkillRecord), typeof(InteractiveObject))]
    public class LoterieSkill : CustomSkill
    {
        public LoterieSkill(int id, InteractiveCustomSkillRecord skillTemplate, InteractiveObject interactiveObject)
            : base(id, skillTemplate, interactiveObject)
        {
        }

        public override int StartExecute(Character character)
        {
            if (character.WorldAccount.LastLoterieDate != null && character.WorldAccount.LastLoterieDate.Date == DateTime.Now.Date)
            {
                var ticket = character.Inventory.GetItems().FirstOrDefault(x => x.Template.Id == 7220);
                if (ticket != null)
                {
                    character.Inventory.RemoveItem(ticket, 1);
                    character.SendServerMessage("Vous venez d'utiliser un ticket de loterie ! Écaflip prie pour que le hasard soit avec vous !", Color.YellowGreen);
                    //var nbr = nbr1;
                    //character.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(12124), nbr);
                    //character.OpenPopup("Vous avez obtenu "+ nbr + "<b>Points boutiques.</b>");
                    GetPrice(character);
                }
                else
                    character.OpenPopup("La loterie est gratuite une fois par jour uniquement, si vous souhaitez recommencer veuillez attendre demain ou achetez un ticket de loterie.");
            }
            else
            {
                GetPrice(character);
            }

            return base.StartExecute(character);
        }

        private void GetPrice(Character character)
        {
            Dictionary<int, double> Items = new Dictionary<int, double>();

            //AJOUT DES ITEMS ID / Chance/100
            //Cadeau Ogrines
            Items.Add(8164, 95); //50
            Items.Add(12184, 90); //100
            Items.Add(13006, 70); //250
            Items.Add(13007, 50); //400
            Items.Add(13008, 45); //450
            Items.Add(13141, 10); //500
            Items.Add(13142, 2); //600
            Items.Add(13143, 1); //650
            Items.Add(13151, 0.1); //1500
            Items.Add(13152, 0.05); //3000
           //Items.Add(13150, 50); //Ticket

            Random rnd = new Random();
            var randomfinded = rnd.Next(0, 1000) / 100d;

            var Sort = Items.Where(x => x.Value >= randomfinded);

            character.WorldAccount.LastLoterieDate = DateTime.Now;
            if (Sort != null)
            {
                character.Inventory.AddItem(ItemManager.Instance.TryGetTemplate(Sort.RandomElementOrDefault().Key), 1);
                character.OpenPopup("Vous avez remporté un nouvel objet ! Allez le découvrir tout de suite dans votre inventaire !");
            }
            else
            {
                character.OpenPopup("Nous sommes désolé mais vous n'avez rien gagné réessayez demain ...");
            }
        }
    }
}
