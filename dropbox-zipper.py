import gzip

content = b"Lots of content here"
with gzip.open('/home/nathan/file.txt.gz', 'wb') as f:
    f.write(content)