### 1
function memoize(f)
    cache = Dict()
    function mem_f(x)
        if haskey(cache, x)
            return cache[x]
        else
            cache[x] = f(x)
            return cache[x]
        end
    end
    return mem_f
end
### 2
rr = memoize(rand)
#Keeps printing the same number
### 3
using Random
function rand_seed(seed)
    rng = MersenneTwister(seed)
    return rand(rng, 1)
end
#Depends on what you mean by work, it generates different random numbers for different seeds and the
# same random number for the same seed
### 4
# a) factorial is pure
# b) getchar is not pure
# c) f is not pure because of the cout
# d) f is not pure because of the static type
### 5
# 2² = 4
id(x) = x
nott(x) = !x
troo(x) = true
falz(x) = false
### 6
#I'm bad at drawing
