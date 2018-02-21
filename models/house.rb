require_relative("../db/sql_runner.rb")

class House

  attr_reader :id, :name, :logo_url

  def initialize(options)
    @id = options["id"].to_i
    @name = options["name"]
    @logo_url = options["logo_url"]
  end

  def save()
    sql = "INSERT INTO houses (name, logo_url)
    VALUES ($1, $2)
    RETURNING *;"
    values = [@name, @logo_url]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i
  end

  def House.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    return houses.map { |house| House.new(house)  }
  end

  def House.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)
    return House.new(house.first())
  end

  def House.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)

  end

end
