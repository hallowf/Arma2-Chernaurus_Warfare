Private["_c","_config","_data","_m","_p","_pilotCost","_t","_total","_u"];



//WEST
_u            = ["UH1Y"];
_c            = [3500];
_m            = [2];
_t            = [35];
_p            = [20];



_u = _u        + ["CH_47F_BAF"];
_c = _c        + [40];
_m = _m        + [2];
_t = _t        + [40];
_p = _p        + [30];

_u = _u        + ["MV22"];
_c = _c        + [4000];
_m = _m        + [2];
_t = _t        + [40];
_p = _p        + [30];



_u = _u        + ["AH1Z"];
_c = _c        + [7500];
_m = _m        + [2];
_t = _t        + [55];
_p = _p        + [50];



_pilotCost = 75;

westAircraftDescriptions = [];
westAircraftFactions = [];
westAircraftImages = [];
westAircraftMannedCosts = [];



_total = Count _u;
for [{_count = 0},{_count < _total},{_count = _count + 1}] do
{
_config = configFile >> "CfgVehicles" >> (_u Select _count);
westAircraftMannedCosts = westAircraftMannedCosts + [(_c Select _count) + (_m Select _count) * _pilotCost];
westAircraftDescriptions = westAircraftDescriptions + [GetText (_config >> "displayName")];
westAircraftFactions = westAircraftFactions + [Localize "STR_FN_USMC"];
westAircraftImages = westAircraftImages + [GetText (_config >> "picture")];
};



westAircraftUnits = _u;
westAircraftCosts = _c;
westAircraftCrews = _m;
westAircraftTimes = _t;
westAircraftPoints = _p;

aircraftUnits = westAircraftUnits;
aircraftUnitCosts = westAircraftCosts;
aircraftUnitDescriptions = westAircraftDescriptions;





//Determine longest build time.
longestAircraftBuildTime = 0;
_t = westAircraftTimes;
for [{_count = Count _t - 1},{_count >= 0},{_count = _count - 1}] do
{
if (_t Select _count > longestAircraftBuildTime) then
{
longestAircraftBuildTime = _t Select _count;
};
};
