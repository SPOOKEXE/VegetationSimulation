
--[[
	UUIDs are used to keep track of generations and the mutations that occur.
]]

local CONSTANTS = {
	UPDATES_PER_REPRODUCE_CHECK = 100, -- number of growth steps to occur before seed chance is calculated.
	COST_TO_REPRODUCE = 50, -- food cost
}

type GenomeDNA = {
	uuid : string,
	-- normalize these two below values to 1
	rate_of_growth : number,
	rate_of_preservation : number,
	-- normalize the two below to 1
	branch_preservation_rate : number,
	leaf_food_production_rate : number,
}

type GenomeProperties = {
	uuid : string, -- matches the GenomeDNA uuid

	chance_of_seed_reproduction_per_leaf : number, -- = (1 - (rate_of_preservation * 0.05))
	food_cost_per_branch : number, -- each branch requires an amount of food to survive, tree needs (TOTAL_BRANCHES * COST_PER_BRANCH) food to sustain the entire tree
}

type Seed = {
	uuid : string,

	genome : GenomeDNA,
}

type Branch = {
	uuid : string,

	root : Branch?,
	leaves : { Leaf },
}

type Leaf = {
	uuid : string,

}

type Tree = {
	uuid : string,

	genome : GenomeDNA,
	genome_properties : GenomeProperties,
	branches : { Branch },

	Reproduce : (Tree) -> Seed,
}

type HistoryItem = {
	object : Seed | Branch | Leaf | Tree,
	timestamp : number, -- time since simulation started
}

type HistoryCache = {
	total_items : number, -- total history items
	total_steps : number, -- simulation ticks parsed
	total_deltatime : number, -- total time passed in the simulation
	history : { HistoryItem }, -- history items
}

type Simulation = {

}

local SystemsContainer = {}

--[[
	local CONSTANTS = {
		COST_PER_LEAF = 2,
		COST_PER_BRANCH = 1,
		LEAF_PRODUCTION = 3,
	}

	return {
		-- more leaves = more energy production during day but cost during night
		LEAVES_DENSITY = 0.3,
		-- more branches = longer life = more leaves = constant round-time cost
		BRANCH_DENSITY = 0.3,

		-- weighted chance for branch extension
		CHANCE_FOR_LEAVES = 0.5,
		CHANCE_FOR_BRANCH = 0.5,
	}
]]

-- // Genome // --
local Genome = {}

function Genome.New()
	return {}
end

-- // Seed // --
local Seed = {}

function Seed.New()
	return {}
end

-- // Branch // --
local Branch = {}

function Branch.New()
	return {}
end

-- // Leaves // --
local Leaves = {}

function Leaves.New()
	return {}
end

-- // Tree // --
local Tree = {}

function Tree.New()
	return {}
end

function Tree.Update( tree )

end

-- // Simulation // --
local Simulation = {}

function Simulation.New()
	return {}
end

function Simulation.GenerateRandomSeeds( sim : Simulation, total : number )

end

function Simulation.Update( sim : Simulation, dt : number )

end

-- // Module // --
local Module = {}

function Module.UpdateTrees( dt : number )

end

function Module.Start()

	local DEFAULT_SIMULATION = Simulation.New()
	Simulation:GenerateRandomSeeds(DEFAULT_SIMULATION)

end

function Module.Init(otherSystems)
	SystemsContainer = otherSystems
end

return Module
