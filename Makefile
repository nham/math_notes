include_dir=includes
out_dir=out

all:
	pandoc -s nats.md -t html5 -o ${out_dir}/nats.html \
			--include-in-header ${include_dir}/header.html \
			--include-before-body ${include_dir}/before_body.html \
			--include-after-body ${include_dir}/footer.html \
			--smart \
			--mathjax

	pandoc -s sets.md -t html5 -o ${out_dir}/sets.html \
			--include-in-header ${include_dir}/header.html \
			--include-before-body ${include_dir}/before_body.html \
			--include-after-body ${include_dir}/footer.html \
			--smart \
			--mathjax
