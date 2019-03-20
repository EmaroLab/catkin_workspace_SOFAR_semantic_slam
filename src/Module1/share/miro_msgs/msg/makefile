#	@file
#	@section COPYRIGHT
#	Copyright (C) 2019 Consequential Robotics (CqR)
#	
#	@section AUTHOR
#	Consequential Robotics http://consequentialrobotics.com
#	
#	@section LICENSE
#	For a full copy of the license agreement, see LICENSE.MDK in
#	the MDK root directory.
#	
#	Subject to the terms of this Agreement, Consequential Robotics
#	grants to you a limited, non-exclusive, non-transferable license,
#	without right to sub-license, to use MIRO Developer Kit in
#	accordance with this Agreement and any other written agreement
#	with Consequential Robotics. Consequential Robotics does not
#	transfer the title of MIRO Developer Kit to you; the license
#	granted to you is not a sale. This agreement is a binding legal
#	agreement between Consequential Robotics and the purchasers or
#	users of MIRO Developer Kit.
#	
#	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
#	EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
#	OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
#	NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
#	HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
#	WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#	FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
#	OTHER DEALINGS IN THE SOFTWARE.
#	
#	@section DESCRIPTION
#	
#	No description given
#

# get CWD
CURDIR=$(shell pwd)

# get ROS release
ROS_RELEASE=$(shell cat $(CURDIR)/../../../config/ros_release)
ifeq ($(ROS_RELEASE),)
${error ROS_RELEASE not found}
endif

# configure
SRC_FILES=$(wildcard *.msg)
MSGS=$(subst .msg,,$(SRC_FILES))
H_FILES=$(addprefix ../,$(addsuffix .h,$(MSGS)))
DIR_OUT=.
LIST=$(SRC_FILES:.msg=)
INC=-I miro_msgs:$(CURDIR) -I geometry_msgs:/opt/ros/$(ROS_RELEASE)/share/geometry_msgs/msg -I sensor_msgs:/opt/ros/$(ROS_RELEASE)/share/sensor_msgs/msg -I std_msgs:/opt/ros/$(ROS_RELEASE)/share/std_msgs/msg -I nav_msgs:/opt/ros/$(ROS_RELEASE)/share/nav_msgs/msg

# message update target
.PHONY : default
default : __init__.py $(H_FILES)

__init__.py : *.msg
	@echo build: $@
	@./create_init.sh $(LIST)

# if this is to work, $(CURDIR)/../.. must be on ROS_PACKAGE_PATH
../%.h : %.msg makefile
	@echo build: $@
	@/opt/ros/$(ROS_RELEASE)/lib/gencpp/gen_cpp.py -p miro_msgs -o $(DIR_OUT)/.. $(INC) $<
	@/opt/ros/$(ROS_RELEASE)/lib/genpy/genmsg_py.py -p miro_msgs -o $(DIR_OUT) $(INC) $<

clean :
	rm -f *.py
	rm -f *.pyc
	rm -f ../*.h

