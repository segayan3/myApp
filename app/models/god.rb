class God < ActiveRecord::Base
  #mount_uploader :sku, OrderUploader
  
  # アップロードされ一時保存されたCSVをレコードに保存
  def self.upload(file)
    CSV.foreach(file.path, headers: true) do |row|
      # IDが見つかればレコードを呼び出し、見つからなければ新しく作成
      god = find_by(id: row["id"]) || new
      # CSVからデータを取得しレコードに設定
      god.attributes = row.to_hash.slice(*updatable_attributes)
      # レコードを保存する
      god.save!
    end
  end
  
  # 更新を許可するカラムを定義
  def self.updatable_attributes
    ["sku", "total"]
  end
end
