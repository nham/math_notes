include_dir=includes
src_dir=notes
out_dir=out

LINALG = fdvses.md dets.md linear_systems.md tensors.md
LINALG_HTML = (LINALG:.md=.html)

REALANAL = nats.md sets.md ints.md rationals.md reals.md real-seqs.md
REALANAL_HTML = (REALANAL:.md=.html)

all: $(LINALG_HTML) $(REALANAL_HTML)

$(LINALG_HTML): $(LINALG)
	pandoc -s ${src_dir}/linalg/$^ -t html5 -o ${out_dir}/linalg/$@ \
			--include-in-header ${include_dir}/header.html \
			--include-before-body ${include_dir}/before_body.html \
			--include-after-body ${include_dir}/footer.html \
			--smart \
			--mathjax

$(REALANAL_HTML): $(REALANAL)
	pandoc -s ${src_dir}/numbers/$^ -t html5 -o ${out_dir}/numbers/$^ \
			--include-in-header ${include_dir}/header.html \
			--include-before-body ${include_dir}/before_body.html \
			--include-after-body ${include_dir}/footer.html \
			--smart \
			--mathjax

