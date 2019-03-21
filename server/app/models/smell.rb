class Smell < ApplicationRecord
  has_many :logs

  def self.categories
    smell_hash = {"Primary" => {
      "Flower" => ["Iris", "Peony", "Elderflower", "Acacia", "Lilac", "Jasmine", "Honeysuckle", "Violet", "Lavender", "Rose", "Potpourri", "Hibiscus"],
      "Citrus" => ["Lime", "Lemon", "Grapefruit", "Orange", "Marmalade"],
      "Tree Fruit" => ["Quince", "Apple", "Pear", "Nectarine", "Peach", "Apricot", "Persimmon"],
      "Tropical Fruit" => ["Pineapple", "Mango", "Guava", "Passion Fruit", "Lychee", "Bubblegum"],
      "Red Fruit" => ["Cranberry", "Red Plum", "Pomegranate", "Sour Cherry", "Strawberry", "Cherry", "Raspberry"],
      "Black Fruit" => ["Boysenberry", "Black Currant", "Black Cherry", "Plum", "Blackberry", "Blueberry", "Olive"],
      "Dried Fruit" => ["Raisin", "Fig", "Date", "Fruitcake"],
      "Noble Rot" => ["Beeswax", "Ginger", "Honey"],
      "Spice" => ["White Pepper", "Red Pepper", "Black Pepper", "Cinnamon", "Anise", "5-Spice", "Fennel", "Eucalyptus", "Mint", "Thyme"],
      "Vegetable" => ["Grass", "Tomato Leaf", "Gooseberry", "Bell Pepper", "Jalapeño", "Bitter Almond", "Tomato", "Sun-Dried Tomato", "Black Tea"],
      "Earth" => ["Clay Pot", "Slate", "Wet Gravel", "Potting Soil", "Red Beet", "Volcanic Rocks", "Petroleum"]
      },
    "Secondary" => {
      "Microbial" => ["Butter", "Cream", "Sourdough", "Lager", "Truffle", "Mushroom"]
      },
    "Tertiary" => {
      "Oak Aging" => ["Vanilla", "Coconut", "Baking Spices", "Cigar Box", "Smoke", "Dill"],
      "General Aging" => ["Dried Fruit", "Nutty Flavors", "Tobacco", "Coffee", "Cocoa", "Leather"]
      },
    "Flaws" => {
      "Cork Taint" => ["Musty Cardboard", "Wet Dog"],
      "Sulfides and Mercaptans" => ["Cured Meat", "Boiled Eggs", "Burnt Rubber", "Lit Match", "Garlic", "Onion", "Cat Pee"],
      "Brettanomyces" => ["Black Cardamon", "Band-Aid", "Sweaty Leather Saddle", "Horse Manure"],
      "Madeirized or Cooked" => ["Toffee", "Stewed Fruit"],
      "Volatile Acidity" => ["Vinegar", "Nail Polish Remover"]
      }
    }
    return smell_hash
  end

end
