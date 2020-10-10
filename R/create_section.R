create_section <- function(title) {
  
  # Inserts "## Title (auto)"
  pander::pandoc.header(title, level = 2)
  

  
  # a list, formatted as Markdown
  # adding also empty lines, to be sure that this is valid Markdown
  pander::pandoc.p('')
}