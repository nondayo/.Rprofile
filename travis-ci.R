if ("pvm" %in% rownames(installed.packages())) local({
  R.version <- sprintf("%s.%s", R.version$major, R.version$minor)
  cat(sprintf("R.version is %s\n", R.version))
  R.date <- pvm::R.release.dates[R.version] + 7
  cat(sprintf("MRAN Snapshot Date: %s\n", R.date))
  options(repos = c(CRAN = sprintf('https://cran.microsoft.com/snapshot/%s', R.date)))
}) else local({
  options(repos = c(CRAN = "https://cran.r-project.org"))
})

