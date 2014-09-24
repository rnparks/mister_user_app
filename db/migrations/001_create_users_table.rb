Sequel.migration do
  change do
    create_table(:users) do
      primary_key :id
      String :email, :size=>255
      String :name, size =>64
      String :gener, size => 8
      String :picture, size => 255
      Integer :dob
      String :location, size => 255
      String :password, size => 64
    end
  end
end


