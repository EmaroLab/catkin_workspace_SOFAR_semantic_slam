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
#	This makefile will build "miro.py".
#

TMPFILE=/tmp/miro_platform_AUTO_GENERATED.tmp
TEMPLATEFILE=miro.py-template
MAKEBITS=./make_bits.sh
OUTFILE=miro.py

default : $(OUTFILE)

H_FILES=../../include/miro_platform.h ../../include/miro_constants.h
ADD_CLOSE_BRACKET=s/$/)/

$(OUTFILE) : $(TEMPLATEFILE) $(H_FILES) makefile $(MAKEBITS)
	@cat $(TEMPLATEFILE) > $@
	@cat $(H_FILES) | grep define | sed 's!//.*!!' | grep -v 'define __' | grep -v '_SIZE (' | sed 's/#define //' | sed 's/\t\+/ = /' | sed 's/f//g' | sed 's/(uint8_t)//' > $(TMPFILE)
	@cat $(TMPFILE) | grep ^MIRO_DOF_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_WHEEL_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_TILT_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_LIFT_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_PITCH_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_YAW_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_BODY_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_LINK_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_JOINT_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2_ACTION_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2B_W_BRANCH_ | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2S_W_SPATIAL_ | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2U_W_AFFECT_ | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2U_W_EXPRESS_ | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2U_W_ACTION_ | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2U_W_BODY_ | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2U_W_LEAN_ >> $@
	@cat $(TMPFILE) | grep ^MIRO_P2L_W_ | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_P1_W_ | grep -v 'MIRO_P1_W_SIZE' | $(MAKEBITS) >> $@
	@cat $(TMPFILE) | grep ^MIRO_BRIDGE_ >> $@
	@rm $(TMPFILE)

clean :
	rm -f $(OUTFILE)

