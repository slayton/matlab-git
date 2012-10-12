git-matlab
==========

A simple function that lets you use GIT from matlab using standard GIT commands

 GIT - use GIT from matlab, using standard GIT commands

   Examples:
        initialize a repository
       >> git init; 

        add a file to the repository
       >> git add myFile.m  begin tracking my_function.m

        commit changes to the repository
       >> git commit myFile.m -m 'initial checkin of myFile.m'

        push to another repository
       >> git push origin master


   Commands that require additionall input (such as commits without -m flags)
   will generally fail unless the environment variable EDITOR is defined. However,
   a preferred text editor can be specified within Matlab using the global
   variable GIT_EDITOR (Pro-tip: include this code in your startup.m file)
   For Example:
       
       Declare the global variable
       >> global GIT_EDITOR;
       
       For linux:
       >> GIT_EDITOR = '/path/to/editor';  provide the complete path  

       For Mac OSX:
       >> GIT_EDITOR = 'TextEdit';  Simply provide the application name


