# This script runs all the PolyhedralRelaxation examples.
# Usage: julia --project=examples run_examples.jl

using Test

const EXAMPLES = filter(
    ex -> endswith(ex, ".jl") && ex != "run_examples.jl",
    readdir(@__DIR__),
)

@testset "run_examples.jl" begin
    @testset "$(example)" for example in EXAMPLES
        include(example)
    end
end
