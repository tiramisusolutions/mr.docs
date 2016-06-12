Setup
=====

To make it easy we use some functions to talk with our container

.. warning:: Please review, before you download, never blindly download !

.. versionchanged:: 2.0
    name of functions

Here is an example:

.. gist:: https://gist.github.com/svx/0e9f5b8ba2215d9ee08e4b2e82847826

Configuration
-------------

.. code-block:: bash

    $ wget https://gist.githubusercontent.com/svx/0e9f5b8ba2215d9ee08e4b2e82847826/raw/0e9bca68e9221254c456a3fff464ed9dcbea4439/mrdocsfunc -O ~/.mrdocsfunc

Adjust your `.bashrc` [Linux] or `.bash_profile` [macOS] to load your new functions.

.. note:: We use vim as editor, you can also use the editor if your choice


.. example-code::
    .. code-block:: Linux

       $ vim .bashrc

    .. code-block:: macOS

        $ vim .bash_profile

.. code-block:: bash

    # source [load] mrdocsfunc
    source .mrdocsfunc

Save the file and reload it

.. example-code::
    .. code-block:: Linux

       $ source .bashrc

    .. code-block:: macOS

        $ source .bash_profile


or close the terminal and start a new one




