library(pdftools)

# Specify the paths to the PDF files you want to combine
pdf1 <- "coverletter.pdf"
pdf2 <- "CV.pdf"


# Specify the path for the output PDF
output_pdf <- "casey_cover_letter_and_cv.pdf"

# Combine the PDFs
pdf_combine(c(pdf1, pdf2), output = output_pdf)
