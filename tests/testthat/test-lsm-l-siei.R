landscapemetrics_landscape_landscape_value <- lsm_l_siei(landscape)

test_that("lsm_l_siei is typestable", {
    expect_s3_class(lsm_l_siei(landscape), "tbl_df")
    expect_s3_class(lsm_l_siei(landscape_stack), "tbl_df")
    expect_s3_class(lsm_l_siei(landscape_list), "tbl_df")
})

test_that("lsm_l_siei returns the desired number of columns", {
    expect_equal(ncol(landscapemetrics_landscape_landscape_value), 6)
})

test_that("lsm_l_siei returns in every column the correct type", {
    expect_type(landscapemetrics_landscape_landscape_value$layer, "integer")
    expect_type(landscapemetrics_landscape_landscape_value$level, "character")
    expect_type(landscapemetrics_landscape_landscape_value$class, "integer")
    expect_type(landscapemetrics_landscape_landscape_value$id, "integer")
    expect_type(landscapemetrics_landscape_landscape_value$metric, "character")
    expect_type(landscapemetrics_landscape_landscape_value$value, "double")
})

