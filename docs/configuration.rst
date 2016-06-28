=============
Configuration
=============
.. versionadded:: 2.1
The main purpose of mr.docs is **testing**, this is what mr.docs is written for in the first place. However you also can use mr.docs to build your documentation for *production*.

Configuration
=============
mr.docs uses a file called *conf.py* with the most useful configuration values, like the name [link here to default name and default author]. [link also to internal docs and sphinx docs]

Use your own configuration file
-------------------------------
If you have already a own configuration file [*conf.py*] you can use it. Copy it into your *docs* directory and you are good to go.

Let mr.docs setup the configuration
------------------------------------
If you do not have already one, or you would like to create another/new one, you can tell mr.docs to do so.
.. code-block:: bash
    make config
This will start a script, which will ask a couple of questions like the name you would like to use for your project and the name of the author/authors
[pic of script in action]

Spell-check
-----------

mr.docs uses a default wordlist for spell checking, this list is written for `Plone <https://plone.org`_. If you would like to replace this list with your own one you can do that with the following steps
[add steps]
