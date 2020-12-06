require "csv"

# rakeタスク：rake import:salons
namespace :import_csv do
  desc "Salon CSVデータのインポート"

  task salons: :environment do
    Salon.import("db/csv_data/salons_data.csv")
  end
end
