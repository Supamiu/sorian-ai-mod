#***************************************************************************
#*
#**  File     :  /lua/ai/AIBaseTemplates/SorianMainWater.lua
#**  Author(s): Michael Robbins aka Sorian
#**
#**  Summary  : Manage engineers for a location
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

BaseBuilderTemplate {
    BaseTemplateName = 'SorianMainWater',
    Builders = {
        # ==== ECONOMY ==== #
        # Factory upgrades
        'SorianT1NavalUpgradeBuilders',
        'SorianT2NavalUpgradeBuilders',
        
        # Engineer Builders
        'SorianEngineerFactoryBuilders',
        'SorianT1EngineerBuilders',
        'SorianT2EngineerBuilders',
        'SorianT3EngineerBuilders',
        'SorianEngineerFactoryConstruction Air',
        'SorianEngineerFactoryConstruction',
        
        # Engineer Support buildings
        'SorianEngineeringSupportBuilder',
        
        # Build energy at this base
        'SorianEngineerEnergyBuilders',
        
        # Build Mass high pri at this base
        'SorianEngineerMassBuildersHighPri',
        
        # Extractors
        'SorianTime Exempt Extractor Upgrades',
        
        # ACU Builders
        'Sorian Air Initial ACU Builders',
        'SorianACUBuilders',
        'SorianACUUpgrades',
        
        # ACU Defense
        'SorianT1ACUDefenses',
        'SorianT2ACUDefenses',
        'SorianT2ACUShields',
        'SorianT3ACUShields',
        'SorianT3ACUNukeDefenses',
        
        # ==== EXPANSION ==== #
        'SorianEngineerExpansionBuildersFull - Naval',
		'SorianEngineerFirebaseBuilders',
        
        # ==== DEFENSES ==== #
		'SorianT1BaseDefenses',
		'SorianT2BaseDefenses',
		'SorianT3BaseDefenses',

		'SorianT2PerimeterDefenses',
		'SorianT3PerimeterDefenses',
		
        #'SorianT1DefensivePoints',
        #'SorianT2DefensivePoints',
        #'SorianT3DefensivePoints',
		
		'SorianT2ArtilleryFormBuilders',
		'SorianT3ArtilleryFormBuilders',
		'SorianT4ArtilleryFormBuilders',
        'SorianT2MissileDefenses',
        'SorianT3NukeDefenses',
        'SorianT3NukeDefenseBehaviors',
		'SorianMiscDefensesEngineerBuilders',
        
        # ==== NAVAL EXPANSION ==== #
		'SorianNavalExpansionBuildersFast',
        'SorianNavalExpansionBuilders',
        
        # ==== LAND UNIT BUILDERS ==== #
        
        'SorianT2Shields',
        'SorianShieldUpgrades',
        'SorianT3Shields',
		'SorianEngineeringUpgrades',

        # ==== AIR UNIT BUILDERS ==== #
        'SorianT1AirFactoryBuilders',
        'SorianT2AirFactoryBuilders',
        'SorianT3AirFactoryBuilders',
        'SorianFrequentAirAttackFormBuilders',
        'SorianMassHunterAirFormBuilders',
        
        'SorianUnitCapAirAttackFormBuilders',
        'SorianACUHunterAirFormBuilders',
        
        'SorianTransportFactoryBuilders - Air',
		
		'SorianExpResponseFormBuilders',
        
        'SorianT1AntiAirBuilders',
        'SorianT2AntiAirBuilders',
        'SorianT3AntiAirBuilders',
        'SorianBaseGuardAirFormBuilders',

        # ==== EXPERIMENTALS ==== #
        'SorianMobileLandExperimentalEngineers',
        'SorianMobileLandExperimentalForm',
        
        'SorianMobileAirExperimentalEngineersHigh',
        'SorianMobileAirExperimentalForm',
		
        'SorianMobileNavalExperimentalEngineers',
        'SorianMobileNavalExperimentalForm',
		
		'SorianEconomicExperimentalEngineers',
		
        # ==== ARTILLERY BUILDERS ==== #
        'SorianT3ArtilleryGroup',
        
        'SorianExperimentalArtillery',
        
        'SorianNukeBuildersEngineerBuilders',
        'SorianNukeFormBuilders',
        
        'SorianSatelliteExperimentalEngineers',
        'SorianSatelliteExperimentalForm',
    },
    NonCheatBuilders = {
        'SorianAirScoutFactoryBuilders',
        'SorianAirScoutFormBuilders',
        
        'SorianRadarEngineerBuilders',
        'SorianRadarUpgradeBuildersMain',
        
        'SorianCounterIntelBuilders',
    },
    BaseSettings = {
        EngineerCount = {
            Tech1 = 15,
            Tech2 = 10,
            Tech3 = 30,
            SCU = 8,
        },
        FactoryCount = {
            Land = 0,
            Air = 5,
            Sea = 0,
            Gate = 1,
        },
        MassToFactoryValues = {
            T1Value = 8, #6
            T2Value = 20, #15
            T3Value = 27.5, #22.5 
        },
    },
    ExpansionFunction = function(aiBrain, location, markerType)
        return 0
    end,
    FirstBaseFunction = function(aiBrain)
        local per = ScenarioInfo.ArmySetup[aiBrain.Name].AIPersonality
        if not per then 
            return 1, 'sorianwater'
        end
        
        if per != 'sorianwater' and per != 'bleh' and per != '' then
            return 1, 'sorianwater'
        end

        local mapSizeX, mapSizeZ = GetMapSize()
        local isIsland = false
        
        local startX, startZ = aiBrain:GetArmyStartPos()
        local islandMarker = import('/lua/AI/AIUtilities.lua').AIGetClosestMarkerLocation(aiBrain, 'Island', startX, startZ)
        if islandMarker then
            isIsland = true
        end
        
        if per == 'sorianwater' then
            return 1000, 'sorianwater'
        end
        
        #If we're playing on an island map, do not use this plan often
        if isIsland and mapSizeX > 1024 and mapSizeZ > 1024 then
            return Random(25, 50), 'sorianwater'

        elseif mapSizeX < 512 and mapSizeZ < 512 then
            return Random(98, 100), 'sorianwater'

        elseif mapSizeX >= 512 and mapSizeZ >= 512 and mapSizeX <= 1024 and mapSizeZ <= 1024 then
            return Random(50, 100), 'sorianwater'

        else
            return Random(25, 75), 'sorianwater'
        end
    end,
}