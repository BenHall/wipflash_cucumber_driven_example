#region

using System.Collections.Generic;
using System.ComponentModel;
using System.Threading;
using ExampleUIs.PetModule.Domain;

#endregion

namespace ExampleUIs.Domain
{
    public class PetRepository : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged = delegate { };

        private readonly History _history;
        private List<Pet> _pets;

        public PetRepository(History history)
        {
            _history = history;
            _pets = new List<Pet>
                        {
                            new Pet
                                {
                                    Name = "Spot",
                                    Type = PetType.ALL[2],
                                    FoodType = PetFood.ALL[1],
                                    Price = "100.00"
                                },
                            new Pet
                                {
                                    Name="Cinnamon",
                                    Type = PetType.ALL[1],
                                    FoodType = PetFood.ALL[0],
                                    Price = "4.50"
                                },
                        };
        }

        public History History
        {
            get { return _history; }
        }

        public Pet[] Pets
        {
            get { return _pets.ToArray(); }
        }

        public void Save(Pet pet)
        {
            string petType = (pet.Type == null) ? string.Empty : pet.Type.Name;
            string petFood = (pet.FoodType == null) ? string.Empty : pet.FoodType.Text;
            _history.AddText(string.Format("{0} the {1} registered at a price of �{2}. Food: {3}", pet.Name, petType, pet.Price, petFood));
            new Thread(() =>
                           {
                               // Mimics talking to a real repository
                               Thread.Sleep(400);
                               System.Console.WriteLine("Got a new pet in the repository");
                               _pets.Add(pet);
                               PropertyChanged(this, new PropertyChangedEventArgs("Pets"));
                           }).Start();

        }

        public void PetWasPutInBasket(Pet pet)
        {
            _pets.Remove(pet);
            PropertyChanged(this, new PropertyChangedEventArgs("Pets"));
        }
    }
}