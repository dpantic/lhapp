json.array!(@consumable_materials) do |consumable_material|
  json.extract! consumable_material, :product_type, :description, :add_infos, :mat_nr, :part_number
  json.url consumable_material_url(consumable_material, format: :json)
end