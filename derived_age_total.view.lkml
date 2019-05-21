# If necessary, uncomment the line below to include explore_source.
# include: "git_sme.model.lkml"

view: derived_age_total {
  derived_table: {
    explore_source: users {
      column: age {}
      column: count {}
    }
  }

  dimension: age {
    type: number
  }
  dimension: count {
    type: number
  }
  measure: us_average{
    type: average
    sql: ${age}  ;;
  }
}
