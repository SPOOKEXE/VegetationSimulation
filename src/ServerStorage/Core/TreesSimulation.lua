
local CONSTANTS = {
	UPDATES_PER_REPRODUCE_CHECK = 100, -- number of growth steps to occur before seed chance is calculated.
	COST_TO_REPRODUCE = 50, -- food cost
}

type GenomeDNA = {
	-- normalize these two below values to 1
	rate_of_growth : number,
	rate_of_preservation : number,
	-- normalize the two below to 1
	branch_preservation_rate : number,
	leaf_food_production_rate : number,
}

type GenomeProperties = {
	chance_of_seed_reproduction_per_leaf : number, -- = (1 - (rate_of_preservation * 0.05))
	food_cost_per_branch : number, -- each branch requires an amount of food to survive, tree needs (TOTAL_BRANCHES * COST_PER_BRANCH) food to sustain the entire tree
}

type Seed = {
	genome : GenomeDNA
}

type Branch = {

}

type Leaves = {

}

type Tree = {
	genome : GenomeDNA,
	genome_properties : GenomeProperties,
	branches : { Branch },

	Reproduce : (Tree) -> Seed,
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
Genome.__index = Genome

function Genome.New()
	return setmetatable({}, Genome)
end

-- // Seed // --
local Seed = {}
Seed.__index = Seed

function Seed.New()
	return setmetatable({}, Seed)
end

-- // Branch // --
local Branch = {}
Branch.__index = Branch

function Branch.New()
	return setmetatable({}, Branch)
end

-- // Leaves // --
local Leaves = {}
Leaves.__index = Leaves

function Leaves.New()
	return setmetatable({}, Leaves)
end

-- // Tree // --
local Tree = {}
Tree.__index = Tree

function Tree.New()
	return setmetatable({}, Tree)
end

-- // Module // --
local Module = {}

function Module.UpdateTrees()

end

function Module.Start()

end

function Module.Init(otherSystems)
	SystemsContainer = otherSystems
end

return Module
