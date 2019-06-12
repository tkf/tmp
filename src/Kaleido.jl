@doc let path = joinpath(dirname(@__DIR__), "README.md")
    include_dependency(path)
    replace(read(path, String), "```julia" => "```jldoctest")
end ->
module Kaleido

export
    @batchlens,
    BijectionLens,
    FlatLens,
    IndexBatchLens,
    KeyBatchLens,
    MultiLens,
    PropertyBatchLens,
    batch,
    getting,
    gettingasℝ₊,
    gettingasℝ₋,
    gettingas𝕀,
    setting,
    settingasℝ₊,
    settingasℝ₋,
    settingas𝕀

using Setfield
using Setfield: ComposedLens, IdentityLens, PropertyLens
using Requires

include("base.jl")
include("lensutils.jl")
include("batchsetters.jl")
include("batchlenses.jl")
include("multilens.jl")
include("flatlens.jl")
include("batching.jl")
include("bijection.jl")

function __init__()
    @require(TransformVariables="84d833dd-6860-57f9-a1a7-6da5db126cff",
             include("transformvariables.jl"))
end

end # module
