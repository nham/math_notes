include_dir=includes
out_dir=out

all:
	pandoc -s fdvses.md -t html5 -o ${out_dir}/fdvses.html \
			--include-in-header ${include_dir}/header.html \
			--include-before-body ${include_dir}/before_body.html \
			--include-after-body ${include_dir}/footer.html \
			--smart \
			--mathjax
