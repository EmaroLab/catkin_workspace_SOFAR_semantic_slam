
# direction: downstream
# destination: biomimetic core
# description: configuration data



#### HEADER

# standard header
std_msgs/Header header

# message flags
uint32 msg_flags

# set this flag to update signals; if this message is received
# without this flag set, the section "SIGNALS" is ignored.
uint32 FLAG_UPDATE_SIGNALS=1



#### SIGNALS

# P1_W
uint32 P1_W_signals

# P2B_W
uint32 P2B_W_signals

# P2U_W.affect
uint32 P2U_W_affect_signals

# P2U_W.express
uint32 P2U_W_express_signals

# P2U_W.action
uint32 P2U_W_action_signals

# P2U_W.body
uint32 P2U_W_body_signals

# P2L_W
uint32 P2L_W_signals

# P2S_W
uint32 P2S_W_signals



#### MODEL_PARS

# model_pars
#
# if this array is of non-zero size, it must be of size
# MIRO_P2_MODEL_PARS_SIZE bytes, and is used to update the
# model_pars in P2, via the bridge.
std_msgs/ByteMultiArray model_pars




