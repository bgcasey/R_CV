library(pdftools)
library(magick)

# combine PDF files ----
# Specify the paths to the PDF files you want to combine
pdf1 <- "coverletter.pdf"
pdf2 <- "CV.pdf"


# Specify the path for the output PDF
output_pdf <- "casey_cover_letter_and_cv.pdf"

# Combine the PDFs
pdf_combine(c(pdf1, pdf2), output = output_pdf)


# Convert PDF to an image ----
# Specify the path to your PDF
pdf_path <- "CV.pdf"

# Extract all pages as images
pdf_convert(pdf_path, format = "png", dpi = 300)

# Save each page as a separate PNG file
for (i in seq_along(images)) {
  image_write(images[[i]], path = sprintf("page_%02d.png", i), format = "png")
}

