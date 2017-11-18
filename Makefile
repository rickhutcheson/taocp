pandoc:
	python3 -m http.server 8080 &
	pandoc --toc -s --from=markdown+header_attributes+fancy_lists+pandoc_title_block+pipe_tables+definition_lists --mathjax=http://localhost:8080/build/mathjax/MathJax.js?config=TeX-AMS-MML_HTMLorMML tex/notes.md -o notes.html
