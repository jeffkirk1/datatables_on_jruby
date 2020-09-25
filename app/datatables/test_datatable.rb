class TestDatatable < AjaxDatatablesRails::ActiveRecord

  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
      id:         { source: "Test.id", searchable: false },
      name:       { source: "Test.name", cond: :like },
      position:   { source: "Test.position", cond: :like },
      office:     { source: "Test.office", cond: :like },
      start_date: { source: "Test.start_date", searchable: false},
      salary:     { source: "Test.salary", searchable: false }
    }
  end

  def data
    records.map do |record|
      {
        # example:
        # id: record.id,
        # name: record.name
        id: record.id,
        name: record.name,
        position: record.position,
        office: record.office,
        start_date: record.start_date,
        salary: record.salary
      }
    end
  end

  def get_raw_records
    Test.all
  end

end
