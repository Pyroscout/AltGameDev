using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

enum BiomeType { Forest, Desert, Tundra, COUNT }

class Biome
{
    public string name;
    int temperature;
    int herbSupply;
    double herbGrowthFactor;

    public Biome(string name, int temperature, int herbSupply, double herbGrowthFactor)
    {
        this.name = name;
        this.temperature = temperature;
        this.herbSupply = herbSupply;
        this.herbGrowthFactor = herbGrowthFactor;
    }
}
