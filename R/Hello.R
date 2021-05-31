#' Hello World
#'
#' `hello` says _'Hello, world!'_
#'
#' @param who name (string) of recipient
#' @param lang language code (string) : available : en it fr es de
#' @param langdata description
#'
#' @return `'Hello, world!'`
#'
#' @export

hello <- function(who = "fuckwaddle",lang = "en", langdata = language) {
  if(lang %in% langdata[,1]){
    cat(paste(subset(langdata, code == tolower(lang))[2]), ",",who)
  }else{
      cat(stringr::str_c("language not in langdata,", who,"..."))
    }
}
