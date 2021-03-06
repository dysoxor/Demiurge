# Set up ARGoS compilation information
include_directories(${CMAKE_SOURCE_DIR} ${ARGOS_INCLUDE_DIRS})
link_directories(${ARGOS_LIBRARY_DIRS})

# Headers
set(AUTOMODE_HEADERS
	core/AutoMoDeController.h
	core/AutoMoDeFiniteStateMachine.h
	core/AutoMoDeFsmBuilder.h
	core/AutoMoDeFsmHistory.h
	core/AutoMoDeBehaviorTree.h
	core/AutoMoDeBehaviorTreeBuilder.h
	core/bt/Action.h
	core/bt/Condition.h
	core/bt/NegationDecorator.h
	core/bt/Node.h
	core/bt/Selector.h
	core/bt/SelectorStar.h
	core/bt/Sequence.h
	core/bt/SequenceStar.h
	# Behaviours
	modules/AutoMoDeBehaviour.h
	modules/AutoMoDeBehaviourAntiPhototaxisChocolate.h
	modules/AutoMoDeBehaviourAntiPhototaxisCoconut.h
	modules/AutoMoDeBehaviourPhototaxisChocolate.h
	modules/AutoMoDeBehaviourPhototaxisCoconut.h
	modules/AutoMoDeBehaviourAttractionChocolate.h
	modules/AutoMoDeBehaviourAttractionCoconut.h
	modules/AutoMoDeBehaviourAttractionTuttifrutti.h
	modules/AutoMoDeBehaviourRepulsionChocolate.h
	modules/AutoMoDeBehaviourRepulsionCoconut.h
	modules/AutoMoDeBehaviourRepulsionTuttifrutti.h
	modules/AutoMoDeBehaviourStopChocolate.h
	modules/AutoMoDeBehaviourStopTuttifrutti.h
	modules/AutoMoDeBehaviourExplorationChocolate.h
	modules/AutoMoDeBehaviourExplorationCoconut.h
	modules/AutoMoDeBehaviourExplorationTuttifrutti.h
	modules/AutoMoDeBehaviourGoAwayColorTuttifrutti.h
	modules/AutoMoDeBehaviourGoToColorTuttifrutti.h
	modules/AutoMoDeBehaviourGenomeHarlequin.h
	# Conditions
	modules/AutoMoDeCondition.h
	modules/AutoMoDeConditionBlackFloorChocolate.h
	modules/AutoMoDeConditionWhiteFloorChocolate.h
	modules/AutoMoDeConditionGrayFloorChocolate.h
	modules/AutoMoDeConditionNeighborsCountChocolate.h
	modules/AutoMoDeConditionInvertedNeighborsCountChocolate.h
	modules/AutoMoDeConditionFixedProbabilityChocolate.h
	modules/AutoMoDeConditionProbColorTuttifrutti.h
	# NEAT
	NEAT/gene.h
	NEAT/genome.h
	NEAT/innovation.h
	NEAT/link.h
	NEAT/neat.h
	NEAT/network.h
	NEAT/nnode.h
	NEAT/trait.h)

# Sources
set(AUTOMODE_SOURCES
	core/AutoMoDeController.cpp
	core/AutoMoDeFiniteStateMachine.cpp
	core/AutoMoDeFsmBuilder.cpp
	core/AutoMoDeFsmHistory.cpp
	core/AutoMoDeBehaviorTree.cpp
	core/AutoMoDeBehaviorTreeBuilder.cpp
	core/bt/Action.cpp
	core/bt/Condition.cpp
	core/bt/NegationDecorator.cpp
	core/bt/Node.cpp
	core/bt/Selector.cpp
	core/bt/SelectorStar.cpp
	core/bt/Sequence.cpp
	core/bt/SequenceStar.cpp
	# Behaviours
	modules/AutoMoDeBehaviour.cpp
	modules/AutoMoDeBehaviourAntiPhototaxisChocolate.cpp
	modules/AutoMoDeBehaviourAntiPhototaxisCoconut.cpp
	modules/AutoMoDeBehaviourPhototaxisChocolate.cpp
	modules/AutoMoDeBehaviourPhototaxisCoconut.cpp
	modules/AutoMoDeBehaviourAttractionChocolate.cpp
	modules/AutoMoDeBehaviourAttractionCoconut.cpp
	modules/AutoMoDeBehaviourAttractionTuttifrutti.cpp
	modules/AutoMoDeBehaviourRepulsionChocolate.cpp
	modules/AutoMoDeBehaviourRepulsionCoconut.cpp
	modules/AutoMoDeBehaviourRepulsionTuttifrutti.cpp
	modules/AutoMoDeBehaviourStopChocolate.cpp
	modules/AutoMoDeBehaviourStopTuttifrutti.cpp
	modules/AutoMoDeBehaviourExplorationChocolate.cpp
	modules/AutoMoDeBehaviourExplorationCoconut.cpp
	modules/AutoMoDeBehaviourExplorationTuttifrutti.cpp
	modules/AutoMoDeBehaviourGoAwayColorTuttifrutti.cpp
	modules/AutoMoDeBehaviourGoToColorTuttifrutti.cpp
	modules/AutoMoDeBehaviourGenomeHarlequin.cpp
	# Conditions
	modules/AutoMoDeCondition.cpp
	modules/AutoMoDeConditionBlackFloorChocolate.cpp
	modules/AutoMoDeConditionWhiteFloorChocolate.cpp
	modules/AutoMoDeConditionGrayFloorChocolate.cpp
	modules/AutoMoDeConditionNeighborsCountChocolate.cpp
	modules/AutoMoDeConditionInvertedNeighborsCountChocolate.cpp
	modules/AutoMoDeConditionFixedProbabilityChocolate.cpp
	modules/AutoMoDeConditionProbColorTuttifrutti.cpp
	# NEAT
	NEAT/gene.cpp
	NEAT/genome.cpp
	NEAT/innovation.cpp
	NEAT/link.cpp
	NEAT/neat.cpp
	NEAT/network.cpp
	NEAT/nnode.cpp
	NEAT/trait.cpp)

add_executable(automode ${AUTOMODE_HEADERS} ${AUTOMODE_SOURCES})
target_link_libraries(automode argos3plugin_${ARGOS_BUILD_FOR}_epuck)

