# If necessary, uncomment the line below to include explore_source.
# include: "git_sme.model.lkml"

view: derived_age_total {
  derived_table: {
    sql: SELECT
    age,
    avg(users.age) as average_age
    FROM demo_db.users ;;
    }

  dimension: age {
    type: number
  }
  dimension: average_age {
    type: number
  }

}
