module CondaIssue

using PythonCall

const _np = Ref{Py}()

function __init__()
    _np[] = pyimport("numpy")
end

function numpy_norm(x::AbstractVector)
    return _np[].linalg.norm(x)
end

export numpy_norm

end # module CondaIssue
