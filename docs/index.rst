mr.docs
=======
About
-----

A testing tool for `Sphinx <http://sphinx-doc.org/>`_ based and in `reStructuredText [rst] <http://sphinx-doc.org/rest.html>`_ written documentation.

See a `example on YouTube <https://www.youtube.com/watch?v=ik-1e-93RI4&feature=youtu.be>`_.

Dependencies
------------

- `Docker <https://docker.com>`_

If you do not have Docker installed yet, please follow the `official install guide <https://docs.docker.com/installation/>`_.

In order to make everyting work, please make sure to add your $USER to the ``docker group`` sothat you are able to run docker without root or sudo.

Getting mr.docs
---------------

.. code-block:: bash

    $ docker pull quay.io/tiramisu/mr.docs

Update the image
~~~~~~~~~~~~~~~~

The only thing what you have to do is a new pull of the image:

.. code-block:: bash

    $ docker pull quay.io/tiramisu/mr.docs

Assumptions
-----------

mr.docs assumes that the documentation you want to test is located in a directory called ``docs`` and that the documentation is written is ``.rst``.


Usage
-----
Every command which you typical run via your ``Makefile`` like ``make html`` within Sphinx you can run via mr.docs.

Example
~~~~~~~
Change into the main directory of your project you working on, for example the `Unified Installer <https://github.com/plone/Installers-UnifiedInstaller>`_ for `Plone <https://plone.org>`_.

.. code-block:: bash

    $ cd Projects/temp/Installers-UnifiedInstaller/

If you do now a ``ls``, you will see we have here a directory called ``docs``, great !

If you want to build now the documentation as ``html``, just run:

.. code-block:: bash

    $ docker run -it --rm -v ${PWD}/docs:/build/docs:rw -u $(id -u):$(id -g) --name docs-test quay.io/tiramisu/mr.docs html

Typically you do want to have this as an alias, to make it easy to remember, for example I use the alias ``mrdocs`` so I can just run:

.. code-block:: bash

    $ mrdocs html

Please refer to the setup part [tbc] for more on setup and configuration.

.. toctree::
   :maxdepth: 2

   setup


To do
-----
- add video
- add screenshots




