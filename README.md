emacs4ruby
==========

My custom Emacs 24 config for Ruby and RubyOnRails development. It's based on emacs-starter-kit 2.0

Installation
------------

1. Install Emacs 24 (for Ubuntu consider reading the [following](https://launchpad.net/~cassou/+archive/emacs) guide)

2. Backup your old Emacs configuration:
> $ mv .emacs  .emacs.bkp
>
> $ mv .emacs.d .emacs.d.bkp

3. Clone emacs4ruby using:
> $ cd ~ && git clone https://github.com/k-rudy/emacs4ruby.git .emacs.d

4. Start Emacs 24

5. Install starter-kit using:
> M-x package-refresh-contents
>
> M-x package-install RET starter-kit RET

6. Exit Emacs

Applying custom settings
------------------------

In order to sync your custom settings on different PCs and keep them under source control create symlinks for custom Emacs configs
> ln -s user &lt;user>
>
> ln -s user.el &lt;user>.el

Then just add those symlinks into `.gitignore` and go on and store your customizations in `user` dir and `user.el` config

After starting Emacs you should see applied railscasts color theme and no error messages

Working with project-specific settings
--------------------------------------

Usually when working on multiple projects there are only few options
that are changed, while others remain the same. In default case the
only thing that changes from project to project is ECB source path

Those specific settings are located in separate files under `projects`
folder. Default project is loaded from `user.el` using the following line:
>;; Default project to load
>
>(load "~/.emacs.d/projects/datac.el")

Change it on your own if you need that

Activating Project IDE mode
---------------------------

To activate IDE mode, run

> M+x ecb-activate

You can definitely configure to have it activated by default, but I
prefer to activate it manually to be able to use Emacs for editing
simple file in everyday's life without those ECB goodies.

Switching between projects
--------------------------

To switch to another project on the fly, simply:

1. Deactivate ECB:
> M+x ecb-deactivate

2. Load project specific settings using:
> M+x load-file ~/.emacs.d/projects/&lt;project_file_name>.el

3. Activate ECB:
> M+x ecb-activate

Replace Ctrl with CapsLock on Ubuntu
------------------------------------

If you care about your hands when using emacs read the
[following](http://emacswiki.org/emacs/MovingTheCtrlKey) guide.

Emacs links
-----------

1. Some usefull Emacs tips from Avdi Grimm are
[here](http://devblog.avdi.org/category/emacs-reboot/)

Modes documentation
-------------------

Mode | Purpose | Link
--- | --- | ---
markdown | syntax | https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
markdown | mode | http://jblevins.org/projects/markdown-mode


Enjoy your Ruby coding with Emacs!
