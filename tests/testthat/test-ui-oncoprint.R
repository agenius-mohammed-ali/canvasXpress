context("canvasXpress Web Charts - Oncoprint")

#--------------------------------------------------------------------
# NOTES:
# In oncoprint plots, the selection/deselection of legends is linked
# to a custom logic of selecting/deselecting series in the plot.
# i.e, It may not be possible to hide or unhide a series by toggling
# the state of corresponding legend.
#--------------------------------------------------------------------


test_that("cXoncoprint1", {
    check_ui_test(cXoncoprint1())
})

test_that("cXoncoprint2", {
    check_ui_test(cXoncoprint2())
})

test_that("cXoncoprint3", {
    check_ui_test(cXoncoprint3())
})

test_that("cXoncoprint4", {
    if (interactive()) {
        check_ui_test(cXoncoprint4())
        warning("The values on Tooltips are different from web. In the R version, there are NaN values while the web has zeroes. ",
                "This is due to the differences in the underlying data")
    } else {
        message("Non-interactive oncoprint-4 test skipped")
    }
})
