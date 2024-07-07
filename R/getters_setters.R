#' @export
setGeneric('id', function(x) standardGeneric('id'))
#' @export
setGeneric('id<-', function(x, value) standardGeneric('id<-<-'))
#' @export
setMethod('id', 'Gene', function(x) x@id)
#' @export
setMethod('id<-', 'Gene', function(x, value) {
  x@id <- value
  x
})
#' @export
setGeneric('Hugo_symbol', function(x) standardGeneric('Hugo_symbol'))
#' @export
setGeneric('Hugo_symbol<-', function(x, value) standardGeneric('Hugo_symbol<-<-'))
#' @export
setMethod('Hugo_symbol', 'Gene', function(x) x@Hugo_symbol)
#' @export
setMethod('Hugo_symbol<-', 'Gene', function(x, value) {
  x@Hugo_symbol <- value
  x
})
#' @export
setGeneric('description', function(x) standardGeneric('description'))
#' @export
setGeneric('description<-', function(x, value) standardGeneric('description<-<-'))
#' @export
setMethod('description', 'Gene', function(x) x@description)
#' @export
setMethod('description<-', 'Gene', function(x, value) {
  x@description <- value
  x
})
#' @export
setGeneric('chrom', function(x) standardGeneric('chrom'))
#' @export
setGeneric('chrom<-', function(x, value) standardGeneric('chrom<-<-'))
#' @export
setMethod('chrom', 'Gene', function(x) x@chrom)
#' @export
setMethod('chrom<-', 'Gene', function(x, value) {
  x@chrom <- value
  x
})
#' @export
setGeneric('start', function(x) standardGeneric('start'))
#' @export
setGeneric('start<-', function(x, value) standardGeneric('start<-<-'))
#' @export
setMethod('start', 'Gene', function(x) x@start)
#' @export
setMethod('start<-', 'Gene', function(x, value) {
  x@start <- value
  x
})
#' @export
setGeneric('end', function(x) standardGeneric('end'))
#' @export
setGeneric('end<-', function(x, value) standardGeneric('end<-<-'))
#' @export
setMethod('end', 'Gene', function(x) x@end)
#' @export
setMethod('end<-', 'Gene', function(x, value) {
  x@end <- value
  x
})
#' @export
setGeneric('strand', function(x) standardGeneric('strand'))
#' @export
setGeneric('strand<-', function(x, value) standardGeneric('strand<-<-'))
#' @export
setMethod('strand', 'Gene', function(x) x@strand)
#' @export
setMethod('strand<-', 'Gene', function(x, value) {
  x@strand <- value
  x
})
#' @export
setGeneric('TSS', function(x) standardGeneric('TSS'))
#' @export
setGeneric('TSS<-', function(x, value) standardGeneric('TSS<-<-'))
#' @export
setMethod('TSS', 'Gene', function(x) x@TSS)
#' @export
setMethod('TSS<-', 'Gene', function(x, value) {
  x@TSS <- value
  x
})
#' @export
setGeneric('TTS', function(x) standardGeneric('TTS'))
#' @export
setGeneric('TTS<-', function(x, value) standardGeneric('TTS<-<-'))
#' @export
setMethod('TTS', 'Gene', function(x) x@TTS)
#' @export
setMethod('TTS<-', 'Gene', function(x, value) {
  x@TTS <- value
  x
})
#' @export
setGeneric('number_exon', function(x) standardGeneric('number_exon'))
#' @export
setGeneric('number_exon<-', function(x, value) standardGeneric('number_exon<-<-'))
#' @export
setMethod('number_exon', 'Gene', function(x) x@number_exon)
#' @export
setMethod('number_exon<-', 'Gene', function(x, value) {
  x@number_exon <- value
  x
})
#' @export
setGeneric('location', function(x) standardGeneric('location'))
#' @export
setGeneric('location<-', function(x, value) standardGeneric('location<-<-'))
#' @export
setMethod('location', 'Gene', function(x) x@location)
#' @export
setMethod('location<-', 'Gene', function(x, value) {
  x@location <- value
  x
})
#' @export
setGeneric('category', function(x) standardGeneric('category'))
#' @export
setGeneric('category<-', function(x, value) standardGeneric('category<-<-'))
#' @export
setMethod('category', 'Gene', function(x) x@category)
#' @export
setMethod('category<-', 'Gene', function(x, value) {
  stop(paste('Cannot modify the', attr, 'slot'))
})
#' @export
setGeneric('gene_product', function(x) standardGeneric('gene_product'))
#' @export
setGeneric('gene_product<-', function(x, value) standardGeneric('gene_product<-<-'))
#' @export
setMethod('gene_product', 'Gene', function(x) x@gene_product)
#' @export
setMethod('gene_product<-', 'Gene', function(x, value) {
  stop(paste('Cannot modify the', attr, 'slot'))
})
#' @export
setGeneric('specific_aa', function(x) standardGeneric('specific_aa'))
#' @export
setGeneric('specific_aa<-', function(x, value) standardGeneric('specific_aa<-<-'))
#' @export
setMethod('specific_aa', 'tRNA_Gene', function(x) x@specific_aa)
#' @export
setMethod('specific_aa<-', 'tRNA_Gene', function(x, value) {
  x@specific_aa <- value
  x
})
#' @export
setGeneric('tRNA_ID', function(x) standardGeneric('tRNA_ID'))
#' @export
setGeneric('tRNA_ID<-', function(x, value) standardGeneric('tRNA_ID<-<-'))
#' @export
setMethod('tRNA_ID', 'tRNA_Gene', function(x) x@tRNA_ID)
#' @export
setMethod('tRNA_ID<-', 'tRNA_Gene', function(x, value) {
  x@tRNA_ID <- value
  x
})
#' @export
setGeneric('length_tRNA', function(x) standardGeneric('length_tRNA'))
#' @export
setGeneric('length_tRNA<-', function(x, value) standardGeneric('length_tRNA<-<-'))
#' @export
setMethod('length_tRNA', 'tRNA_Gene', function(x) x@length_tRNA)
#' @export
setMethod('length_tRNA<-', 'tRNA_Gene', function(x, value) {
  x@length_tRNA <- value
  x
})
#' @export
setGeneric('CDS_start', function(x) standardGeneric('CDS_start'))
#' @export
setGeneric('CDS_start<-', function(x, value) standardGeneric('CDS_start<-<-'))
#' @export
setMethod('CDS_start', 'CodingGene', function(x) x@CDS_start)
#' @export
setMethod('CDS_start<-', 'CodingGene', function(x, value) {
  x@CDS_start <- value
  x
})
#' @export
setGeneric('CDS_end', function(x) standardGeneric('CDS_end'))
#' @export
setGeneric('CDS_end<-', function(x, value) standardGeneric('CDS_end<-<-'))
#' @export
setMethod('CDS_end', 'CodingGene', function(x) x@CDS_end)
#' @export
setMethod('CDS_end<-', 'CodingGene', function(x, value) {
  x@CDS_end <- value
  x
})
#' @export
setGeneric('protein_ID', function(x) standardGeneric('protein_ID'))
#' @export
setGeneric('protein_ID<-', function(x, value) standardGeneric('protein_ID<-<-'))
#' @export
setMethod('protein_ID', 'CodingGene', function(x) x@protein_ID)
#' @export
setMethod('protein_ID<-', 'CodingGene', function(x, value) {
  x@protein_ID <- value
  x
})
#' @export
setGeneric('length_protein', function(x) standardGeneric('length_protein'))
#' @export
setGeneric('length_protein<-', function(x, value) standardGeneric('length_protein<-<-'))
#' @export
setMethod('length_protein', 'CodingGene', function(x) x@length_protein)
#' @export
setMethod('length_protein<-', 'CodingGene', function(x, value) {
  x@length_protein <- value
  x
})
#' @export
setGeneric('specific_RNA', function(x) standardGeneric('specific_RNA'))
#' @export
setGeneric('specific_RNA<-', function(x, value) standardGeneric('specific_RNA<-<-'))
#' @export
setMethod('specific_RNA', 'rRNA_Gene', function(x) x@specific_RNA)
#' @export
setMethod('specific_RNA<-', 'rRNA_Gene', function(x, value) {
  x@specific_RNA <- value
  x
})
#' @export
setGeneric('rRNA_ID', function(x) standardGeneric('rRNA_ID'))
#' @export
setGeneric('rRNA_ID<-', function(x, value) standardGeneric('rRNA_ID<-<-'))
#' @export
setMethod('rRNA_ID', 'rRNA_Gene', function(x) x@rRNA_ID)
#' @export
setMethod('rRNA_ID<-', 'rRNA_Gene', function(x, value) {
  x@rRNA_ID <- value
  x
})
#' @export
setGeneric('length_rRNA', function(x) standardGeneric('length_rRNA'))
#' @export
setGeneric('length_rRNA<-', function(x, value) standardGeneric('length_rRNA<-<-'))
#' @export
setMethod('length_rRNA', 'rRNA_Gene', function(x) x@length_rRNA)
#' @export
setMethod('length_rRNA<-', 'rRNA_Gene', function(x, value) {
  x@length_rRNA <- value
  x
})
#' @export
setGeneric('length_lncRNA', function(x) standardGeneric('length_lncRNA'))
#' @export
setGeneric('length_lncRNA<-', function(x, value) standardGeneric('length_lncRNA<-<-'))
#' @export
setMethod('length_lncRNA', 'lncRNA_Gene', function(x) x@length_lncRNA)
#' @export
setMethod('length_lncRNA<-', 'lncRNA_Gene', function(x, value) {
  x@length_lncRNA <- value
  x
})
#' @export
setGeneric('lncRNA_ID', function(x) standardGeneric('lncRNA_ID'))
#' @export
setGeneric('lncRNA_ID<-', function(x, value) standardGeneric('lncRNA_ID<-<-'))
#' @export
setMethod('lncRNA_ID', 'lncRNA_Gene', function(x) x@lncRNA_ID)
#' @export
setMethod('lncRNA_ID<-', 'lncRNA_Gene', function(x, value) {
  x@lncRNA_ID <- value
  x
})
#' @export
setGeneric('type_RNA', function(x) standardGeneric('type_RNA'))
#' @export
setGeneric('type_RNA<-', function(x, value) standardGeneric('type_RNA<-<-'))
#' @export
setMethod('type_RNA', 'lncRNA_Gene', function(x) x@type_RNA)
#' @export
setMethod('type_RNA<-', 'lncRNA_Gene', function(x, value) {
  stop(paste('Cannot modify the', attr, 'slot'))
})
#' @export
setGeneric('length_sncRNA', function(x) standardGeneric('length_sncRNA'))
#' @export
setGeneric('length_sncRNA<-', function(x, value) standardGeneric('length_sncRNA<-<-'))
#' @export
setMethod('length_sncRNA', 'sncRNA_Gene', function(x) x@length_sncRNA)
#' @export
setMethod('length_sncRNA<-', 'sncRNA_Gene', function(x, value) {
  x@length_sncRNA <- value
  x
})
#' @export
setGeneric('sncRNA_ID', function(x) standardGeneric('sncRNA_ID'))
#' @export
setGeneric('sncRNA_ID<-', function(x, value) standardGeneric('sncRNA_ID<-<-'))
#' @export
setMethod('sncRNA_ID', 'sncRNA_Gene', function(x) x@sncRNA_ID)
#' @export
setMethod('sncRNA_ID<-', 'sncRNA_Gene', function(x, value) {
  x@sncRNA_ID <- value
  x
})
#' @export
setGeneric('miRNA_ID', function(x) standardGeneric('miRNA_ID'))
#' @export
setGeneric('miRNA_ID<-', function(x, value) standardGeneric('miRNA_ID<-<-'))
#' @export
setMethod('miRNA_ID', 'miRNA_Gene', function(x) x@miRNA_ID)
#' @export
setMethod('miRNA_ID<-', 'miRNA_Gene', function(x, value) {
  x@miRNA_ID <- value
  x
})
#' @export
setGeneric('RNA_target', function(x) standardGeneric('RNA_target'))
#' @export
setGeneric('RNA_target<-', function(x, value) standardGeneric('RNA_target<-<-'))
#' @export
setMethod('RNA_target', 'miRNA_Gene', function(x) x@RNA_target)
#' @export
setMethod('RNA_target<-', 'miRNA_Gene', function(x, value) {
  x@RNA_target <- value
  x
})
#' @export
setGeneric('snRNA_ID', function(x) standardGeneric('snRNA_ID'))
#' @export
setGeneric('snRNA_ID<-', function(x, value) standardGeneric('snRNA_ID<-<-'))
#' @export
setMethod('snRNA_ID', 'snRNA_Gene', function(x) x@snRNA_ID)
#' @export
setMethod('snRNA_ID<-', 'snRNA_Gene', function(x, value) {
  x@snRNA_ID <- value
  x
})
#' @export
setGeneric('snoRNA_ID', function(x) standardGeneric('snoRNA_ID'))
#' @export
setGeneric('snoRNA_ID<-', function(x, value) standardGeneric('snoRNA_ID<-<-'))
#' @export
setMethod('snoRNA_ID', 'snoRNA_Gene', function(x) x@snoRNA_ID)
#' @export
setMethod('snoRNA_ID<-', 'snoRNA_Gene', function(x, value) {
  x@snoRNA_ID <- value
  x
})
