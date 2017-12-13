local({
  .path <- file.path(".lib", sprintf("%s.%s", getRversion()$major, getRversion()$minor))
  if (!dir.exists(.path) & interactive()) {
    .user.response <- menu(c("yes", "no"), title = sprintf("Do you want to create the local package path: %s ?", .path)) 
    if (.user.response == 1) {
      dir.create(.path)
    }
  }
  .libPaths(new = .path)
})
