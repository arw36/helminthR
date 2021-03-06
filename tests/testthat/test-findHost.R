context("findHost")

test_that("findHost finds the host", {
  skip_on_cran()
	mousey <- findHost(genus="Peromyscus", species="leucopus", citation=TRUE)
	expect_is(mousey, "data.frame")
	expect_more_than(nrow(mousey), 1)

	nothing <- findHost(genus = "Nothing")
	expect_equal(nrow(nothing),0)

	wildMousey <- findHost(genus="Peromyscus", species="leucopus", citation=TRUE, hostState=1)
	expect_is(wildMousey, "data.frame")

})
