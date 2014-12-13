all:
	cd figures; extractbb *.png; cd ..
	platex -kanji=utf8 paper
	pbibtex -kanji=utf8 paper
	platex -kanji=utf8 paper
	platex -kanji=utf8 paper
	dvipdfm paper
	open paper.pdf

