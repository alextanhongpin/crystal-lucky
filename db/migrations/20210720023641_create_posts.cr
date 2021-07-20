class CreatePosts::V20210720023641 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Post) do
      primary_key id : UUID
      add body : String
      add_timestamps
    end
  end

  def rollback
    drop table_for(Post)
  end
end
