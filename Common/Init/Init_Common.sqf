// Set ownership of cities
BIS_WF_MissionDefaultSide = Resistance;
BIS_WF_Constants SetVariable["EASTSTARTINGTOWNSRATIO",0.3];
BIS_WF_Constants SetVariable["WESTSTARTINGTOWNSRATIO",0.1];

// Costum values for starting funds
eastPlayerStartingFunds = 5000;
westPlayerStartingFunds = 5000;
ResistancePlayerStartingFunds = 2000;

EastAICommanderFunds = 5000;
WestAICommanderFunds = 5000;
ResistanceAICommanderFunds = 5000;
EastCommanderFunds = 5000;
WestCommanderFunds = 5000;
ResistanceCommanderFunds = 5000;

// Costum values for starting supplies
EastSupplies = 2000;
WestSupplies = 2000;
ResistanceSupplies = 1000;

// Add vehicles to Factory
// [Side, Factory, Unit, Cost, Build-Time, Points, Crew, Description, Image, Faction]
[West,"WingedAircraft","MV22",140,40,0,1,"","","USMC"] Call BIS_WF_AddUnitData;
[West,"Light","MLRS",100,15,0,1,"","","USMC"] Call BIS_WF_AddUnitData;
[West,"Light","M252_US_EP1",100,15,0,1,"","","USMC"] Call BIS_WF_AddUnitData;
