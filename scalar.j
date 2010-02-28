sign(x::Scalar) = (x < 0 ? -1 : (x > 0 ? +1 : 0))
signbit(x::Scalar) = (x < 0 ? -1 : +1)
signbit(x::Float) = (x < 0 ? -1 : (x > 0 ? 1 : (1.0/x < 0 ? -1 : +1)))

conj(x::Scalar) = x
transpose(x::Scalar) = x
ctranspose(x::Scalar) = conj(transpose(x))

max(x::Scalar, y::Scalar) = x > y ? x : y
min(x::Scalar, y::Scalar) = x < y ? x : y
sum(x::Scalar, y::Scalar) = x + y
prod(x::Scalar, y::Scalar) = x * y
all(x::Scalar, y::Scalar) = x && y ? true : false
any(x::Scalar, y::Scalar) = x || y ? true : false

max(xs::Scalar...) = max(xs)
min(xs::Scalar...) = min(xs)
sum(xs::Scalar...) = sum(xs)
prod(xs::Scalar...) = prod(xs)
any(xs::Scalar...) = any(xs)
all(xs::Scalar...) = all(xs)
