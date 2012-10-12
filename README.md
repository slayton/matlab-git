git-matlab
==========

A simple function that lets you use GIT from matlab using standard GIT commands


   Commands that require additionall input (such as commits without -m flags)
   will generally fail unless the environment variable EDITOR is defined. However,
   a preferred text editor can be specified within Matlab using the global
   variable GIT_EDITOR (Pro-tip: include this code in your startup.m file)
       
   Declaring the variable in Matlab:

       >> global GIT_EDITOR;
       
   Specifying the editor in Linux:

       >> GIT_EDITOR = '/path/to/editor';  provide the complete path  

   Specifying the editor in Mac OSX:

       >> GIT_EDITOR = 'TextEdit';  Simply provide the application name


