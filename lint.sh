find /usr/src/ -name "*.py" | grep -v env | while read file; do python -m flake8 --exit-zero $file; done
