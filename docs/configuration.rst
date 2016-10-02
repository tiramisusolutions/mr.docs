=============
Configuration
=============
.. versionadded:: 2.1

Configuration
=============
mr.docs uses a set of pre-configured add-ons and settings, which are most useful for testing `Plone <https://plone.org>`_ documentation.

You can find it on `GitHub <https://github.com/tiramisusolutions/mr.docs/blob/master/conf/conf.py>`_.

Use Your Own Configuration File
-------------------------------

.. note:: There is no warranty that mr.docs will work with your own custom configuration, since mr.docs is build with a pre-configured set of add-ons.


If you have already a own configuration file [*conf.py*] you can try use it.
Copy it into your *docs* directory and it may work, it dependents on your configuration.
If your own setup, is using a add-on which is not installed within mr.docs this will not.work.


Create Base Configuration
-------------------------
You can use mr.docs to create a base configuration.

This is a good start, if you want to test building your project documentation, with your logo, company name and so on.

Running

.. code-block:: bash

  docker run --rm -v "${PWD}/docs":/build/docs:rw -u "$(id -u)":"$(id -g)" quay.io/tiramisu/mr.docs config

will copy a base template into your */docs* directory.

You can now open the file *conf.py* in */docs* with the editor of your choice and start to adjust settings.

For example you may want to change *ExampleProjectName* with the real name of your project.
You can find more information about possible configuration settings in the `Sphinx documentation <http://www.sphinx-doc.org/en/stable/config.html>`_.

Spell-check
-----------

mr.docs uses a default word-list for spell checking, this list written for `Plone <https://plone.org>`_ and contains terms which are typical known
in Plone but not by spell-checker of dictionaries.

If you want to add missing, new or your own needed terms or words to the spell-check you can add them on top of the document.

.. code-block:: bash

    .. spelling::
       word1
       word2
       ...


