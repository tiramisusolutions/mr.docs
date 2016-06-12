Available builders
==================

In theory you can use every builder which is supported by `Sphinx <http://www.sphinx-doc.org/en/stable/index.html>`_ with mr.docs.

Currently not all of them are supported out of the box, we will include more of them over time or on request.

For the moment following builders are supported and configured:


ChangesBuilder
--------------

This builder produces an HTML overview of all versionadded, versionchanged and deprecated directives for the current version. This is useful to generate a ChangeLog file, for example

.. code-block:: bash

    make changes

DummyBuilder
------------

This builder produces no output. The input is only parsed and checked for consistency. This is useful for linting purposes

.. code-block:: bash

    make dummy

CheckExternalLinksBuilder
-------------------------

This builder scans all documents for external links, tries to open them with `urllib2 <https://docs.python.org/2/library/urllib2.html>`_, and writes an overview which ones are broken and redirected to standard output and to output.txt in the output directory.

.. code-block:: bash

    make linkcheck

StandaloneHTMLBuilder
---------------------

This is the standard HTML builder. Its output is a directory with HTML files, complete with style sheets and optionally the reST sources. There are quite a few configuration values that customize the output of this builder, see the chapter Options for HTML output for details.

.. code-block:: bash

    make html

SpellCheckBuilder
-----------------

This builder runs a spell-check, more information on its `PYPI site <https://pypi.python.org/pypi/sphinxcontrib-spelling/>`_.

.. code-block:: bash

    make spellcheck

mr.docs uses that builder in combination with `a file <https://github.com/tiramisusolutions/mr.docs/blob/master/spelling_wordlist.txt>`_ containing a list of words known to be spelled correctly but `that do not <https://sphinxcontrib-spelling.readthedocs.io/en/latest/customize.html#input-options>`_ appear in the language dictionary.

For full list of possible builder options please browse to the `overview page <http://www.sphinx-doc.org/en/stable/builders.html>`_ of `Sphinx <http://www.sphinx-doc.org/en/stable/index.html>`_.