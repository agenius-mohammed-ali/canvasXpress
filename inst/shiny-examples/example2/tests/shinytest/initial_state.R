app <- ShinyDriver$new("../../", seed = 123)
app$snapshotInit("initial_state")

app$setInputs(levelSel = "IA")
app$snapshot()
