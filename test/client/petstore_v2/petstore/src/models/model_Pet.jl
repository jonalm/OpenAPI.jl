# This file was generated by the Julia OpenAPI Code Generator
# Do not modify this file directly. Modify the OpenAPI specification instead.


@doc raw"""Pet

    Pet(;
        id=nothing,
        category=nothing,
        name=nothing,
        photoUrls=nothing,
        tags=nothing,
        status=nothing,
    )

    - id::Int64
    - category::Category
    - name::String
    - photoUrls::Vector{String}
    - tags::Vector{Tag}
    - status::String : pet status in the store
"""
Base.@kwdef mutable struct Pet <: OpenAPI.APIModel
    id::Union{Nothing, Int64} = nothing
    category = nothing # spec type: Union{ Nothing, Category }
    name::Union{Nothing, String} = nothing
    photoUrls::Union{Nothing, Vector{String}} = nothing
    tags::Union{Nothing, Vector} = nothing # spec type: Union{ Nothing, Vector{Tag} }
    status::Union{Nothing, String} = nothing

    function Pet(id, category, name, photoUrls, tags, status, )
        OpenAPI.validate_property(Pet, Symbol("id"), id)
        OpenAPI.validate_property(Pet, Symbol("category"), category)
        OpenAPI.validate_property(Pet, Symbol("name"), name)
        OpenAPI.validate_property(Pet, Symbol("photoUrls"), photoUrls)
        OpenAPI.validate_property(Pet, Symbol("tags"), tags)
        OpenAPI.validate_property(Pet, Symbol("status"), status)
        return new(id, category, name, photoUrls, tags, status, )
    end
end # type Pet

const _property_types_Pet = Dict{Symbol,String}(Symbol("id")=>"Int64", Symbol("category")=>"Category", Symbol("name")=>"String", Symbol("photoUrls")=>"Vector{String}", Symbol("tags")=>"Vector{Tag}", Symbol("status")=>"String", )
OpenAPI.property_type(::Type{ Pet }, name::Symbol) = Union{Nothing,eval(Base.Meta.parse(_property_types_Pet[name]))}

function check_required(o::Pet)
    o.name === nothing && (return false)
    o.photoUrls === nothing && (return false)
    true
end

function OpenAPI.validate_property(::Type{ Pet }, name::Symbol, val)
    if name === Symbol("id")
        OpenAPI.validate_param(name, "Pet", :format, val, "int64")
    end
    if name === Symbol("status")
        OpenAPI.validate_param(name, "Pet", :enum, val, ["available", "pending", "sold"])
    end
end

