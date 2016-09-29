#' webAPI package
#' 
#' A package accessing the Google geocode API to download coordinates and plot it on a map.
#'
#' @section The webAPI package consists of the following Functions:
#' \link[webAPI]{getURL2R} function that takes postal number, names of the street, city or country in the world encoded into a url. The url then returns a json formatted geodata and then converted to an R object.
#' 
#' \link[webAPI]{get_coor} function extracting the coordinates from a R object returned from the \code{\link{getURL2R}} function. 
#' 
#' \link[webAPI]{plot_map} function that plots the coordinates returned from the \code{\link{get_coor}} in a map of selectable types.
#' 
#' @author Emma Wallentinsson, Zaida Liendeborg
#' 
#'
#' @docType package
#' @name webAPI
NULL