from setuptools import setup
import sys
if not sys.version_info[0] == 3:
    print("Python 3 is needed.\nLinux: sudo apt-get install python3.1\nWindows,Mac: https://www.python.org/download/releases/3.1.1/")
        sys.exit(1) # return non-zero value for failure

setup(name='pycreate',
      version='0.1',
      description='irobot library',
      url='http://github.com/sfagmenos/pycreate',
      author='Koloventzos Georgios, Zach Dodds',
      author_email='gkoloven@cs.columbia.edu,dodds@cs.hmc.edu',
      license='GPLv3.0',
      packages=['create'],
      install_requires=[
          'pyserial==2.5',
      ],
      zip_safe=False)
