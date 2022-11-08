#!/usr/bin/env python3

import sys
import fileinput
from vgio.quake import map as qmap



def process(map_file_str):
	map_file = qmap.loads(map_file_str)

	i = len(map_file)
	# print(i)

	for e in reversed(map_file):
		i -= 1

		#
		# Remove those layers that have a name that starts with an underscore
		#
		if e.classname == 'func_group':
			if hasattr(e, '_tb_type'):
				if e._tb_type == '_tb_layer':
					if e._tb_name.startswith('_'):
						# print(i, e._tb_name)
						del map_file[i]

	return map_file


with open(sys.argv[1], 'r') as in_file:
	map_file = process(in_file.read())


with open(sys.argv[2], 'w') as out_file:
	out_file.write(qmap.dumps(map_file))
