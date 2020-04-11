
view: samsung_pit.svg samsung_signature.svg
	xdg-open $<

%.svg: %.dot
	dot -Tsvg $< -o $@

samsung_signature.dot samsung_pit.dot: samsung_pit.ksy.in

.INTERMEDIATE: samsung_pit.ksy.in
samsung_pit.ksy.in: samsung_pit.ksy
	kaitai-struct-compiler $< -t graphviz

.PHONY: view
