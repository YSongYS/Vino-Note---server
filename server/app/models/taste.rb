class Taste < ApplicationRecord
  has_many :logs

  def self.categories(taste_type='all')
    categories = {
      "sweetness" => {
        1 => ["Bone dry", "<1g/L residual sugar"],
        2 => ["Dry", "1-10g/L residual sugar"],
        3 => ["Off-dry", "17-35g/L residual sugar"],
        4 => ["Sweet", "35-120g/L residual sugar"],
        5 => ["Very sweet", "120-220g/L residual sugar"]
      },
      "acidity" => {
        1 => ["Low", "4.5pH"],
        2 => ["Medium low", "4.0pH"],
        3 => ["Average", "3.5pH"],
        4 => ["Sour", "3.0pH"],
        5 => ["Very sour", "2.5pH"]
      },
      "tannin" => {
        1 => ["Low"],
        2 => ["Medium low"],
        3 => ["Average"],
        4 => ["Astringent"],
        5 => ["Very astringent"]
      },
      "alcohol" => {
        1 => ["Low", "<10% ABV"],
        2 => ["Medium low", "10-11.5% ABV"],
        3 => ["Average", "11.5-13.5% ABV"],
        4 => ["Medium high", "13.5-15% ABV"],
        5 => ["High", ">15% ABV"]
      },
      "body" => {
        1 => ["Very light"],
        2 => ["Light bodied"],
        3 => ["Average"],
        4 => ["Medium full"],
        5 => ["Full bodied"]
      }
    }
    return categories if taste_type == "all"
    return categories[taste_type]
  end
end
