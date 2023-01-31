# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Tag
A tag for a pet

    Tag(;
        id=nothing,
        name=nothing,
    )

    - id::Int64
    - name::String
"""
Base.@kwdef mutable struct Tag <: OpenAPI.APIModel
    id::Union{Nothing, Int64} = nothing
    name::Union{Nothing, String} = nothing

    function Tag(id, name, )
        OpenAPI.validate_property(Tag, Symbol("id"), id)
        OpenAPI.validate_property(Tag, Symbol("name"), name)
        return new(id, name, )
    end
end # type Tag

const _property_types_Tag = Dict{Symbol,String}(Symbol("id")=>"Int64", Symbol("name")=>"String", )
OpenAPI.property_type(::Type{ Tag }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Tag[name]))}

function check_required(o::Tag)
    true
end

function OpenAPI.validate_property(::Type{ Tag }, name::Symbol, val)
    if name === Symbol("id")
        OpenAPI.validate_param(name, "Tag", :format, val, "int64")
    end
end

