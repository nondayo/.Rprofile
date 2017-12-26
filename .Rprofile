local({
  .path <- file.path(".lib", sprintf("%s.%s", getRversion()$major, getRversion()$minor))
  if (!dir.exists(.path)) {
    dir.create(.path, recursive = TRUE)
  }
  .libPaths(new = .path)
})
