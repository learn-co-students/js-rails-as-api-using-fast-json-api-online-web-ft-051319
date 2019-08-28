class BirdSerializer
  include FastJsonapi::ObjectSerializer
  attributes :created_at, :name, :species
end
