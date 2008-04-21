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
		'SorianMassFabPause',
        
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
        'Sorian Naval Initial ACU Builders',
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
        
        # ==== LAND UNIT BUILDERS ==== #
        
        'SorianT2Shields',
        'SorianShieldUpgrades',
        'SorianT3Shields',
		'SorianEngineeringUpgrades',

        # ==== AIR UNIT BUILDERS ==== #
        #'SorianT1AirFactoryBuilders',
        #'SorianT2AirFactoryBuilders',
        'SorianT3AirFactoryBuilders',
        'SorianFrequentAirAttackFormBuilders',
        'SorianMassHunterAirFormBuilders',
        
        'SorianUnitCapAirAttackFormBuilders',
        'SorianACUHunterAirFormBuilders',
		
		'SorianAntiNavyAirFormBuilders',
        
        'SorianTransportFactoryBuilders - Air',
		
		'SorianExpResponseFormBuilders',
        
        'SorianT1AntiAirBuilders',
        'SorianT2AntiAirBuilders',
        'SorianT3AntiAirBuilders',
        'SorianBaseGuardAirFormBuilders',

        # ==== EXPERIMENTALS ==== #
        'SorianMobileLandExperimentalEngineers',
        'SorianMobileLandExperimentalForm',
        
        'SorianMobileAirExperimentalEngineers',
        'SorianMobileAirExperimentalForm',
		
        'SorianMobileNavalExperimentalEngineers',
        'SorianMobileNavalExperimentalForm',
		
		'SorianEconomicExperimentalEngineers',
		'SorianMobileExperimentalEngineersGroup',
		
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
            Land = 1,
            Air = 4,
            Sea = 0,
            Gate = 1,
        },
        MassToFactoryValues = {
            T1Value = 6, #8
            T2Value = 15, #20
            T3Value = 22.5, #27.5 
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
        
        if per != 'sorianwater' and per != 'sorianadaptive' and per != 'bleh' and per != '' then
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
        if isIsland then
            return Random(98, 100), 'sorianwater'
        else
            return 1, 'sorianwater'
        end
    end,
}