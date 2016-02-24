Setup
=====

To make it easy we use some functions to talk with our container

Download the gist, according to your OS and save it as for example as .dockerfunc

Linux
-----

The following is tested with Debian, Ubuntu and Fedora

.. code-block:: bash

      $ wget https://gist.githubusercontent.com/svx/45d6a801c3bd21630356/raw/ecbabe48de69b69e346f0cf39b18a0f5ca696c18/mr.docs-dockerfunctions -O ~/.dockerfunc

Adjust your `.bashrc` to source your new functions, we will use vim, but of course you can do that with the editor of your choice.

.. code-block:: bash

    $ vim .bashrc

.. code-block:: bash

    # source dockerfunc
    source .dockerfunc

Save the file and reload your bash

.. code-block:: bash

    $ source .bashrc

or close this terminal and start a new one



OSX
----
.. code-block:: bash

      $ wget https://gist.githubusercontent.com/svx/0ce0a0697ae372c3e044/raw/b0411fcafa4a123cf8f0701faa7d22999e12d4fc/mr.docs-dockerfunctions-osx -O ~/.dockerfunc




