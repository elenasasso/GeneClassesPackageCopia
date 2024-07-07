#' @title Get id attribute
#' @description Getter for id attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the id attribute.
#' @export
setGeneric('id', function(x) standardGeneric('id'))
#' @export
setMethod('id', 'Gene', function(x) x@id)

#' @title Set id attribute
#' @description Setter for id attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the id attribute.
#' @return The modified object.
#' @export
setGeneric('id<-', function(x, value) standardGeneric('id<-'))
#' @export
setMethod('id<-', 'Gene', function(x, value) {
  x@id <- value
  x
})

#' @title Get Hugo_symbol attribute
#' @description Getter for Hugo_symbol attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the Hugo_symbol attribute.
#' @export
setGeneric('Hugo_symbol', function(x) standardGeneric('Hugo_symbol'))
#' @export
setMethod('Hugo_symbol', 'Gene', function(x) x@Hugo_symbol)

#' @title Set Hugo_symbol attribute
#' @description Setter for Hugo_symbol attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the Hugo_symbol attribute.
#' @return The modified object.
#' @export
setGeneric('Hugo_symbol<-', function(x, value) standardGeneric('Hugo_symbol<-'))
#' @export
setMethod('Hugo_symbol<-', 'Gene', function(x, value) {
  x@Hugo_symbol <- value
  x
})

#' @title Get description attribute
#' @description Getter for description attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the description attribute.
#' @export
setGeneric('description', function(x) standardGeneric('description'))
#' @export
setMethod('description', 'Gene', function(x) x@description)

#' @title Set description attribute
#' @description Setter for description attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the description attribute.
#' @return The modified object.
#' @export
setGeneric('description<-', function(x, value) standardGeneric('description<-'))
#' @export
setMethod('description<-', 'Gene', function(x, value) {
  x@description <- value
  x
})

#' @title Get chrom attribute
#' @description Getter for chrom attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the chrom attribute.
#' @export
setGeneric('chrom', function(x) standardGeneric('chrom'))
#' @export
setMethod('chrom', 'Gene', function(x) x@chrom)

#' @title Set chrom attribute
#' @description Setter for chrom attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the chrom attribute.
#' @return The modified object.
#' @export
setGeneric('chrom<-', function(x, value) standardGeneric('chrom<-'))
#' @export
setMethod('chrom<-', 'Gene', function(x, value) {
  x@chrom <- value
  x
})

#' @title Get start attribute
#' @description Getter for start attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the start attribute.
#' @export
setGeneric('start', function(x) standardGeneric('start'))
#' @export
setMethod('start', 'Gene', function(x) x@start)

#' @title Set start attribute
#' @description Setter for start attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the start attribute.
#' @return The modified object.
#' @export
setGeneric('start<-', function(x, value) standardGeneric('start<-'))
#' @export
setMethod('start<-', 'Gene', function(x, value) {
  x@start <- value
  x
})

#' @title Get end attribute
#' @description Getter for end attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the end attribute.
#' @export
setGeneric('end', function(x) standardGeneric('end'))
#' @export
setMethod('end', 'Gene', function(x) x@end)

#' @title Set end attribute
#' @description Setter for end attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the end attribute.
#' @return The modified object.
#' @export
setGeneric('end<-', function(x, value) standardGeneric('end<-'))
#' @export
setMethod('end<-', 'Gene', function(x, value) {
  x@end <- value
  x
})

#' @title Get strand attribute
#' @description Getter for strand attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the strand attribute.
#' @export
setGeneric('strand', function(x) standardGeneric('strand'))
#' @export
setMethod('strand', 'Gene', function(x) x@strand)

#' @title Set strand attribute
#' @description Setter for strand attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the strand attribute.
#' @return The modified object.
#' @export
setGeneric('strand<-', function(x, value) standardGeneric('strand<-'))
#' @export
setMethod('strand<-', 'Gene', function(x, value) {
  x@strand <- value
  x
})

#' @title Get TSS attribute
#' @description Getter for TSS attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the TSS attribute.
#' @export
setGeneric('TSS', function(x) standardGeneric('TSS'))
#' @export
setMethod('TSS', 'Gene', function(x) x@TSS)

#' @title Set TSS attribute
#' @description Setter for TSS attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the TSS attribute.
#' @return The modified object.
#' @export
setGeneric('TSS<-', function(x, value) standardGeneric('TSS<-'))
#' @export
setMethod('TSS<-', 'Gene', function(x, value) {
  x@TSS <- value
  x
})

#' @title Get TTS attribute
#' @description Getter for TTS attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the TTS attribute.
#' @export
setGeneric('TTS', function(x) standardGeneric('TTS'))
#' @export
setMethod('TTS', 'Gene', function(x) x@TTS)

#' @title Set TTS attribute
#' @description Setter for TTS attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the TTS attribute.
#' @return The modified object.
#' @export
setGeneric('TTS<-', function(x, value) standardGeneric('TTS<-'))
#' @export
setMethod('TTS<-', 'Gene', function(x, value) {
  x@TTS <- value
  x
})

#' @title Get number_exon attribute
#' @description Getter for number_exon attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the number_exon attribute.
#' @export
setGeneric('number_exon', function(x) standardGeneric('number_exon'))
#' @export
setMethod('number_exon', 'Gene', function(x) x@number_exon)

#' @title Set number_exon attribute
#' @description Setter for number_exon attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the number_exon attribute.
#' @return The modified object.
#' @export
setGeneric('number_exon<-', function(x, value) standardGeneric('number_exon<-'))
#' @export
setMethod('number_exon<-', 'Gene', function(x, value) {
  x@number_exon <- value
  x
})

#' @title Get location attribute
#' @description Getter for location attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the location attribute.
#' @export
setGeneric('location', function(x) standardGeneric('location'))
#' @export
setMethod('location', 'Gene', function(x) x@location)

#' @title Set location attribute
#' @description Setter for location attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the location attribute.
#' @return The modified object.
#' @export
setGeneric('location<-', function(x, value) standardGeneric('location<-'))
#' @export
setMethod('location<-', 'Gene', function(x, value) {
  x@location <- value
  x
})

#' @title Get category attribute
#' @description Getter for category attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the category attribute.
#' @export
setGeneric('category', function(x) standardGeneric('category'))
#' @export
setMethod('category', 'Gene', function(x) x@category)

#' @title Set category attribute
#' @description Setter for category attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the category attribute.
#' @return The modified object.
#' @export
setGeneric('category<-', function(x, value) standardGeneric('category<-'))
#' @export
setMethod('category<-', 'Gene', function(x, value) {
  x@category <- value
  x
})

#' @title Get gene_product attribute
#' @description Getter for gene_product attribute of Gene class.
#' @param x An object of class Gene.
#' @return The value of the gene_product attribute.
#' @export
setGeneric('gene_product', function(x) standardGeneric('gene_product'))
#' @export
setMethod('gene_product', 'Gene', function(x) x@gene_product)

#' @title Set gene_product attribute
#' @description Setter for gene_product attribute of Gene class.
#' @param x An object of class Gene.
#' @param value The value to set for the gene_product attribute.
#' @return The modified object.
#' @export
setGeneric('gene_product<-', function(x, value) standardGeneric('gene_product<-'))
#' @export
setMethod('gene_product<-', 'Gene', function(x, value) {
  x@gene_product <- value
  x
})

