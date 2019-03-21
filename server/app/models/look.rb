class Look < ApplicationRecord
  has_many :logs

  def self.color_names
    colors = { "#f4f3de" => "Pale Straw",  "#ebe4b3" => "Medium Straw",  "#e3de9a" => "Deep Straw",  "#f5f3b6" => "Pale Yellow",  "#f5ed80" => "Medium Yellow",  "#f0dc47"=> "Deep Yellow",  "#f0e2a1" => "Pale Gold",  "#f3e395" => "Medium Gold",  "#f2cb56"=> "Deep Gold",  "#dca437" => "Pale Brown",  "#af6329" => "Medium Brown",  "#935129"=> "Deep Brown",  "#fbc450" => "Pale Amber",  "#f29e24" => "Medium Amber",  "#e37727"=> "Deep Amber",  "#f3cdac" => "Pale Cooper",  "#f49f66" => "Medium Cooper",  "#e06d34" => "Deep Cooper",  "#efbaac" => "Pale Salmon",  "#f39e8e" => "Medium Salmon",  "#ef7a5e" => "Deep Salmon",  "#f5d4d5" => "Pale Pink",  "#f1a4a8" => "Medium Pink",  "#f3858b"=> "Deep Pink",  "#a21d3c" => "Pale Ruby",  "#891b34" => "Medium Ruby",  "#701b2a" => "Deep Ruby",  "#a11d46" => "Pale Purple",  "#581930" => "Medium Purple",  "#2b121a"=> "Deep Purple",  "#c92f27" => "Pale Garnet",  "#ac2529" => "Medium Garnet",  "#671514"=> "Deep Garnet",  "#a83e25" => "Pale Tawny",  "#9c3c23" => "Medium Tawny",  "#702017" => "Deep Tawny"}
    return colors
  end 

end
