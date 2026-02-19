-- For Localization

ITEM_FUEL = "Fuel"
ITEM_FUEL_FULL_USE = "Fuel canister"
ITEM_BOLTS = "Bolts"
ITEM_NUTS = "Nuts"
ITEM_PARTS = "Metal parts"
ITEM_LUMP = "Lamp"
ITEM_FULLMASTER = "Set of files «FullMaster»"
ITEM_DRILL = "Drill"
ITEM_SCREWS = "Screws"
ITEM_NAILS = "Nails"
ITEM_SCREW = "Screwdriver"
ITEM_ROULET = "Roulet"
ITEM_PENA = "Mounting foam"
ITEM_ELECTRONICS = "Electronics"
ITEM_ELECTRONICS_USE = "High-tech electronics"
ITEM_MACHINERY = "Machinery"
ITEM_MACHINERY_USE = "Improved machinery"
ITEM_BOOKS = "Books"
ITEM_BOTLES = "Bottles"
ITEM_DETAILS = "Details"
ITEM_ANANAGA = "Ananaga"
ITEM_ROLEX = "Golden clock"
ITEM_CHAIN_GOLD = "Golden chain"
ITEM_SKULLRING = "Golden skull ring"
ITEM_VITALIK = "Sledgehammer «Vitalik»"
ITEM_HANDRILL = "Hand drill"
ITEM_METALSCISSORS = "Shears for cutting metal"
ITEM_HOSE = "Corrugated hose"
ITEM_KEK = "Tape «KEK»"
ITEM_TOOLSET = "Toolkit"
ITEM_ELECTRONICS_COMPONENTS = "Electronic components"
ITEM_WIRES = "Wires"
ITEM_NIPPERS = "Nippers"
ITEM_PLIERS_ROUND = "Pliers round"
ITEM_SVECH = "Spark plug"
ITEM_ENGINE = "Engine"
ITEM_DOSKI = "Boards"
ITEM_OIL = "Oil"
ITEM_OIL_USE = "Barrel of fuel"
GIVE_100000_MONEY = "Transfer @fff3e5cb100.000 coins"
ITEM_RELE = "Relay"
ITEM_BULDEX = "Cable cutter «Bulbex»"
ITEM_BP = "Power unit"
ITEM_MILITARY_CABLE = "Military cable"
ITEM_PLATE = "Microboard"
ITEM_CONVERTER = "Advanced current converter"
GIVE_1000000_MONEY = "Transfer @fff3e5cb1.000.000 coins"
ITEM_ENERGO_LUMP = "Energy saving lamp"
GIVE_50000_MONEY = "Transfer @fff3e5cb50.000 coins"
ITEM_CABLE = "Power cable"
ITEM_PIPE_WRENCH = "Hinged wrench «KShS»"
ITEM_FITANYASHKA = "Dakimakura FitaNyashka"
ITEM_KAKTUS = "Cactus"
GIVE_500000_MONEY = "Transfer @fff3e5cb500.000 coins"
ITEM_THERMOMETER = "Thermometer"
ITEM_MILITARY_PLATE = "Military microboard"
ITEM_COOLER = "CPU Fan"
ITEM_MANUAL = "Manual"
ITEM_PLIERS = "Pliers"
ITEM_SCREW_FLAT_LONG = "Long flat screwdriver"
ITEM_FIREWOOD = "Wood"
ITEM_CHRISTMAS_BALL_BLUE = "Blue ball"
ITEM_CHRISTMAS_BALL_RED = "Red ball"
ITEM_CHRISTMAS_BALL_WHITE = "White ball"
ITEM_CHRISTMAS_STAR = "Christmas star"

MSG_RAID = "Raid ¹"
MSG_DAY = "Day: "
MSG_PMC = "PMC operator "
MSG_MAP_R1M1 = "Krai"

-- Ãåíåðàöèÿ ñëó÷àéíîãî èìåíè äëÿ äèêîãî
function GenerateRandomScavName()
	local firstName = {"John", "Dmitriy", "Dima", "Aiven", "Ben", "Vitaliy", "Pisya", "Maxim", "Ashot", "Ferdinand", "Sahya", "Ilya", "Leha", "Saveliy", "Valeriy", "Kisa", "Cat", "Ded", "Scammer", "Pavel", "Pavlik", "Plunger", "Kirill", "Boar", "Max", "Carsen", "Alik", "Mouse", "Husband", "Axel", "Felix", "Thief", "Dick", "Fucker", "Player", "Dod", "Petrovich", "Alex", "Alexsey", "Sergey", "Sergo", "Gnome", "Druid", "Bandit", "Vagabond", "Nomad", "Hard worker", "Amerigo", "Sem", "Konni", "Blythe", "Dronn", "Grey", "Git", "Mister", "Tim", "Nikita", "Monolit", "Glass", "Nick"}
	local secondName = {"Weak", "Strong", "Powerful", "Accurate", "Quick Shooter", "Iron", "Armored", "Loser", "Drug Addict", "Belazist", "Natural", "RPG", "Goose", "Savage", "Sour Cream", "Based", "Programmer", "Dangerous", "Scary", "Improved", "Sailor", "Hero", "Newbie", "Experienced", "Pro", "Master", "Driver", "Ananaga", "Beaver", "Screwdriver", "Gloomy", "Cyberpsycho", "Cyber athlete", "Trader", "Bartender", "Oracle", "Drug dealer", "Cap", "Loose", "Kazakh", "Samurai", "Jap", "Donut", "Sweet", "Botan", "Spheno", "Shutter", "Assistant", "Octopus", "Rheinmetall", "Fagot", "Speedy", "Egg", "Fatty", "Strongman", "Clown", "Bebra", "Correct", "Big Mac", "Microphone", "Vibrating", "Discharger", "Marked", "Fluff", "Left", "Right", "Farmer", "Wet", "Moist", "Insolent", "Silencer", "Charlie", "Vegetable Base", "Tit", "Compatcher", "Schizo", "Monkey", "Huckster", "One-Eyed", "Lucky", "Crypto", "Machinist", "Go", "Throttle", "Coming", "Cool", "Amateur", "Eater", "Traitor", "Belaz", "Scout", "Fighter", "Cockroach", "Bug", "Ant", "Bear", "Hunter", "Ural", "Sagitta", "Hole", "Skorb", "Casino", "Generator", "Terminator", "Wanderer", "Junior", "Senior", "Gas Tank", "Georgian", "Leaky", "Sniper", "Creep", "Sad", "Hat", "Factory", "Peanut", "Smart Guy", "Buyanov", "Wise", "Salt", "Piter", "Sausage", "Gentle"}
	local Name = ""..firstName[random(getn(firstName))].." "..secondName[random(getn(secondName))]..""

	return Name
end










