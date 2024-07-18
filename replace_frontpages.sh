# Merge frontpages (template) + content (typst)
pdftk thesis.pdf cat 5-end output content_no_frontpages.pdf;
pdftk template.pdf cat 1-4 output frontpages.pdf
pdftk frontpages.pdf content_no_frontpages.pdf cat output thesis_no_metadata.pdf

# Copy bookmarks metadata
pdftk thesis.pdf dump_data output meta.txt
pdftk thesis_no_metadata.pdf update_info meta.txt output thesis.pdf

rm content_no_frontpages.pdf frontpages.pdf thesis_no_metadata.pdf meta.txt