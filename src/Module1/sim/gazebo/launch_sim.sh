#!/bin/bash
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
#	Run this script to launch the simulator.
#
#	See README.txt for environment setup.

# NB: if developing locally (i.e. not in a MDK release), you
# will need to add the MIRO.cache directory to GAZEBO_RESOURCE_PATH
# in your .profile.

# default is to launch miro world
WORLD=$1
if [ "$WORLD" == "" ]; then WORLD=miro; fi

# system
ARCH=`arch`
if [ "$ARCH" == "i686" ];
then
    SYSTEM=deb32
else
    SYSTEM=deb64
fi

# local paths
export GAZEBO_MODEL_PATH=./models:${GAZEBO_MODEL_PATH}
export GAZEBO_RESOURCE_PATH=.:${GAZEBO_RESOURCE_PATH}
export GAZEBO_PLUGIN_PATH=../../bin/$SYSTEM:${GAZEBO_PLUGIN_PATH}

# launch options
VERBOSE=--verbose
#PAUSE=--pause

# launch
gazebo worlds/$WORLD.world $VERBOSE $PAUSE




