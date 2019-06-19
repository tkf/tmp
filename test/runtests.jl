module TestKaleido
using Test

@testset "$file" for file in sort([file for file in readdir(@__DIR__) if
                                   match(r"^test_.*\.jl$", file) !== nothing])
    include(file)
end

using Aqua
using Kaleido
Aqua.test_all(Kaleido)

end  # module
