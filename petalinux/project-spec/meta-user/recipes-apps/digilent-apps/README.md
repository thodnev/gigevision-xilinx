# digilent-apps

This represents a sub-module that includes all of the Petalinux/Linux apps that are provided by Digilent.

A list of the apps and short description of each follows:

+ **libuio**
  A user space library for interfacing with uio devices
  uio devices can be found in /sys/class/uio.
  Can be used with #include <libuio.h> and -luio as a compiler flag
  
+ **libvrc**
  A user space library for controlling video resolution output.
  Can be used with #include <libvrc.h> and -lvrc as a compiler flag
  
+ **libgpio**
  A user space library for interfacing with GPIO controllers in the FPGA fabric using UIO drivers. 
  Can be used with #include <libgpio.h> and -lgpio as a compiler flag

+ **libpwm**
  A user space library for interfacing with the PWM controller provided by Digilent as an ip-core. 
  Can be used with #include <libpwm.h> and -lpwm as a compiler flag

+ **kmsdemo**
  A demo program that demonstrates the functionality of libvrc
  
+ **gpioutil**
  A command line gpio utility built using libgpio

+ **pwmdemo**
  A demo program that demonstrates the functionality of libpwm


# Walkthrough / Guide for Using These Apps

These apps exist as a git submodule inside of the Petalinux projects provided by Digilent. Currently, there are Petalinux projects for the [Arty-Z7-20](https://github.com/Digilent/Petalinux-Arty-Z7-20), the [Arty-Z7-10](https://github.com/Digilent/Petalinux-Arty-Z7-10), the [Arty-S7-50](https://github.com/Digilent/Petalinux-Arty-S7-50), and the [Zybo-Z7-20](https://github.com/Digilent/Petalinux-Zybo-Z7-20).

##### What is a Git sub-module?
A git submodule allows for the nesting of one repository inside of another repository. This allows for independent version control for many repositories which pull in another common repository amongst them. In this case, the Petalinux projects provided by Digilent all pull in this submodule. Thus, it makes sense to version control this submodule independently from the Petalinux projects themselves. This also allows for the changing or adding of the apps provided without having to add each app in to each Petalinux project.

#### 1. Clone an exisiting Petalinux project
Clone the Petalinux project above that corresponds to the hardware that you are working on. As mentioned in the README files for the Petalinux projects, it is best to clone these projects on a release tag, such as *v2017.2-1* or similar.

#### 2. Navigate to the project directory
Once you have cloned the project, navigate into the relevant directory --- 
```bash
cd Petalinux-Zybo-Z7-20
```
Where `Petalinux-Zybo-Z7-20` is the project that you cloned

At this point, we always want to run a config on the Petalinux project so that the project can populate the necessary paths for building the project
```bash
petalinux-config
``` 
We can then exit out of the config menu. The project will scan the necessary paths and pull in all the relevant *.bbappend* and *.bb* files for building the project.

#### 3. Initiate the submodule and pull in its contents
When you first clone the project, you can navigate to `{project directory}/project-spec/meta-user/recipes-apps/digilent-apps`. However, you will notice that this directory is initially empty. To populate this directory with the most recent iteration of the apps provided by Digilent, you will need to run a simple command:
```bash
git submodule update --init --recursive
```

If, instead, you already have popualted this directory and are looking to pull in any new changes to the digilent-apps repository, you can use the command `git submodule update --recursive`. Alternatively, when you first clone the project, adding the argument ` --recursive` will pull in the submodule at the same time as the Petalinux project.

#### 4. Configure the rootFs
Now you can configure the root file system that you would like to include in your linux image.
```bash
petalinux-config -c rootfs
```
In this menu, under *user packages*, you should see the digilent libraries, and under *apps*, you should see the digilent apps. You can use the *y* key when you have highlighted a specific app or library to include it in your image. After selecting the apps and libraries you want to include, exit out of menuconfig.

#### 5. Attempt a build
To verify that everything is syncing together, attempt to build the petalinux project. If the build is successful, you are ready to start working with the produced linux image and provided digilent apps.

# Additional Notes
At this point you can use the provided digilent app recipes to begin building your own apps! If you think that you have an app that may be of use to others in the Petalinux/Digilent ecosystem, do not be afraid to notify us with the app and recipe so that we may include it in future digilent-apps releases.
