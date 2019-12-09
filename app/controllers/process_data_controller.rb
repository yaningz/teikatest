class ProcessDataController < ApplicationController
  def index
    @best_seller = get_best_selling("2017-05-02", "2017-05-31").first
  end

  def get_best_selling(start_date, end_date)
    Product.joins("LEFT JOIN ads ON products.asin = ads.asin")
        .where("date > ?", start_date).where("date < ?", end_date)
        .select("products.name, SUM(ads.sales) as sales_total")
        .group(:name)
        .order("SUM(ads.sales) DESC")
        .limit(1)
  end
end
