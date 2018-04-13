class AddRankingToProviders < ActiveRecord::Migration[5.1]
  def change
    change_table :providers do |t|
      t.integer :provider_ranking
    end
  end
end
