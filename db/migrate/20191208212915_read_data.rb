class ReadData < ActiveRecord::Migration[6.0]
  def up
    index = 0
    IO.foreach("./db/data/product_report.csv") do |product_line|
      if index == 0
        index += 1
        next
      end

      elements = product_line.chomp!.split(",")
      Product.create(asin: elements[0], name: elements[1])
    end

    index = 0
    IO.foreach("./db/data/keyword_report.csv") do |keyword_line|
      if index == 0
        index += 1
        next
      end

      elements = keyword_line.chomp!.split(",")
      Keyword.create(keyword_id: elements[0], ad_group: elements[1], keyword: elements[2])
    end

    index = 0
    IO.foreach("./db/data/ad_report.csv") do |ad_line|
      if index == 0
        index += 1
        next
      end

      elements = ad_line.chomp!.split(",")
      Ad.create(date: elements[0],
                impressions: elements[1],
                clicks: elements[2],
                sales: elements[3],
                ad_spend: elements[4],
                keyword_id: elements[5],
                asin: elements[6])

    end
  end

  def down;end
end
