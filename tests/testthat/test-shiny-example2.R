context("shiny_example2")

library(shinytest)

test_that("shiny example 2 - initial_state", {
    skip_on_cran()
    appdir <- system.file(package = "canvasXpress", "shiny-examples/example2")
    expect_pass(testApp(appdir, "initial_state", compareImages = FALSE))
})

test_that("shiny example 2 - primary_plot_factor", {
    skip_on_cran()
    appdir <- system.file(package = "canvasXpress", "shiny-examples/example2")
    expect_pass(testApp(appdir, "primary_plot_factor", compareImages = FALSE))
})
