#***************************************************************************
#*
#**  File     :  /lua/ai/AIBaseTemplates/SorianMainRush.lua
#**  Author(s): Michael Robbins aka Sorian
#**
#**  Summary  : Manage engineers for a location
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************

BaseBuilderTemplate {
    BaseTemplateName = 'SorianMainRush',
    Builders = {
        # ==== ECONOMY ==== #
        # Factory upgrades
        'SorianT1BalancedUpgradeBuilders',
        'SorianT2BalancedUpgradeBuilders',
		'SorianEmergencyUpgradeBuilders',
		'SorianMassFabPause',
        
        # Engineer Builders
        'SorianEngineerFactoryBuilders',
        'SorianT1EngineerBuilders',
        'SorianT2EngineerBuilders',
        'SorianT3EngineerBuilders',
        'SorianEngineerFactoryConstructionLandHigherPriority',
        'SorianEngineerFactoryConstruction',
		
		# SCU Upgrades
		'SorianSCUUpgrades',
        
        # Engineer Support buildings
        'SorianEngineeringSupportBuilder',
        
        # Build energy at this base
        'SorianEngineerEnergyBuilders',
        
        # Build Mass high pri at this base
        #'SorianEngineerMassBuilders - Rush',
		'SorianEngineerMassBuildersHighPri',
        
        # Extractors
        'SorianTime Exempt Extractor Upgrades',
        
        # ACU Builders
        'Sorian Rush Initial ACU Builders',
        'SorianACUBuilders',
        'SorianACUUpgrades',
		'SorianACUAttack',
        
        # ACU Defense
        'SorianT1ACUDefenses',
        'SorianT2ACUDefenses',
        'SorianT2ACUShields',
        'SorianT3ACUShields',
        'SorianT3ACUNukeDefenses',
        
        # ==== EXPANSION ==== #
        'SorianEngineerExpansionBuildersFull',
        'SorianEngineerExpansionBuildersSmall',
		'SorianEngineerFirebaseBuilders',
        
        # ==== DEFENSES ==== #
		'SorianT1BaseDefenses',
		'SorianT2BaseDefenses - Emerg',
		'SorianT3BaseDefenses - Emerg',
		
        'SorianT1DefensivePoints',
        'SorianT2DefensivePoints',
        #'SorianT3DefensivePoints',
		
		'SorianT2ArtilleryFormBuilders',
		'SorianT3ArtilleryFormBuilders',
		'SorianT4ArtilleryFormBuilders',
        'SorianT2MissileDefenses',
        'SorianT3NukeDefenses',
        'SorianT3NukeDefenseBehaviors',
		'SorianMiscDefensesEngineerBuilders',
		
		'SorianMassAdjacencyDefenses',
        
        # ==== NAVAL EXPANSION ==== #
        'SorianNavalExpansionBuilders',
        
        # ==== LAND UNIT BUILDERS ==== #
		'SorianT1LandFactoryBuilders - Rush',
        'SorianT1LandFactoryBuilders',
        'SorianT2LandFactoryBuilders',
        'SorianT3LandFactoryBuilders',
        
        'SorianFrequentLandAttackFormBuilders',
        'SorianMassHunterLandFormBuilders',
        'SorianMiscLandFormBuilders',
        'SorianUnitCapLandAttackFormBuilders',
        
        'SorianT1LandAA',
        'SorianT2LandAA',
		'SorianT3LandResponseBuilders',

        'SorianT1ReactionDF',
        'SorianT2ReactionDF',
        'SorianT3ReactionDF',
        
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
		
		'SorianTransportFactoryBuilders - Rush',

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
		
        #'SorianMobileNavalExperimentalEngineers',
        #'SorianMobileNavalExperimentalForm',
		
		'SorianEconomicExperimentalEngineers',
		'SorianMobileExperimentalEngineersGroup',
		
        # ==== ARTILLERY BUILDERS ==== #
        'SorianT3ArtilleryGroup',
        
        'SorianExperimentalArtillery',
        
        'SorianNukeBuildersEngineerBuilders',
        'SorianNukeFormBuilders',
        
        'SorianSatelliteExperimentalEngineers',
        'SorianSatelliteExperimentalForm',
		
		# ======== Strategies ======== #
		'SorianHeavyAirStrategy',
		'SorianBigAirGroup',
		'SorianJesterRush',
		'SorianNukeRush',
		'SorianT3ArtyRush',
		'SorianT2ACUSnipe',
		'SorianT3FBRush',
		'SorianParagonStrategy',
		'SorianSmallMapRush',
		'Sorian Tele SCU Strategy',
		
		# ===== Strategy Platoons ===== #
		'SorianT1BomberHighPrio',
		'SorianT2BomberHighPrio',
		'SorianT3BomberHighPrio',
		'SorianT3BomberSpecialHighPrio',
		'SorianT1GunshipHighPrio',
		
		'SorianBomberLarge',
		'SorianBomberBig',
		'SorianGunShipLarge',
		'SorianNukeBuildersHighPrio',
		'SorianT3ArtyBuildersHighPrio',
		'SorianT2FirebaseBuildersHighPrio',
		'SorianT3FBBuildersHighPrio',
		'Sorian Extractor Upgrades Strategy',
		'SorianBalancedUpgradeBuildersExpansionStrategy',
		'SorianEngineerExpansionBuildersStrategy',
    },
    NonCheatBuilders = {
        'SorianAirScoutFactoryBuilders',
        'SorianAirScoutFormBuilders',
        
        'SorianLandScoutFactoryBuilders',
        'SorianLandScoutFormBuilders',
        
        'SorianRadarEngineerBuilders',
        'SorianRadarUpgradeBuildersMain',
        
        'SorianCounterIntelBuilders',
    },
    BaseSettings = {
        EngineerCount = {
            Tech1 = 15,
            Tech2 = 10,
            Tech3 = 15,
            SCU = 2,
        },
        FactoryCount = {
            Land = 8,
            Air = 2,
            Sea = 0,
            Gate = 1,
        },
        MassToFactoryValues = {
            T1Value = 6,
            T2Value = 15,
            T3Value = 22.5
        },
    },
    ExpansionFunction = function(aiBrain, location, markerType)
        return 0
    end,
    FirstBaseFunction = function(aiBrain)
        local per = ScenarioInfo.ArmySetup[aiBrain.Name].AIPersonality
        if not per then 
            return 1, 'sorianrush'
        end
        
        if per != 'sorianrush' and per != 'sorianadaptive' and per != 'bleh' and per != '' then
            return 1, 'sorianrush'
        end

        local mapSizeX, mapSizeZ = GetMapSize()
        local isIsland = false
        
        local startX, startZ = aiBrain:GetArmyStartPos()
        local islandMarker = import('/lua/AI/AIUtilities.lua').AIGetClosestMarkerLocation(aiBrain, 'Island', startX, startZ)
        if islandMarker then
            isIsland = true
        end
        
        if per == 'sorianrush' then
            return 1000, 'sorianrush'
        end
		
		if isIsland then
            return 1, 'sorianrush'
        
        elseif mapSizeX <= 256 and mapSizeZ <= 256 and not isIsland then
            return 100, 'sorianrush'
        
        elseif mapSizeX >= 256 and mapSizeZ >= 256 and mapSizeX < 1024 and mapSizeZ < 1024 then
            return Random(75, 100), 'sorianrush'
        
        elseif mapSizeX <= 1024 and mapSizeZ <= 1024 then
            return 50, 'sorianrush'
           
        else
            return 20, 'sorianrush'
        end
    end,
}