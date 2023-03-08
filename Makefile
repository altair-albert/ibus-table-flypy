#
# Makefile
# Albert Lv, 03/07/2023 10:10:16 10:10
#

all: flypy.db
	@echo "Success generate database of table"

flypy.db: template.txt
	ibus-table-createdb -n flypy.db -s template.txt
	ibus-table-createdb -i -n flypy.db


.PYHON:

install: flypy.db
	install -m 644 flypy.db /usr/share/ibus-table/tables/

clean:
	rm -f *.db

# vim:ft=make
#
