
view: samsung_pit.svg
	xdg-open $<

samsung_pit.svg: samsung_pit.dot
	dot -Tsvg $< -o $@

samsung_pit.dot: samsung_pit.ksy
	kaitai-struct-compiler $< -t graphviz

.PHONY: view
