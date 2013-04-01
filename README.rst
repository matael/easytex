=======
EasyTeX
=======

A simple way to create PDF and EPUB documents using simple ReST files.

Usage
=====

#. Add files in ``src/`` folder (they'll be added to final output in alphabetical order).
#. Modify the second line of ``Makefile`` to set the final name of your document
#. When you're done, just run :::

    $ make src/thenameyouvechosen.pdf
    $ make src/thenameyouvechosen.epub

#. To rebuild after modifications run :::

    $ make clean
    $ make src/thenameyouvechosen.pdf
    $ make src/thenameyouvechosen.epub

And voilà !

Credits
=======

EasyTeX is just a hack from the system used by @karlseguin here :

https://github.com/karlseguin/the-little-mongodb-book

Thanks to him !
