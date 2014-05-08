import subprocess
import os

include_dir = "includes"
src_dir = "notes"
out_dir = "out"

def ensure_dir(f):
    d = os.path.dirname(f)
    if not os.path.exists(d):
        os.makedirs(d)


def compile(folder, filename):
    in_file = src_dir + '/' + folder + filename
    out_file = out_dir + '/' + folder + filename.replace('.md', '.html')

    ensure_dir(out_file)

    pandoc_call = (['pandoc', '-s', in_file,
                  '-t', 'html5',
                  '-o', out_file,
                  '--include-in-header', include_dir + '/header.html',
                  '--include-before-body', include_dir + '/before_body.html',
                  '--include-after-body', include_dir + '/after_body.html',
                  '--mathjax', '--smart'])

    p = subprocess.call(pandoc_call)


files = {}
files[''] = ['index.md']
files['linalg'] = ['dets.md', 'dim.md', 'fdvses.md', 
                   'linear_maps.md', 'linear_systems.md', 'subspaces.md', 
                   'tensors.md']

files['metric_spaces'] = ['intro.md']
files['prob'] = ['grimmett.md']
files['reals'] = ['notes.md']
files['gibson_euclidean'] = ['1.md']


for folder, lst in files.items():
    for i in lst:
        if folder != '':
            folder += '/'
        compile(folder, i)
