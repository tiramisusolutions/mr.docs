.. mr.docs documentation master file, created by
   sphinx-quickstart on Tue Jun 23 12:00:09 2015.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

mr.docs
=======

About
-----

A testing tool for `Sphinx <http://sphinx-doc.org/>`_ based and in `reStructuredText [rst] <http://sphinx-doc.org/rest.html>`_ written documentation.


Dependencies
------------

- `Docker <https://docker.com>`_

If you do not have Docker installed yet, please follow the `official install guide <https://docs.docker.com/installation/>`_.


Getting mr.docs
---------------

    docker pull quay.io/tiramisu/mr.docs

Getting an update of the image
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

The only thing what you have to do it a new pull of the image:

    docker pull quay.io/tiramisu/mr.docs

Assumptions
-----------

mr.docs assumes that the documentation you want to test is located in a directory called ``docs`` and that the documentation is written is ``.rst``.


Usage
-----
Every command which you typical run via your ``Makefile`` like ``make html`` within Sphinx you can run via mr.docs.

Example
~~~~~~~
Change into the main directory of your project you working on, for example the Unified Installer for Plone

    svx@black:~$ cd Projects/temp/Installers-UnifiedInstaller/

If you do now a ``ls``, you will see we have here a directory called ``docs``, great !

If you want to build the documentation now as html, just run:

    docker run -it --rm -v ${PWD}/docs:/build/docs:rw --name docs-test quay.io/tiramisu/mr.docs html

Typically you do want to have this as an alias, to make it easy to remember, for example I use the alias ``qa`` so I can just run:

    qa html

Please refer to the setup part [tbc] for more on setup and configuration.

More soon !

To do
-----

- add gists
- add video
- add screenshots
- add setup

.. toctree::
   :maxdepth: 2

