# require("Distributions")
# require("Cubature")
# require("Optim")
# require("NumericExtensions")
# require("StatsBase")


module Nonparametric

using Distributions
# using Cubature
using Optim
using NumericExtensions
using StatsBase
import StatsBase: RealVector, RealMatrix
 Base.@math_const invsqrt2pi 0.398942280401432677939946 big(1.)/sqrt(big(2.)*π)



export  kde, kerneldensity, Gkernel, Ekernel,Gammakernel, Betakernel,
        LP0, LP1, npr,
        bwnormal, bwcv, bwlp0, bwlp1,bwreg, bwkd,
#         Sind,
        BootstrapCB
#         BootstrapGoodness


include("kernel.jl")
include("regression.jl")
include("density.jl")
include("bandwidth.jl")
# include("semiparametric.jl")
include("confidenceband.jl")
# include("goodnessoffit.jl")


end
