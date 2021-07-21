class CreateMerchants::V20210721151111 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    execute <<-SQL
      CREATE TABLE IF NOT EXISTS merchants (
        id uuid NOT NULL DEFAULT gen_random_uuid(),
        name text NOT NULL DEFAULT '',
        description text NOT NULL DEFAULT '',
        created_at timestamptz NOT NULL DEFAULT current_timestamp,
        updated_at timestamptz NOT NULL DEFAULT current_timestamp,

        PRIMARY KEY (id)
      );
    SQL
  end

  def rollback
    execute "DROP TABLE merchants"
  end
end
