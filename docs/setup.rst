Setup
=====

To make it easy we use some functions to talk with our container

.. warning:: Please review, before you download, never blindly download !

We provide some example functions which you can use if you like

HERE THE EXAMPLES AS GIST

Linux
-----

The following is tested with Debian, Ubuntu and Fedora

.. code-block:: bash

      $ wget https://gist.githubusercontent.com/svx/0e9f5b8ba2215d9ee08e4b2e82847826/raw/0e9bca68e9221254c456a3fff464ed9dcbea4439/mrdocsfunc -O ~/.mrdocsfunc

Adjust your `.bashrc` to source your new functions, we will use vim, but of course you can do that with the editor of your choice.

.. code-block:: bash

    $ vim .bashrc

.. code-block:: bash

    # source [load] mrdocsfunc
    source .dockerfunc

Save the file and reload your bash

.. code-block:: bash

    $ source .bashrc

or close this terminal and start a new one



OSX
----
.. code-block:: bash

      $ wget https://gist.githubusercontent.com/svx/0ce0a0697ae372c3e044/raw/b0411fcafa4a123cf8f0701faa7d22999e12d4fc/mr.docs-dockerfunctions-osx -O ~/.mrdocsfunc




