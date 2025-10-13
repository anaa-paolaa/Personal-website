#### Creating a multilingual website

##Packages
install.packages('babelquarto', repos = c('https://ropensci.r-universe.dev', 'https://cloud.r-project.org'))
library(babelquarto)
library(fs)
## Settng directory
Personal_website <- path("/Users/anapaola/Desktop/Personal_website")
dir_tree(Personal_website)

## Modigying main language
register_main_language(
  main_language = "fr",
  project_path = Personal_website
)

## More languages
register_further_languages(c("es","en"), Personal_website)

## Rendering
render_website(project_path = Personal_website)
servr::httw(path(Personal_website, "_site"))
