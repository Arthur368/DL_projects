·¥
¿
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
À
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	

ResizeNearestNeighbor
images"T
size
resized_images"T"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.6.02v2.6.0-rc2-32-g919f693420e8÷Ï
|
dense_52/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
d* 
shared_namedense_52/kernel
u
#dense_52/kernel/Read/ReadVariableOpReadVariableOpdense_52/kernel* 
_output_shapes
:
d*
dtype0
t
dense_52/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_52/bias
m
!dense_52/bias/Read/ReadVariableOpReadVariableOpdense_52/bias*
_output_shapes

:*
dtype0

conv2d_transpose_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameconv2d_transpose_101/kernel

/conv2d_transpose_101/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_101/kernel*(
_output_shapes
:*
dtype0

conv2d_transpose_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_101/bias

-conv2d_transpose_101/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_101/bias*
_output_shapes	
:*
dtype0

conv2d_transpose_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_nameconv2d_transpose_102/kernel

/conv2d_transpose_102/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_102/kernel*'
_output_shapes
:@*
dtype0

conv2d_transpose_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_nameconv2d_transpose_102/bias

-conv2d_transpose_102/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_102/bias*
_output_shapes
:@*
dtype0

conv2d_transpose_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*,
shared_nameconv2d_transpose_103/kernel

/conv2d_transpose_103/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_103/kernel*&
_output_shapes
: @*
dtype0

conv2d_transpose_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameconv2d_transpose_103/bias

-conv2d_transpose_103/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_103/bias*
_output_shapes
: *
dtype0

conv2d_transpose_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameconv2d_transpose_104/kernel

/conv2d_transpose_104/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_104/kernel*&
_output_shapes
: *
dtype0

conv2d_transpose_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_104/bias

-conv2d_transpose_104/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_104/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

Adam/dense_52/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
d*'
shared_nameAdam/dense_52/kernel/m

*Adam/dense_52/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/m* 
_output_shapes
:
d*
dtype0

Adam/dense_52/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_52/bias/m
{
(Adam/dense_52/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/m*
_output_shapes

:*
dtype0
ª
"Adam/conv2d_transpose_101/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/conv2d_transpose_101/kernel/m
£
6Adam/conv2d_transpose_101/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_101/kernel/m*(
_output_shapes
:*
dtype0

 Adam/conv2d_transpose_101/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_101/bias/m

4Adam/conv2d_transpose_101/bias/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_101/bias/m*
_output_shapes	
:*
dtype0
©
"Adam/conv2d_transpose_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/conv2d_transpose_102/kernel/m
¢
6Adam/conv2d_transpose_102/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_102/kernel/m*'
_output_shapes
:@*
dtype0

 Adam/conv2d_transpose_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_102/bias/m

4Adam/conv2d_transpose_102/bias/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_102/bias/m*
_output_shapes
:@*
dtype0
¨
"Adam/conv2d_transpose_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/conv2d_transpose_103/kernel/m
¡
6Adam/conv2d_transpose_103/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_103/kernel/m*&
_output_shapes
: @*
dtype0

 Adam/conv2d_transpose_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_103/bias/m

4Adam/conv2d_transpose_103/bias/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_103/bias/m*
_output_shapes
: *
dtype0
¨
"Adam/conv2d_transpose_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/conv2d_transpose_104/kernel/m
¡
6Adam/conv2d_transpose_104/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_104/kernel/m*&
_output_shapes
: *
dtype0

 Adam/conv2d_transpose_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_104/bias/m

4Adam/conv2d_transpose_104/bias/m/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_104/bias/m*
_output_shapes
:*
dtype0

Adam/dense_52/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
d*'
shared_nameAdam/dense_52/kernel/v

*Adam/dense_52/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/kernel/v* 
_output_shapes
:
d*
dtype0

Adam/dense_52/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_52/bias/v
{
(Adam/dense_52/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_52/bias/v*
_output_shapes

:*
dtype0
ª
"Adam/conv2d_transpose_101/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/conv2d_transpose_101/kernel/v
£
6Adam/conv2d_transpose_101/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_101/kernel/v*(
_output_shapes
:*
dtype0

 Adam/conv2d_transpose_101/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_101/bias/v

4Adam/conv2d_transpose_101/bias/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_101/bias/v*
_output_shapes	
:*
dtype0
©
"Adam/conv2d_transpose_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/conv2d_transpose_102/kernel/v
¢
6Adam/conv2d_transpose_102/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_102/kernel/v*'
_output_shapes
:@*
dtype0

 Adam/conv2d_transpose_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/conv2d_transpose_102/bias/v

4Adam/conv2d_transpose_102/bias/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_102/bias/v*
_output_shapes
:@*
dtype0
¨
"Adam/conv2d_transpose_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*3
shared_name$"Adam/conv2d_transpose_103/kernel/v
¡
6Adam/conv2d_transpose_103/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_103/kernel/v*&
_output_shapes
: @*
dtype0

 Adam/conv2d_transpose_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" Adam/conv2d_transpose_103/bias/v

4Adam/conv2d_transpose_103/bias/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_103/bias/v*
_output_shapes
: *
dtype0
¨
"Adam/conv2d_transpose_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"Adam/conv2d_transpose_104/kernel/v
¡
6Adam/conv2d_transpose_104/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/conv2d_transpose_104/kernel/v*&
_output_shapes
: *
dtype0

 Adam/conv2d_transpose_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/conv2d_transpose_104/bias/v

4Adam/conv2d_transpose_104/bias/v/Read/ReadVariableOpReadVariableOp Adam/conv2d_transpose_104/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
³>
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*î=
valueä=Bá= BÚ=
è
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
R
$trainable_variables
%	variables
&regularization_losses
'	keras_api
h

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
h

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
R
:trainable_variables
;	variables
<regularization_losses
=	keras_api
ý
>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemumvmwmx(my)mz.m{/m|4m}5m~vvvv(v)v.v/v4v5v
F
0
1
2
3
(4
)5
.6
/7
48
59
 
F
0
1
2
3
(4
)5
.6
/7
48
59
­
trainable_variables
regularization_losses
Clayer_metrics

Dlayers
Emetrics
	variables
Fnon_trainable_variables
Glayer_regularization_losses
 
[Y
VARIABLE_VALUEdense_52/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_52/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
Hlayer_metrics
	variables

Ilayers
Jmetrics
Knon_trainable_variables
regularization_losses
Llayer_regularization_losses
 
 
 
­
trainable_variables
Mlayer_metrics
	variables

Nlayers
Ometrics
Pnon_trainable_variables
regularization_losses
Qlayer_regularization_losses
 
 
 
­
trainable_variables
Rlayer_metrics
	variables

Slayers
Tmetrics
Unon_trainable_variables
regularization_losses
Vlayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_101/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_101/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
 trainable_variables
Wlayer_metrics
!	variables

Xlayers
Ymetrics
Znon_trainable_variables
"regularization_losses
[layer_regularization_losses
 
 
 
­
$trainable_variables
\layer_metrics
%	variables

]layers
^metrics
_non_trainable_variables
&regularization_losses
`layer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_102/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_102/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
 
­
*trainable_variables
alayer_metrics
+	variables

blayers
cmetrics
dnon_trainable_variables
,regularization_losses
elayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_103/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_103/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

.0
/1

.0
/1
 
­
0trainable_variables
flayer_metrics
1	variables

glayers
hmetrics
inon_trainable_variables
2regularization_losses
jlayer_regularization_losses
ge
VARIABLE_VALUEconv2d_transpose_104/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
ca
VARIABLE_VALUEconv2d_transpose_104/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
­
6trainable_variables
klayer_metrics
7	variables

llayers
mmetrics
nnon_trainable_variables
8regularization_losses
olayer_regularization_losses
 
 
 
­
:trainable_variables
player_metrics
;	variables

qlayers
rmetrics
snon_trainable_variables
<regularization_losses
tlayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
?
0
1
2
3
4
5
6
7
	8
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
~|
VARIABLE_VALUEAdam/dense_52/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_101/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_101/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_102/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_102/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_103/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_103/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_104/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_104/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/dense_52/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/dense_52/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_101/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_101/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_102/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_102/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_103/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_103/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/conv2d_transpose_104/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/conv2d_transpose_104/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_dense_52_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿd
Ö
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_52_inputdense_52/kerneldense_52/biasconv2d_transpose_101/kernelconv2d_transpose_101/biasconv2d_transpose_102/kernelconv2d_transpose_102/biasconv2d_transpose_103/kernelconv2d_transpose_103/biasconv2d_transpose_104/kernelconv2d_transpose_104/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_2142374
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ì
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_52/kernel/Read/ReadVariableOp!dense_52/bias/Read/ReadVariableOp/conv2d_transpose_101/kernel/Read/ReadVariableOp-conv2d_transpose_101/bias/Read/ReadVariableOp/conv2d_transpose_102/kernel/Read/ReadVariableOp-conv2d_transpose_102/bias/Read/ReadVariableOp/conv2d_transpose_103/kernel/Read/ReadVariableOp-conv2d_transpose_103/bias/Read/ReadVariableOp/conv2d_transpose_104/kernel/Read/ReadVariableOp-conv2d_transpose_104/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp*Adam/dense_52/kernel/m/Read/ReadVariableOp(Adam/dense_52/bias/m/Read/ReadVariableOp6Adam/conv2d_transpose_101/kernel/m/Read/ReadVariableOp4Adam/conv2d_transpose_101/bias/m/Read/ReadVariableOp6Adam/conv2d_transpose_102/kernel/m/Read/ReadVariableOp4Adam/conv2d_transpose_102/bias/m/Read/ReadVariableOp6Adam/conv2d_transpose_103/kernel/m/Read/ReadVariableOp4Adam/conv2d_transpose_103/bias/m/Read/ReadVariableOp6Adam/conv2d_transpose_104/kernel/m/Read/ReadVariableOp4Adam/conv2d_transpose_104/bias/m/Read/ReadVariableOp*Adam/dense_52/kernel/v/Read/ReadVariableOp(Adam/dense_52/bias/v/Read/ReadVariableOp6Adam/conv2d_transpose_101/kernel/v/Read/ReadVariableOp4Adam/conv2d_transpose_101/bias/v/Read/ReadVariableOp6Adam/conv2d_transpose_102/kernel/v/Read/ReadVariableOp4Adam/conv2d_transpose_102/bias/v/Read/ReadVariableOp6Adam/conv2d_transpose_103/kernel/v/Read/ReadVariableOp4Adam/conv2d_transpose_103/bias/v/Read/ReadVariableOp6Adam/conv2d_transpose_104/kernel/v/Read/ReadVariableOp4Adam/conv2d_transpose_104/bias/v/Read/ReadVariableOpConst*0
Tin)
'2%	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_2143197


StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_52/kerneldense_52/biasconv2d_transpose_101/kernelconv2d_transpose_101/biasconv2d_transpose_102/kernelconv2d_transpose_102/biasconv2d_transpose_103/kernelconv2d_transpose_103/biasconv2d_transpose_104/kernelconv2d_transpose_104/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/dense_52/kernel/mAdam/dense_52/bias/m"Adam/conv2d_transpose_101/kernel/m Adam/conv2d_transpose_101/bias/m"Adam/conv2d_transpose_102/kernel/m Adam/conv2d_transpose_102/bias/m"Adam/conv2d_transpose_103/kernel/m Adam/conv2d_transpose_103/bias/m"Adam/conv2d_transpose_104/kernel/m Adam/conv2d_transpose_104/bias/mAdam/dense_52/kernel/vAdam/dense_52/bias/v"Adam/conv2d_transpose_101/kernel/v Adam/conv2d_transpose_101/bias/v"Adam/conv2d_transpose_102/kernel/v Adam/conv2d_transpose_102/bias/v"Adam/conv2d_transpose_103/kernel/v Adam/conv2d_transpose_103/bias/v"Adam/conv2d_transpose_104/kernel/v Adam/conv2d_transpose_104/bias/v*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_2143312Ô¢
­Ø
§
"__inference__wrapped_model_2141472
dense_52_inputI
5sequential_52_dense_52_matmul_readvariableop_resource:
dF
6sequential_52_dense_52_biasadd_readvariableop_resource:
g
Ksequential_52_conv2d_transpose_101_conv2d_transpose_readvariableop_resource:Q
Bsequential_52_conv2d_transpose_101_biasadd_readvariableop_resource:	f
Ksequential_52_conv2d_transpose_102_conv2d_transpose_readvariableop_resource:@P
Bsequential_52_conv2d_transpose_102_biasadd_readvariableop_resource:@e
Ksequential_52_conv2d_transpose_103_conv2d_transpose_readvariableop_resource: @P
Bsequential_52_conv2d_transpose_103_biasadd_readvariableop_resource: e
Ksequential_52_conv2d_transpose_104_conv2d_transpose_readvariableop_resource: P
Bsequential_52_conv2d_transpose_104_biasadd_readvariableop_resource:
identity¢9sequential_52/conv2d_transpose_101/BiasAdd/ReadVariableOp¢Bsequential_52/conv2d_transpose_101/conv2d_transpose/ReadVariableOp¢9sequential_52/conv2d_transpose_102/BiasAdd/ReadVariableOp¢Bsequential_52/conv2d_transpose_102/conv2d_transpose/ReadVariableOp¢9sequential_52/conv2d_transpose_103/BiasAdd/ReadVariableOp¢Bsequential_52/conv2d_transpose_103/conv2d_transpose/ReadVariableOp¢9sequential_52/conv2d_transpose_104/BiasAdd/ReadVariableOp¢Bsequential_52/conv2d_transpose_104/conv2d_transpose/ReadVariableOp¢-sequential_52/dense_52/BiasAdd/ReadVariableOp¢,sequential_52/dense_52/MatMul/ReadVariableOpÔ
,sequential_52/dense_52/MatMul/ReadVariableOpReadVariableOp5sequential_52_dense_52_matmul_readvariableop_resource* 
_output_shapes
:
d*
dtype02.
,sequential_52/dense_52/MatMul/ReadVariableOpÂ
sequential_52/dense_52/MatMulMatMuldense_52_input4sequential_52/dense_52/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_52/dense_52/MatMulÓ
-sequential_52/dense_52/BiasAdd/ReadVariableOpReadVariableOp6sequential_52_dense_52_biasadd_readvariableop_resource*
_output_shapes

:*
dtype02/
-sequential_52/dense_52/BiasAdd/ReadVariableOpß
sequential_52/dense_52/BiasAddBiasAdd'sequential_52/dense_52/MatMul:product:05sequential_52/dense_52/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_52/dense_52/BiasAdd
sequential_52/dense_52/ReluRelu'sequential_52/dense_52/BiasAdd:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_52/dense_52/Relu
sequential_52/reshape_28/ShapeShape)sequential_52/dense_52/Relu:activations:0*
T0*
_output_shapes
:2 
sequential_52/reshape_28/Shape¦
,sequential_52/reshape_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2.
,sequential_52/reshape_28/strided_slice/stackª
.sequential_52/reshape_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_52/reshape_28/strided_slice/stack_1ª
.sequential_52/reshape_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:20
.sequential_52/reshape_28/strided_slice/stack_2ø
&sequential_52/reshape_28/strided_sliceStridedSlice'sequential_52/reshape_28/Shape:output:05sequential_52/reshape_28/strided_slice/stack:output:07sequential_52/reshape_28/strided_slice/stack_1:output:07sequential_52/reshape_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2(
&sequential_52/reshape_28/strided_slice
(sequential_52/reshape_28/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_52/reshape_28/Reshape/shape/1
(sequential_52/reshape_28/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2*
(sequential_52/reshape_28/Reshape/shape/2
(sequential_52/reshape_28/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2*
(sequential_52/reshape_28/Reshape/shape/3Ð
&sequential_52/reshape_28/Reshape/shapePack/sequential_52/reshape_28/strided_slice:output:01sequential_52/reshape_28/Reshape/shape/1:output:01sequential_52/reshape_28/Reshape/shape/2:output:01sequential_52/reshape_28/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2(
&sequential_52/reshape_28/Reshape/shapeæ
 sequential_52/reshape_28/ReshapeReshape)sequential_52/dense_52/Relu:activations:0/sequential_52/reshape_28/Reshape/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 sequential_52/reshape_28/Reshape
$sequential_52/up_sampling2d_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2&
$sequential_52/up_sampling2d_56/Const¡
&sequential_52/up_sampling2d_56/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_52/up_sampling2d_56/Const_1Ô
"sequential_52/up_sampling2d_56/mulMul-sequential_52/up_sampling2d_56/Const:output:0/sequential_52/up_sampling2d_56/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_52/up_sampling2d_56/mul»
;sequential_52/up_sampling2d_56/resize/ResizeNearestNeighborResizeNearestNeighbor)sequential_52/reshape_28/Reshape:output:0&sequential_52/up_sampling2d_56/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
half_pixel_centers(2=
;sequential_52/up_sampling2d_56/resize/ResizeNearestNeighborÐ
(sequential_52/conv2d_transpose_101/ShapeShapeLsequential_52/up_sampling2d_56/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_101/Shapeº
6sequential_52/conv2d_transpose_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_52/conv2d_transpose_101/strided_slice/stack¾
8sequential_52/conv2d_transpose_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_101/strided_slice/stack_1¾
8sequential_52/conv2d_transpose_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_101/strided_slice/stack_2´
0sequential_52/conv2d_transpose_101/strided_sliceStridedSlice1sequential_52/conv2d_transpose_101/Shape:output:0?sequential_52/conv2d_transpose_101/strided_slice/stack:output:0Asequential_52/conv2d_transpose_101/strided_slice/stack_1:output:0Asequential_52/conv2d_transpose_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_52/conv2d_transpose_101/strided_slice
*sequential_52/conv2d_transpose_101/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_52/conv2d_transpose_101/stack/1
*sequential_52/conv2d_transpose_101/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_52/conv2d_transpose_101/stack/2
*sequential_52/conv2d_transpose_101/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2,
*sequential_52/conv2d_transpose_101/stack/3ä
(sequential_52/conv2d_transpose_101/stackPack9sequential_52/conv2d_transpose_101/strided_slice:output:03sequential_52/conv2d_transpose_101/stack/1:output:03sequential_52/conv2d_transpose_101/stack/2:output:03sequential_52/conv2d_transpose_101/stack/3:output:0*
N*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_101/stack¾
8sequential_52/conv2d_transpose_101/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8sequential_52/conv2d_transpose_101/strided_slice_1/stackÂ
:sequential_52/conv2d_transpose_101/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_101/strided_slice_1/stack_1Â
:sequential_52/conv2d_transpose_101/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_101/strided_slice_1/stack_2¾
2sequential_52/conv2d_transpose_101/strided_slice_1StridedSlice1sequential_52/conv2d_transpose_101/stack:output:0Asequential_52/conv2d_transpose_101/strided_slice_1/stack:output:0Csequential_52/conv2d_transpose_101/strided_slice_1/stack_1:output:0Csequential_52/conv2d_transpose_101/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_52/conv2d_transpose_101/strided_slice_1
Bsequential_52/conv2d_transpose_101/conv2d_transpose/ReadVariableOpReadVariableOpKsequential_52_conv2d_transpose_101_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02D
Bsequential_52/conv2d_transpose_101/conv2d_transpose/ReadVariableOp±
3sequential_52/conv2d_transpose_101/conv2d_transposeConv2DBackpropInput1sequential_52/conv2d_transpose_101/stack:output:0Jsequential_52/conv2d_transpose_101/conv2d_transpose/ReadVariableOp:value:0Lsequential_52/up_sampling2d_56/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
25
3sequential_52/conv2d_transpose_101/conv2d_transposeö
9sequential_52/conv2d_transpose_101/BiasAdd/ReadVariableOpReadVariableOpBsequential_52_conv2d_transpose_101_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02;
9sequential_52/conv2d_transpose_101/BiasAdd/ReadVariableOp
*sequential_52/conv2d_transpose_101/BiasAddBiasAdd<sequential_52/conv2d_transpose_101/conv2d_transpose:output:0Asequential_52/conv2d_transpose_101/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2,
*sequential_52/conv2d_transpose_101/BiasAddÊ
'sequential_52/conv2d_transpose_101/ReluRelu3sequential_52/conv2d_transpose_101/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2)
'sequential_52/conv2d_transpose_101/Relu
$sequential_52/up_sampling2d_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2&
$sequential_52/up_sampling2d_57/Const¡
&sequential_52/up_sampling2d_57/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2(
&sequential_52/up_sampling2d_57/Const_1Ô
"sequential_52/up_sampling2d_57/mulMul-sequential_52/up_sampling2d_57/Const:output:0/sequential_52/up_sampling2d_57/Const_1:output:0*
T0*
_output_shapes
:2$
"sequential_52/up_sampling2d_57/mulÇ
;sequential_52/up_sampling2d_57/resize/ResizeNearestNeighborResizeNearestNeighbor5sequential_52/conv2d_transpose_101/Relu:activations:0&sequential_52/up_sampling2d_57/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2=
;sequential_52/up_sampling2d_57/resize/ResizeNearestNeighborÐ
(sequential_52/conv2d_transpose_102/ShapeShapeLsequential_52/up_sampling2d_57/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_102/Shapeº
6sequential_52/conv2d_transpose_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_52/conv2d_transpose_102/strided_slice/stack¾
8sequential_52/conv2d_transpose_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_102/strided_slice/stack_1¾
8sequential_52/conv2d_transpose_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_102/strided_slice/stack_2´
0sequential_52/conv2d_transpose_102/strided_sliceStridedSlice1sequential_52/conv2d_transpose_102/Shape:output:0?sequential_52/conv2d_transpose_102/strided_slice/stack:output:0Asequential_52/conv2d_transpose_102/strided_slice/stack_1:output:0Asequential_52/conv2d_transpose_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_52/conv2d_transpose_102/strided_slice
*sequential_52/conv2d_transpose_102/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_52/conv2d_transpose_102/stack/1
*sequential_52/conv2d_transpose_102/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_52/conv2d_transpose_102/stack/2
*sequential_52/conv2d_transpose_102/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_52/conv2d_transpose_102/stack/3ä
(sequential_52/conv2d_transpose_102/stackPack9sequential_52/conv2d_transpose_102/strided_slice:output:03sequential_52/conv2d_transpose_102/stack/1:output:03sequential_52/conv2d_transpose_102/stack/2:output:03sequential_52/conv2d_transpose_102/stack/3:output:0*
N*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_102/stack¾
8sequential_52/conv2d_transpose_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8sequential_52/conv2d_transpose_102/strided_slice_1/stackÂ
:sequential_52/conv2d_transpose_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_102/strided_slice_1/stack_1Â
:sequential_52/conv2d_transpose_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_102/strided_slice_1/stack_2¾
2sequential_52/conv2d_transpose_102/strided_slice_1StridedSlice1sequential_52/conv2d_transpose_102/stack:output:0Asequential_52/conv2d_transpose_102/strided_slice_1/stack:output:0Csequential_52/conv2d_transpose_102/strided_slice_1/stack_1:output:0Csequential_52/conv2d_transpose_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_52/conv2d_transpose_102/strided_slice_1
Bsequential_52/conv2d_transpose_102/conv2d_transpose/ReadVariableOpReadVariableOpKsequential_52_conv2d_transpose_102_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02D
Bsequential_52/conv2d_transpose_102/conv2d_transpose/ReadVariableOp°
3sequential_52/conv2d_transpose_102/conv2d_transposeConv2DBackpropInput1sequential_52/conv2d_transpose_102/stack:output:0Jsequential_52/conv2d_transpose_102/conv2d_transpose/ReadVariableOp:value:0Lsequential_52/up_sampling2d_57/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
paddingSAME*
strides
25
3sequential_52/conv2d_transpose_102/conv2d_transposeõ
9sequential_52/conv2d_transpose_102/BiasAdd/ReadVariableOpReadVariableOpBsequential_52_conv2d_transpose_102_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02;
9sequential_52/conv2d_transpose_102/BiasAdd/ReadVariableOp
*sequential_52/conv2d_transpose_102/BiasAddBiasAdd<sequential_52/conv2d_transpose_102/conv2d_transpose:output:0Asequential_52/conv2d_transpose_102/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2,
*sequential_52/conv2d_transpose_102/BiasAddÉ
'sequential_52/conv2d_transpose_102/ReluRelu3sequential_52/conv2d_transpose_102/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2)
'sequential_52/conv2d_transpose_102/Relu¹
(sequential_52/conv2d_transpose_103/ShapeShape5sequential_52/conv2d_transpose_102/Relu:activations:0*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_103/Shapeº
6sequential_52/conv2d_transpose_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_52/conv2d_transpose_103/strided_slice/stack¾
8sequential_52/conv2d_transpose_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_103/strided_slice/stack_1¾
8sequential_52/conv2d_transpose_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_103/strided_slice/stack_2´
0sequential_52/conv2d_transpose_103/strided_sliceStridedSlice1sequential_52/conv2d_transpose_103/Shape:output:0?sequential_52/conv2d_transpose_103/strided_slice/stack:output:0Asequential_52/conv2d_transpose_103/strided_slice/stack_1:output:0Asequential_52/conv2d_transpose_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_52/conv2d_transpose_103/strided_slice
*sequential_52/conv2d_transpose_103/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_52/conv2d_transpose_103/stack/1
*sequential_52/conv2d_transpose_103/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_52/conv2d_transpose_103/stack/2
*sequential_52/conv2d_transpose_103/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2,
*sequential_52/conv2d_transpose_103/stack/3ä
(sequential_52/conv2d_transpose_103/stackPack9sequential_52/conv2d_transpose_103/strided_slice:output:03sequential_52/conv2d_transpose_103/stack/1:output:03sequential_52/conv2d_transpose_103/stack/2:output:03sequential_52/conv2d_transpose_103/stack/3:output:0*
N*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_103/stack¾
8sequential_52/conv2d_transpose_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8sequential_52/conv2d_transpose_103/strided_slice_1/stackÂ
:sequential_52/conv2d_transpose_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_103/strided_slice_1/stack_1Â
:sequential_52/conv2d_transpose_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_103/strided_slice_1/stack_2¾
2sequential_52/conv2d_transpose_103/strided_slice_1StridedSlice1sequential_52/conv2d_transpose_103/stack:output:0Asequential_52/conv2d_transpose_103/strided_slice_1/stack:output:0Csequential_52/conv2d_transpose_103/strided_slice_1/stack_1:output:0Csequential_52/conv2d_transpose_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_52/conv2d_transpose_103/strided_slice_1
Bsequential_52/conv2d_transpose_103/conv2d_transpose/ReadVariableOpReadVariableOpKsequential_52_conv2d_transpose_103_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02D
Bsequential_52/conv2d_transpose_103/conv2d_transpose/ReadVariableOp
3sequential_52/conv2d_transpose_103/conv2d_transposeConv2DBackpropInput1sequential_52/conv2d_transpose_103/stack:output:0Jsequential_52/conv2d_transpose_103/conv2d_transpose/ReadVariableOp:value:05sequential_52/conv2d_transpose_102/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *
paddingSAME*
strides
25
3sequential_52/conv2d_transpose_103/conv2d_transposeõ
9sequential_52/conv2d_transpose_103/BiasAdd/ReadVariableOpReadVariableOpBsequential_52_conv2d_transpose_103_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02;
9sequential_52/conv2d_transpose_103/BiasAdd/ReadVariableOp
*sequential_52/conv2d_transpose_103/BiasAddBiasAdd<sequential_52/conv2d_transpose_103/conv2d_transpose:output:0Asequential_52/conv2d_transpose_103/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2,
*sequential_52/conv2d_transpose_103/BiasAddÉ
'sequential_52/conv2d_transpose_103/ReluRelu3sequential_52/conv2d_transpose_103/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2)
'sequential_52/conv2d_transpose_103/Relu¹
(sequential_52/conv2d_transpose_104/ShapeShape5sequential_52/conv2d_transpose_103/Relu:activations:0*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_104/Shapeº
6sequential_52/conv2d_transpose_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 28
6sequential_52/conv2d_transpose_104/strided_slice/stack¾
8sequential_52/conv2d_transpose_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_104/strided_slice/stack_1¾
8sequential_52/conv2d_transpose_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2:
8sequential_52/conv2d_transpose_104/strided_slice/stack_2´
0sequential_52/conv2d_transpose_104/strided_sliceStridedSlice1sequential_52/conv2d_transpose_104/Shape:output:0?sequential_52/conv2d_transpose_104/strided_slice/stack:output:0Asequential_52/conv2d_transpose_104/strided_slice/stack_1:output:0Asequential_52/conv2d_transpose_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask22
0sequential_52/conv2d_transpose_104/strided_slice
*sequential_52/conv2d_transpose_104/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_52/conv2d_transpose_104/stack/1
*sequential_52/conv2d_transpose_104/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2,
*sequential_52/conv2d_transpose_104/stack/2
*sequential_52/conv2d_transpose_104/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2,
*sequential_52/conv2d_transpose_104/stack/3ä
(sequential_52/conv2d_transpose_104/stackPack9sequential_52/conv2d_transpose_104/strided_slice:output:03sequential_52/conv2d_transpose_104/stack/1:output:03sequential_52/conv2d_transpose_104/stack/2:output:03sequential_52/conv2d_transpose_104/stack/3:output:0*
N*
T0*
_output_shapes
:2*
(sequential_52/conv2d_transpose_104/stack¾
8sequential_52/conv2d_transpose_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2:
8sequential_52/conv2d_transpose_104/strided_slice_1/stackÂ
:sequential_52/conv2d_transpose_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_104/strided_slice_1/stack_1Â
:sequential_52/conv2d_transpose_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2<
:sequential_52/conv2d_transpose_104/strided_slice_1/stack_2¾
2sequential_52/conv2d_transpose_104/strided_slice_1StridedSlice1sequential_52/conv2d_transpose_104/stack:output:0Asequential_52/conv2d_transpose_104/strided_slice_1/stack:output:0Csequential_52/conv2d_transpose_104/strided_slice_1/stack_1:output:0Csequential_52/conv2d_transpose_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask24
2sequential_52/conv2d_transpose_104/strided_slice_1
Bsequential_52/conv2d_transpose_104/conv2d_transpose/ReadVariableOpReadVariableOpKsequential_52_conv2d_transpose_104_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02D
Bsequential_52/conv2d_transpose_104/conv2d_transpose/ReadVariableOp
3sequential_52/conv2d_transpose_104/conv2d_transposeConv2DBackpropInput1sequential_52/conv2d_transpose_104/stack:output:0Jsequential_52/conv2d_transpose_104/conv2d_transpose/ReadVariableOp:value:05sequential_52/conv2d_transpose_103/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
25
3sequential_52/conv2d_transpose_104/conv2d_transposeõ
9sequential_52/conv2d_transpose_104/BiasAdd/ReadVariableOpReadVariableOpBsequential_52_conv2d_transpose_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02;
9sequential_52/conv2d_transpose_104/BiasAdd/ReadVariableOp
*sequential_52/conv2d_transpose_104/BiasAddBiasAdd<sequential_52/conv2d_transpose_104/conv2d_transpose:output:0Asequential_52/conv2d_transpose_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2,
*sequential_52/conv2d_transpose_104/BiasAddÉ
'sequential_52/conv2d_transpose_104/TanhTanh3sequential_52/conv2d_transpose_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2)
'sequential_52/conv2d_transpose_104/Tanh
!sequential_52/rescaling_27/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :ÿ2#
!sequential_52/rescaling_27/Cast/x¦
sequential_52/rescaling_27/CastCast*sequential_52/rescaling_27/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2!
sequential_52/rescaling_27/Cast
#sequential_52/rescaling_27/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2%
#sequential_52/rescaling_27/Cast_1/xÓ
sequential_52/rescaling_27/mulMul+sequential_52/conv2d_transpose_104/Tanh:y:0#sequential_52/rescaling_27/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2 
sequential_52/rescaling_27/mulÕ
sequential_52/rescaling_27/addAddV2"sequential_52/rescaling_27/mul:z:0,sequential_52/rescaling_27/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2 
sequential_52/rescaling_27/add
IdentityIdentity"sequential_52/rescaling_27/add:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity±
NoOpNoOp:^sequential_52/conv2d_transpose_101/BiasAdd/ReadVariableOpC^sequential_52/conv2d_transpose_101/conv2d_transpose/ReadVariableOp:^sequential_52/conv2d_transpose_102/BiasAdd/ReadVariableOpC^sequential_52/conv2d_transpose_102/conv2d_transpose/ReadVariableOp:^sequential_52/conv2d_transpose_103/BiasAdd/ReadVariableOpC^sequential_52/conv2d_transpose_103/conv2d_transpose/ReadVariableOp:^sequential_52/conv2d_transpose_104/BiasAdd/ReadVariableOpC^sequential_52/conv2d_transpose_104/conv2d_transpose/ReadVariableOp.^sequential_52/dense_52/BiasAdd/ReadVariableOp-^sequential_52/dense_52/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 2v
9sequential_52/conv2d_transpose_101/BiasAdd/ReadVariableOp9sequential_52/conv2d_transpose_101/BiasAdd/ReadVariableOp2
Bsequential_52/conv2d_transpose_101/conv2d_transpose/ReadVariableOpBsequential_52/conv2d_transpose_101/conv2d_transpose/ReadVariableOp2v
9sequential_52/conv2d_transpose_102/BiasAdd/ReadVariableOp9sequential_52/conv2d_transpose_102/BiasAdd/ReadVariableOp2
Bsequential_52/conv2d_transpose_102/conv2d_transpose/ReadVariableOpBsequential_52/conv2d_transpose_102/conv2d_transpose/ReadVariableOp2v
9sequential_52/conv2d_transpose_103/BiasAdd/ReadVariableOp9sequential_52/conv2d_transpose_103/BiasAdd/ReadVariableOp2
Bsequential_52/conv2d_transpose_103/conv2d_transpose/ReadVariableOpBsequential_52/conv2d_transpose_103/conv2d_transpose/ReadVariableOp2v
9sequential_52/conv2d_transpose_104/BiasAdd/ReadVariableOp9sequential_52/conv2d_transpose_104/BiasAdd/ReadVariableOp2
Bsequential_52/conv2d_transpose_104/conv2d_transpose/ReadVariableOpBsequential_52/conv2d_transpose_104/conv2d_transpose/ReadVariableOp2^
-sequential_52/dense_52/BiasAdd/ReadVariableOp-sequential_52/dense_52/BiasAdd/ReadVariableOp2\
,sequential_52/dense_52/MatMul/ReadVariableOp,sequential_52/dense_52/MatMul/ReadVariableOp:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(
_user_specified_namedense_52_input
ø%

Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_2143013

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
«
¡
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2141968

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/2U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2142035

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpÞ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs


Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2142961

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpÞ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs


Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_2143037

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpÞ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 
 
_user_specified_nameinputs
æ
J
.__inference_rescaling_27_layer_call_fn_2143069

inputs
identityÏ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_rescaling_27_layer_call_and_return_conditional_losses_21420792
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
Ø
H
,__inference_reshape_28_layer_call_fn_2142691

inputs
identityÎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_28_layer_call_and_return_conditional_losses_21419342
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ú
E__inference_dense_52_layer_call_and_return_conditional_losses_2141914

inputs2
matmul_readvariableop_resource:
d/
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
d*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddZ
ReluReluBiasAdd:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0^NoOp*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ìS
û
 __inference__traced_save_2143197
file_prefix.
*savev2_dense_52_kernel_read_readvariableop,
(savev2_dense_52_bias_read_readvariableop:
6savev2_conv2d_transpose_101_kernel_read_readvariableop8
4savev2_conv2d_transpose_101_bias_read_readvariableop:
6savev2_conv2d_transpose_102_kernel_read_readvariableop8
4savev2_conv2d_transpose_102_bias_read_readvariableop:
6savev2_conv2d_transpose_103_kernel_read_readvariableop8
4savev2_conv2d_transpose_103_bias_read_readvariableop:
6savev2_conv2d_transpose_104_kernel_read_readvariableop8
4savev2_conv2d_transpose_104_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop5
1savev2_adam_dense_52_kernel_m_read_readvariableop3
/savev2_adam_dense_52_bias_m_read_readvariableopA
=savev2_adam_conv2d_transpose_101_kernel_m_read_readvariableop?
;savev2_adam_conv2d_transpose_101_bias_m_read_readvariableopA
=savev2_adam_conv2d_transpose_102_kernel_m_read_readvariableop?
;savev2_adam_conv2d_transpose_102_bias_m_read_readvariableopA
=savev2_adam_conv2d_transpose_103_kernel_m_read_readvariableop?
;savev2_adam_conv2d_transpose_103_bias_m_read_readvariableopA
=savev2_adam_conv2d_transpose_104_kernel_m_read_readvariableop?
;savev2_adam_conv2d_transpose_104_bias_m_read_readvariableop5
1savev2_adam_dense_52_kernel_v_read_readvariableop3
/savev2_adam_dense_52_bias_v_read_readvariableopA
=savev2_adam_conv2d_transpose_101_kernel_v_read_readvariableop?
;savev2_adam_conv2d_transpose_101_bias_v_read_readvariableopA
=savev2_adam_conv2d_transpose_102_kernel_v_read_readvariableop?
;savev2_adam_conv2d_transpose_102_bias_v_read_readvariableopA
=savev2_adam_conv2d_transpose_103_kernel_v_read_readvariableop?
;savev2_adam_conv2d_transpose_103_bias_v_read_readvariableopA
=savev2_adam_conv2d_transpose_104_kernel_v_read_readvariableop?
;savev2_adam_conv2d_transpose_104_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename¨
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*º
value°B­$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÐ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesß
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_52_kernel_read_readvariableop(savev2_dense_52_bias_read_readvariableop6savev2_conv2d_transpose_101_kernel_read_readvariableop4savev2_conv2d_transpose_101_bias_read_readvariableop6savev2_conv2d_transpose_102_kernel_read_readvariableop4savev2_conv2d_transpose_102_bias_read_readvariableop6savev2_conv2d_transpose_103_kernel_read_readvariableop4savev2_conv2d_transpose_103_bias_read_readvariableop6savev2_conv2d_transpose_104_kernel_read_readvariableop4savev2_conv2d_transpose_104_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop1savev2_adam_dense_52_kernel_m_read_readvariableop/savev2_adam_dense_52_bias_m_read_readvariableop=savev2_adam_conv2d_transpose_101_kernel_m_read_readvariableop;savev2_adam_conv2d_transpose_101_bias_m_read_readvariableop=savev2_adam_conv2d_transpose_102_kernel_m_read_readvariableop;savev2_adam_conv2d_transpose_102_bias_m_read_readvariableop=savev2_adam_conv2d_transpose_103_kernel_m_read_readvariableop;savev2_adam_conv2d_transpose_103_bias_m_read_readvariableop=savev2_adam_conv2d_transpose_104_kernel_m_read_readvariableop;savev2_adam_conv2d_transpose_104_bias_m_read_readvariableop1savev2_adam_dense_52_kernel_v_read_readvariableop/savev2_adam_dense_52_bias_v_read_readvariableop=savev2_adam_conv2d_transpose_101_kernel_v_read_readvariableop;savev2_adam_conv2d_transpose_101_bias_v_read_readvariableop=savev2_adam_conv2d_transpose_102_kernel_v_read_readvariableop;savev2_adam_conv2d_transpose_102_bias_v_read_readvariableop=savev2_adam_conv2d_transpose_103_kernel_v_read_readvariableop;savev2_adam_conv2d_transpose_103_bias_v_read_readvariableop=savev2_adam_conv2d_transpose_104_kernel_v_read_readvariableop;savev2_adam_conv2d_transpose_104_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *2
dtypes(
&2$	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*
_input_shapesù
ö: :
d::::@:@: @: : :: : : : : :
d::::@:@: @: : ::
d::::@:@: @: : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
d:"

_output_shapes

::.*
(
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,	(
&
_output_shapes
: : 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
d:"

_output_shapes

::.*
(
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::&"
 
_output_shapes
:
d:"

_output_shapes

::.*
(
_output_shapes
::!

_output_shapes	
::-)
'
_output_shapes
:@: 

_output_shapes
:@:, (
&
_output_shapes
: @: !

_output_shapes
: :,"(
&
_output_shapes
: : #

_output_shapes
::$

_output_shapes
: 


Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_2142064

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpÞ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2	
BiasAdd`
TanhTanhBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
Tanhk
IdentityIdentityTanh:y:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 
 
_user_specified_nameinputs
¢

Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2142006

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1´
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpÞ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
´
i
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2142809

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÕ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ë
#__inference__traced_restore_2143312
file_prefix4
 assignvariableop_dense_52_kernel:
d0
 assignvariableop_1_dense_52_bias:
J
.assignvariableop_2_conv2d_transpose_101_kernel:;
,assignvariableop_3_conv2d_transpose_101_bias:	I
.assignvariableop_4_conv2d_transpose_102_kernel:@:
,assignvariableop_5_conv2d_transpose_102_bias:@H
.assignvariableop_6_conv2d_transpose_103_kernel: @:
,assignvariableop_7_conv2d_transpose_103_bias: H
.assignvariableop_8_conv2d_transpose_104_kernel: :
,assignvariableop_9_conv2d_transpose_104_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: >
*assignvariableop_15_adam_dense_52_kernel_m:
d8
(assignvariableop_16_adam_dense_52_bias_m:
R
6assignvariableop_17_adam_conv2d_transpose_101_kernel_m:C
4assignvariableop_18_adam_conv2d_transpose_101_bias_m:	Q
6assignvariableop_19_adam_conv2d_transpose_102_kernel_m:@B
4assignvariableop_20_adam_conv2d_transpose_102_bias_m:@P
6assignvariableop_21_adam_conv2d_transpose_103_kernel_m: @B
4assignvariableop_22_adam_conv2d_transpose_103_bias_m: P
6assignvariableop_23_adam_conv2d_transpose_104_kernel_m: B
4assignvariableop_24_adam_conv2d_transpose_104_bias_m:>
*assignvariableop_25_adam_dense_52_kernel_v:
d8
(assignvariableop_26_adam_dense_52_bias_v:
R
6assignvariableop_27_adam_conv2d_transpose_101_kernel_v:C
4assignvariableop_28_adam_conv2d_transpose_101_bias_v:	Q
6assignvariableop_29_adam_conv2d_transpose_102_kernel_v:@B
4assignvariableop_30_adam_conv2d_transpose_102_bias_v:@P
6assignvariableop_31_adam_conv2d_transpose_103_kernel_v: @B
4assignvariableop_32_adam_conv2d_transpose_103_bias_v: P
6assignvariableop_33_adam_conv2d_transpose_104_kernel_v: B
4assignvariableop_34_adam_conv2d_transpose_104_bias_v:
identity_36¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9®
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*º
value°B­$B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÖ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesâ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¦
_output_shapes
::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOp assignvariableop_dense_52_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¥
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_52_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2³
AssignVariableOp_2AssignVariableOp.assignvariableop_2_conv2d_transpose_101_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3±
AssignVariableOp_3AssignVariableOp,assignvariableop_3_conv2d_transpose_101_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4³
AssignVariableOp_4AssignVariableOp.assignvariableop_4_conv2d_transpose_102_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5±
AssignVariableOp_5AssignVariableOp,assignvariableop_5_conv2d_transpose_102_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6³
AssignVariableOp_6AssignVariableOp.assignvariableop_6_conv2d_transpose_103_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7±
AssignVariableOp_7AssignVariableOp,assignvariableop_7_conv2d_transpose_103_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8³
AssignVariableOp_8AssignVariableOp.assignvariableop_8_conv2d_transpose_104_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9±
AssignVariableOp_9AssignVariableOp,assignvariableop_9_conv2d_transpose_104_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10¥
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¦
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14®
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15²
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_52_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16°
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_52_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¾
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adam_conv2d_transpose_101_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_conv2d_transpose_101_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¾
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adam_conv2d_transpose_102_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¼
AssignVariableOp_20AssignVariableOp4assignvariableop_20_adam_conv2d_transpose_102_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¾
AssignVariableOp_21AssignVariableOp6assignvariableop_21_adam_conv2d_transpose_103_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¼
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_conv2d_transpose_103_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¾
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_conv2d_transpose_104_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¼
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_conv2d_transpose_104_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_52_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26°
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_52_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27¾
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_conv2d_transpose_101_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¼
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_conv2d_transpose_101_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¾
AssignVariableOp_29AssignVariableOp6assignvariableop_29_adam_conv2d_transpose_102_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¼
AssignVariableOp_30AssignVariableOp4assignvariableop_30_adam_conv2d_transpose_102_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31¾
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_conv2d_transpose_103_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32¼
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_conv2d_transpose_103_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¾
AssignVariableOp_33AssignVariableOp6assignvariableop_33_adam_conv2d_transpose_104_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¼
AssignVariableOp_34AssignVariableOp4assignvariableop_34_adam_conv2d_transpose_104_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_349
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpà
Identity_35Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_35f
Identity_36IdentityIdentity_35:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_36È
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_36Identity_36:output:0*[
_input_shapesJ
H: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
´
«
6__inference_conv2d_transpose_104_layer_call_fn_2143055

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_21420642
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 
 
_user_specified_nameinputs
®°
¯

J__inference_sequential_52_layer_call_and_return_conditional_losses_2142602

inputs;
'dense_52_matmul_readvariableop_resource:
d8
(dense_52_biasadd_readvariableop_resource:
Y
=conv2d_transpose_101_conv2d_transpose_readvariableop_resource:C
4conv2d_transpose_101_biasadd_readvariableop_resource:	X
=conv2d_transpose_102_conv2d_transpose_readvariableop_resource:@B
4conv2d_transpose_102_biasadd_readvariableop_resource:@W
=conv2d_transpose_103_conv2d_transpose_readvariableop_resource: @B
4conv2d_transpose_103_biasadd_readvariableop_resource: W
=conv2d_transpose_104_conv2d_transpose_readvariableop_resource: B
4conv2d_transpose_104_biasadd_readvariableop_resource:
identity¢+conv2d_transpose_101/BiasAdd/ReadVariableOp¢4conv2d_transpose_101/conv2d_transpose/ReadVariableOp¢+conv2d_transpose_102/BiasAdd/ReadVariableOp¢4conv2d_transpose_102/conv2d_transpose/ReadVariableOp¢+conv2d_transpose_103/BiasAdd/ReadVariableOp¢4conv2d_transpose_103/conv2d_transpose/ReadVariableOp¢+conv2d_transpose_104/BiasAdd/ReadVariableOp¢4conv2d_transpose_104/conv2d_transpose/ReadVariableOp¢dense_52/BiasAdd/ReadVariableOp¢dense_52/MatMul/ReadVariableOpª
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource* 
_output_shapes
:
d*
dtype02 
dense_52/MatMul/ReadVariableOp
dense_52/MatMulMatMulinputs&dense_52/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/MatMul©
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_52/BiasAdd/ReadVariableOp§
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/BiasAddu
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/Reluo
reshape_28/ShapeShapedense_52/Relu:activations:0*
T0*
_output_shapes
:2
reshape_28/Shape
reshape_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_28/strided_slice/stack
 reshape_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_28/strided_slice/stack_1
 reshape_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_28/strided_slice/stack_2¤
reshape_28/strided_sliceStridedSlicereshape_28/Shape:output:0'reshape_28/strided_slice/stack:output:0)reshape_28/strided_slice/stack_1:output:0)reshape_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_28/strided_slicez
reshape_28/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_28/Reshape/shape/1z
reshape_28/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_28/Reshape/shape/2{
reshape_28/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
reshape_28/Reshape/shape/3ü
reshape_28/Reshape/shapePack!reshape_28/strided_slice:output:0#reshape_28/Reshape/shape/1:output:0#reshape_28/Reshape/shape/2:output:0#reshape_28/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_28/Reshape/shape®
reshape_28/ReshapeReshapedense_52/Relu:activations:0!reshape_28/Reshape/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_28/Reshape
up_sampling2d_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_56/Const
up_sampling2d_56/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_56/Const_1
up_sampling2d_56/mulMulup_sampling2d_56/Const:output:0!up_sampling2d_56/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_56/mul
-up_sampling2d_56/resize/ResizeNearestNeighborResizeNearestNeighborreshape_28/Reshape:output:0up_sampling2d_56/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
half_pixel_centers(2/
-up_sampling2d_56/resize/ResizeNearestNeighbor¦
conv2d_transpose_101/ShapeShape>up_sampling2d_56/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_101/Shape
(conv2d_transpose_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_101/strided_slice/stack¢
*conv2d_transpose_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_101/strided_slice/stack_1¢
*conv2d_transpose_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_101/strided_slice/stack_2à
"conv2d_transpose_101/strided_sliceStridedSlice#conv2d_transpose_101/Shape:output:01conv2d_transpose_101/strided_slice/stack:output:03conv2d_transpose_101/strided_slice/stack_1:output:03conv2d_transpose_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_101/strided_slice~
conv2d_transpose_101/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_101/stack/1~
conv2d_transpose_101/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_101/stack/2
conv2d_transpose_101/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_101/stack/3
conv2d_transpose_101/stackPack+conv2d_transpose_101/strided_slice:output:0%conv2d_transpose_101/stack/1:output:0%conv2d_transpose_101/stack/2:output:0%conv2d_transpose_101/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_101/stack¢
*conv2d_transpose_101/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_101/strided_slice_1/stack¦
,conv2d_transpose_101/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_101/strided_slice_1/stack_1¦
,conv2d_transpose_101/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_101/strided_slice_1/stack_2ê
$conv2d_transpose_101/strided_slice_1StridedSlice#conv2d_transpose_101/stack:output:03conv2d_transpose_101/strided_slice_1/stack:output:05conv2d_transpose_101/strided_slice_1/stack_1:output:05conv2d_transpose_101/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_101/strided_slice_1ô
4conv2d_transpose_101/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_101_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype026
4conv2d_transpose_101/conv2d_transpose/ReadVariableOpë
%conv2d_transpose_101/conv2d_transposeConv2DBackpropInput#conv2d_transpose_101/stack:output:0<conv2d_transpose_101/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_56/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2'
%conv2d_transpose_101/conv2d_transposeÌ
+conv2d_transpose_101/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_101_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+conv2d_transpose_101/BiasAdd/ReadVariableOpç
conv2d_transpose_101/BiasAddBiasAdd.conv2d_transpose_101/conv2d_transpose:output:03conv2d_transpose_101/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_transpose_101/BiasAdd 
conv2d_transpose_101/ReluRelu%conv2d_transpose_101/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_transpose_101/Relu
up_sampling2d_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_57/Const
up_sampling2d_57/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_57/Const_1
up_sampling2d_57/mulMulup_sampling2d_57/Const:output:0!up_sampling2d_57/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_57/mul
-up_sampling2d_57/resize/ResizeNearestNeighborResizeNearestNeighbor'conv2d_transpose_101/Relu:activations:0up_sampling2d_57/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2/
-up_sampling2d_57/resize/ResizeNearestNeighbor¦
conv2d_transpose_102/ShapeShape>up_sampling2d_57/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_102/Shape
(conv2d_transpose_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_102/strided_slice/stack¢
*conv2d_transpose_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_102/strided_slice/stack_1¢
*conv2d_transpose_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_102/strided_slice/stack_2à
"conv2d_transpose_102/strided_sliceStridedSlice#conv2d_transpose_102/Shape:output:01conv2d_transpose_102/strided_slice/stack:output:03conv2d_transpose_102/strided_slice/stack_1:output:03conv2d_transpose_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_102/strided_slice~
conv2d_transpose_102/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_102/stack/1~
conv2d_transpose_102/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_102/stack/2~
conv2d_transpose_102/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_102/stack/3
conv2d_transpose_102/stackPack+conv2d_transpose_102/strided_slice:output:0%conv2d_transpose_102/stack/1:output:0%conv2d_transpose_102/stack/2:output:0%conv2d_transpose_102/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_102/stack¢
*conv2d_transpose_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_102/strided_slice_1/stack¦
,conv2d_transpose_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_102/strided_slice_1/stack_1¦
,conv2d_transpose_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_102/strided_slice_1/stack_2ê
$conv2d_transpose_102/strided_slice_1StridedSlice#conv2d_transpose_102/stack:output:03conv2d_transpose_102/strided_slice_1/stack:output:05conv2d_transpose_102/strided_slice_1/stack_1:output:05conv2d_transpose_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_102/strided_slice_1ó
4conv2d_transpose_102/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_102_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype026
4conv2d_transpose_102/conv2d_transpose/ReadVariableOpê
%conv2d_transpose_102/conv2d_transposeConv2DBackpropInput#conv2d_transpose_102/stack:output:0<conv2d_transpose_102/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_57/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
paddingSAME*
strides
2'
%conv2d_transpose_102/conv2d_transposeË
+conv2d_transpose_102/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_102_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+conv2d_transpose_102/BiasAdd/ReadVariableOpæ
conv2d_transpose_102/BiasAddBiasAdd.conv2d_transpose_102/conv2d_transpose:output:03conv2d_transpose_102/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
conv2d_transpose_102/BiasAdd
conv2d_transpose_102/ReluRelu%conv2d_transpose_102/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
conv2d_transpose_102/Relu
conv2d_transpose_103/ShapeShape'conv2d_transpose_102/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_103/Shape
(conv2d_transpose_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_103/strided_slice/stack¢
*conv2d_transpose_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_103/strided_slice/stack_1¢
*conv2d_transpose_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_103/strided_slice/stack_2à
"conv2d_transpose_103/strided_sliceStridedSlice#conv2d_transpose_103/Shape:output:01conv2d_transpose_103/strided_slice/stack:output:03conv2d_transpose_103/strided_slice/stack_1:output:03conv2d_transpose_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_103/strided_slice~
conv2d_transpose_103/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_103/stack/1~
conv2d_transpose_103/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_103/stack/2~
conv2d_transpose_103/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_103/stack/3
conv2d_transpose_103/stackPack+conv2d_transpose_103/strided_slice:output:0%conv2d_transpose_103/stack/1:output:0%conv2d_transpose_103/stack/2:output:0%conv2d_transpose_103/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_103/stack¢
*conv2d_transpose_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_103/strided_slice_1/stack¦
,conv2d_transpose_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_103/strided_slice_1/stack_1¦
,conv2d_transpose_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_103/strided_slice_1/stack_2ê
$conv2d_transpose_103/strided_slice_1StridedSlice#conv2d_transpose_103/stack:output:03conv2d_transpose_103/strided_slice_1/stack:output:05conv2d_transpose_103/strided_slice_1/stack_1:output:05conv2d_transpose_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_103/strided_slice_1ò
4conv2d_transpose_103/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_103_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype026
4conv2d_transpose_103/conv2d_transpose/ReadVariableOpÓ
%conv2d_transpose_103/conv2d_transposeConv2DBackpropInput#conv2d_transpose_103/stack:output:0<conv2d_transpose_103/conv2d_transpose/ReadVariableOp:value:0'conv2d_transpose_102/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *
paddingSAME*
strides
2'
%conv2d_transpose_103/conv2d_transposeË
+conv2d_transpose_103/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_103_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+conv2d_transpose_103/BiasAdd/ReadVariableOpæ
conv2d_transpose_103/BiasAddBiasAdd.conv2d_transpose_103/conv2d_transpose:output:03conv2d_transpose_103/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2
conv2d_transpose_103/BiasAdd
conv2d_transpose_103/ReluRelu%conv2d_transpose_103/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2
conv2d_transpose_103/Relu
conv2d_transpose_104/ShapeShape'conv2d_transpose_103/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_104/Shape
(conv2d_transpose_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_104/strided_slice/stack¢
*conv2d_transpose_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_104/strided_slice/stack_1¢
*conv2d_transpose_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_104/strided_slice/stack_2à
"conv2d_transpose_104/strided_sliceStridedSlice#conv2d_transpose_104/Shape:output:01conv2d_transpose_104/strided_slice/stack:output:03conv2d_transpose_104/strided_slice/stack_1:output:03conv2d_transpose_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_104/strided_slice~
conv2d_transpose_104/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_104/stack/1~
conv2d_transpose_104/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_104/stack/2~
conv2d_transpose_104/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_104/stack/3
conv2d_transpose_104/stackPack+conv2d_transpose_104/strided_slice:output:0%conv2d_transpose_104/stack/1:output:0%conv2d_transpose_104/stack/2:output:0%conv2d_transpose_104/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_104/stack¢
*conv2d_transpose_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_104/strided_slice_1/stack¦
,conv2d_transpose_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_104/strided_slice_1/stack_1¦
,conv2d_transpose_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_104/strided_slice_1/stack_2ê
$conv2d_transpose_104/strided_slice_1StridedSlice#conv2d_transpose_104/stack:output:03conv2d_transpose_104/strided_slice_1/stack:output:05conv2d_transpose_104/strided_slice_1/stack_1:output:05conv2d_transpose_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_104/strided_slice_1ò
4conv2d_transpose_104/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_104_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype026
4conv2d_transpose_104/conv2d_transpose/ReadVariableOpÓ
%conv2d_transpose_104/conv2d_transposeConv2DBackpropInput#conv2d_transpose_104/stack:output:0<conv2d_transpose_104/conv2d_transpose/ReadVariableOp:value:0'conv2d_transpose_103/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2'
%conv2d_transpose_104/conv2d_transposeË
+conv2d_transpose_104/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+conv2d_transpose_104/BiasAdd/ReadVariableOpæ
conv2d_transpose_104/BiasAddBiasAdd.conv2d_transpose_104/conv2d_transpose:output:03conv2d_transpose_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_transpose_104/BiasAdd
conv2d_transpose_104/TanhTanh%conv2d_transpose_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_transpose_104/Tanhm
rescaling_27/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :ÿ2
rescaling_27/Cast/x|
rescaling_27/CastCastrescaling_27/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
rescaling_27/Casts
rescaling_27/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_27/Cast_1/x
rescaling_27/mulMulconv2d_transpose_104/Tanh:y:0rescaling_27/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_27/mul
rescaling_27/addAddV2rescaling_27/mul:z:0rescaling_27/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_27/addw
IdentityIdentityrescaling_27/add:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity¥
NoOpNoOp,^conv2d_transpose_101/BiasAdd/ReadVariableOp5^conv2d_transpose_101/conv2d_transpose/ReadVariableOp,^conv2d_transpose_102/BiasAdd/ReadVariableOp5^conv2d_transpose_102/conv2d_transpose/ReadVariableOp,^conv2d_transpose_103/BiasAdd/ReadVariableOp5^conv2d_transpose_103/conv2d_transpose/ReadVariableOp,^conv2d_transpose_104/BiasAdd/ReadVariableOp5^conv2d_transpose_104/conv2d_transpose/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 2Z
+conv2d_transpose_101/BiasAdd/ReadVariableOp+conv2d_transpose_101/BiasAdd/ReadVariableOp2l
4conv2d_transpose_101/conv2d_transpose/ReadVariableOp4conv2d_transpose_101/conv2d_transpose/ReadVariableOp2Z
+conv2d_transpose_102/BiasAdd/ReadVariableOp+conv2d_transpose_102/BiasAdd/ReadVariableOp2l
4conv2d_transpose_102/conv2d_transpose/ReadVariableOp4conv2d_transpose_102/conv2d_transpose/ReadVariableOp2Z
+conv2d_transpose_103/BiasAdd/ReadVariableOp+conv2d_transpose_103/BiasAdd/ReadVariableOp2l
4conv2d_transpose_103/conv2d_transpose/ReadVariableOp4conv2d_transpose_103/conv2d_transpose/ReadVariableOp2Z
+conv2d_transpose_104/BiasAdd/ReadVariableOp+conv2d_transpose_104/BiasAdd/ReadVariableOp2l
4conv2d_transpose_104/conv2d_transpose/ReadVariableOp4conv2d_transpose_104/conv2d_transpose/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
&
¡
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2141546

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpñ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp¥
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
i
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2141612

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÕ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï
e
I__inference_rescaling_27_layer_call_and_return_conditional_losses_2143064

inputs
identityS
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :ÿ2
Cast/xU
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/x]
mulMulinputsCast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
muli
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
ò
N
2__inference_up_sampling2d_57_layer_call_fn_2142827

inputs
identityÔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_21419812
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
«
¡
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2142779

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/2U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpß
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2	
BiasAdda
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
Reluv
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
¢

Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2142885

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliceT
stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/1T
stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/2T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
stackPackstrided_slice:output:0stack/1:output:0stack/2:output:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSlicestack:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1´
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpÞ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
Reluu
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs

¤
/__inference_sequential_52_layer_call_fn_2142105
dense_52_input
unknown:
d
	unknown_0:
%
	unknown_1:
	unknown_2:	$
	unknown_3:@
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCalldense_52_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_52_layer_call_and_return_conditional_losses_21420822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(
_user_specified_namedense_52_input
	
®
6__inference_conv2d_transpose_101_layer_call_fn_2142788

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_21415462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
®°
¯

J__inference_sequential_52_layer_call_and_return_conditional_losses_2142488

inputs;
'dense_52_matmul_readvariableop_resource:
d8
(dense_52_biasadd_readvariableop_resource:
Y
=conv2d_transpose_101_conv2d_transpose_readvariableop_resource:C
4conv2d_transpose_101_biasadd_readvariableop_resource:	X
=conv2d_transpose_102_conv2d_transpose_readvariableop_resource:@B
4conv2d_transpose_102_biasadd_readvariableop_resource:@W
=conv2d_transpose_103_conv2d_transpose_readvariableop_resource: @B
4conv2d_transpose_103_biasadd_readvariableop_resource: W
=conv2d_transpose_104_conv2d_transpose_readvariableop_resource: B
4conv2d_transpose_104_biasadd_readvariableop_resource:
identity¢+conv2d_transpose_101/BiasAdd/ReadVariableOp¢4conv2d_transpose_101/conv2d_transpose/ReadVariableOp¢+conv2d_transpose_102/BiasAdd/ReadVariableOp¢4conv2d_transpose_102/conv2d_transpose/ReadVariableOp¢+conv2d_transpose_103/BiasAdd/ReadVariableOp¢4conv2d_transpose_103/conv2d_transpose/ReadVariableOp¢+conv2d_transpose_104/BiasAdd/ReadVariableOp¢4conv2d_transpose_104/conv2d_transpose/ReadVariableOp¢dense_52/BiasAdd/ReadVariableOp¢dense_52/MatMul/ReadVariableOpª
dense_52/MatMul/ReadVariableOpReadVariableOp'dense_52_matmul_readvariableop_resource* 
_output_shapes
:
d*
dtype02 
dense_52/MatMul/ReadVariableOp
dense_52/MatMulMatMulinputs&dense_52/MatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/MatMul©
dense_52/BiasAdd/ReadVariableOpReadVariableOp(dense_52_biasadd_readvariableop_resource*
_output_shapes

:*
dtype02!
dense_52/BiasAdd/ReadVariableOp§
dense_52/BiasAddBiasAdddense_52/MatMul:product:0'dense_52/BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/BiasAddu
dense_52/ReluReludense_52/BiasAdd:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_52/Reluo
reshape_28/ShapeShapedense_52/Relu:activations:0*
T0*
_output_shapes
:2
reshape_28/Shape
reshape_28/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2 
reshape_28/strided_slice/stack
 reshape_28/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_28/strided_slice/stack_1
 reshape_28/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2"
 reshape_28/strided_slice/stack_2¤
reshape_28/strided_sliceStridedSlicereshape_28/Shape:output:0'reshape_28/strided_slice/stack:output:0)reshape_28/strided_slice/stack_1:output:0)reshape_28/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_28/strided_slicez
reshape_28/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_28/Reshape/shape/1z
reshape_28/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_28/Reshape/shape/2{
reshape_28/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
reshape_28/Reshape/shape/3ü
reshape_28/Reshape/shapePack!reshape_28/strided_slice:output:0#reshape_28/Reshape/shape/1:output:0#reshape_28/Reshape/shape/2:output:0#reshape_28/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_28/Reshape/shape®
reshape_28/ReshapeReshapedense_52/Relu:activations:0!reshape_28/Reshape/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
reshape_28/Reshape
up_sampling2d_56/ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_56/Const
up_sampling2d_56/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_56/Const_1
up_sampling2d_56/mulMulup_sampling2d_56/Const:output:0!up_sampling2d_56/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_56/mul
-up_sampling2d_56/resize/ResizeNearestNeighborResizeNearestNeighborreshape_28/Reshape:output:0up_sampling2d_56/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
half_pixel_centers(2/
-up_sampling2d_56/resize/ResizeNearestNeighbor¦
conv2d_transpose_101/ShapeShape>up_sampling2d_56/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_101/Shape
(conv2d_transpose_101/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_101/strided_slice/stack¢
*conv2d_transpose_101/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_101/strided_slice/stack_1¢
*conv2d_transpose_101/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_101/strided_slice/stack_2à
"conv2d_transpose_101/strided_sliceStridedSlice#conv2d_transpose_101/Shape:output:01conv2d_transpose_101/strided_slice/stack:output:03conv2d_transpose_101/strided_slice/stack_1:output:03conv2d_transpose_101/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_101/strided_slice~
conv2d_transpose_101/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_101/stack/1~
conv2d_transpose_101/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_101/stack/2
conv2d_transpose_101/stack/3Const*
_output_shapes
: *
dtype0*
value
B :2
conv2d_transpose_101/stack/3
conv2d_transpose_101/stackPack+conv2d_transpose_101/strided_slice:output:0%conv2d_transpose_101/stack/1:output:0%conv2d_transpose_101/stack/2:output:0%conv2d_transpose_101/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_101/stack¢
*conv2d_transpose_101/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_101/strided_slice_1/stack¦
,conv2d_transpose_101/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_101/strided_slice_1/stack_1¦
,conv2d_transpose_101/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_101/strided_slice_1/stack_2ê
$conv2d_transpose_101/strided_slice_1StridedSlice#conv2d_transpose_101/stack:output:03conv2d_transpose_101/strided_slice_1/stack:output:05conv2d_transpose_101/strided_slice_1/stack_1:output:05conv2d_transpose_101/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_101/strided_slice_1ô
4conv2d_transpose_101/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_101_conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype026
4conv2d_transpose_101/conv2d_transpose/ReadVariableOpë
%conv2d_transpose_101/conv2d_transposeConv2DBackpropInput#conv2d_transpose_101/stack:output:0<conv2d_transpose_101/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_56/resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
paddingSAME*
strides
2'
%conv2d_transpose_101/conv2d_transposeÌ
+conv2d_transpose_101/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_101_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02-
+conv2d_transpose_101/BiasAdd/ReadVariableOpç
conv2d_transpose_101/BiasAddBiasAdd.conv2d_transpose_101/conv2d_transpose:output:03conv2d_transpose_101/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_transpose_101/BiasAdd 
conv2d_transpose_101/ReluRelu%conv2d_transpose_101/BiasAdd:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2
conv2d_transpose_101/Relu
up_sampling2d_57/ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
up_sampling2d_57/Const
up_sampling2d_57/Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2
up_sampling2d_57/Const_1
up_sampling2d_57/mulMulup_sampling2d_57/Const:output:0!up_sampling2d_57/Const_1:output:0*
T0*
_output_shapes
:2
up_sampling2d_57/mul
-up_sampling2d_57/resize/ResizeNearestNeighborResizeNearestNeighbor'conv2d_transpose_101/Relu:activations:0up_sampling2d_57/mul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2/
-up_sampling2d_57/resize/ResizeNearestNeighbor¦
conv2d_transpose_102/ShapeShape>up_sampling2d_57/resize/ResizeNearestNeighbor:resized_images:0*
T0*
_output_shapes
:2
conv2d_transpose_102/Shape
(conv2d_transpose_102/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_102/strided_slice/stack¢
*conv2d_transpose_102/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_102/strided_slice/stack_1¢
*conv2d_transpose_102/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_102/strided_slice/stack_2à
"conv2d_transpose_102/strided_sliceStridedSlice#conv2d_transpose_102/Shape:output:01conv2d_transpose_102/strided_slice/stack:output:03conv2d_transpose_102/strided_slice/stack_1:output:03conv2d_transpose_102/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_102/strided_slice~
conv2d_transpose_102/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_102/stack/1~
conv2d_transpose_102/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_102/stack/2~
conv2d_transpose_102/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_102/stack/3
conv2d_transpose_102/stackPack+conv2d_transpose_102/strided_slice:output:0%conv2d_transpose_102/stack/1:output:0%conv2d_transpose_102/stack/2:output:0%conv2d_transpose_102/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_102/stack¢
*conv2d_transpose_102/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_102/strided_slice_1/stack¦
,conv2d_transpose_102/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_102/strided_slice_1/stack_1¦
,conv2d_transpose_102/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_102/strided_slice_1/stack_2ê
$conv2d_transpose_102/strided_slice_1StridedSlice#conv2d_transpose_102/stack:output:03conv2d_transpose_102/strided_slice_1/stack:output:05conv2d_transpose_102/strided_slice_1/stack_1:output:05conv2d_transpose_102/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_102/strided_slice_1ó
4conv2d_transpose_102/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_102_conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype026
4conv2d_transpose_102/conv2d_transpose/ReadVariableOpê
%conv2d_transpose_102/conv2d_transposeConv2DBackpropInput#conv2d_transpose_102/stack:output:0<conv2d_transpose_102/conv2d_transpose/ReadVariableOp:value:0>up_sampling2d_57/resize/ResizeNearestNeighbor:resized_images:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*
paddingSAME*
strides
2'
%conv2d_transpose_102/conv2d_transposeË
+conv2d_transpose_102/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_102_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02-
+conv2d_transpose_102/BiasAdd/ReadVariableOpæ
conv2d_transpose_102/BiasAddBiasAdd.conv2d_transpose_102/conv2d_transpose:output:03conv2d_transpose_102/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
conv2d_transpose_102/BiasAdd
conv2d_transpose_102/ReluRelu%conv2d_transpose_102/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2
conv2d_transpose_102/Relu
conv2d_transpose_103/ShapeShape'conv2d_transpose_102/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_103/Shape
(conv2d_transpose_103/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_103/strided_slice/stack¢
*conv2d_transpose_103/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_103/strided_slice/stack_1¢
*conv2d_transpose_103/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_103/strided_slice/stack_2à
"conv2d_transpose_103/strided_sliceStridedSlice#conv2d_transpose_103/Shape:output:01conv2d_transpose_103/strided_slice/stack:output:03conv2d_transpose_103/strided_slice/stack_1:output:03conv2d_transpose_103/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_103/strided_slice~
conv2d_transpose_103/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_103/stack/1~
conv2d_transpose_103/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_103/stack/2~
conv2d_transpose_103/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_103/stack/3
conv2d_transpose_103/stackPack+conv2d_transpose_103/strided_slice:output:0%conv2d_transpose_103/stack/1:output:0%conv2d_transpose_103/stack/2:output:0%conv2d_transpose_103/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_103/stack¢
*conv2d_transpose_103/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_103/strided_slice_1/stack¦
,conv2d_transpose_103/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_103/strided_slice_1/stack_1¦
,conv2d_transpose_103/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_103/strided_slice_1/stack_2ê
$conv2d_transpose_103/strided_slice_1StridedSlice#conv2d_transpose_103/stack:output:03conv2d_transpose_103/strided_slice_1/stack:output:05conv2d_transpose_103/strided_slice_1/stack_1:output:05conv2d_transpose_103/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_103/strided_slice_1ò
4conv2d_transpose_103/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_103_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype026
4conv2d_transpose_103/conv2d_transpose/ReadVariableOpÓ
%conv2d_transpose_103/conv2d_transposeConv2DBackpropInput#conv2d_transpose_103/stack:output:0<conv2d_transpose_103/conv2d_transpose/ReadVariableOp:value:0'conv2d_transpose_102/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *
paddingSAME*
strides
2'
%conv2d_transpose_103/conv2d_transposeË
+conv2d_transpose_103/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_103_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02-
+conv2d_transpose_103/BiasAdd/ReadVariableOpæ
conv2d_transpose_103/BiasAddBiasAdd.conv2d_transpose_103/conv2d_transpose:output:03conv2d_transpose_103/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2
conv2d_transpose_103/BiasAdd
conv2d_transpose_103/ReluRelu%conv2d_transpose_103/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2
conv2d_transpose_103/Relu
conv2d_transpose_104/ShapeShape'conv2d_transpose_103/Relu:activations:0*
T0*
_output_shapes
:2
conv2d_transpose_104/Shape
(conv2d_transpose_104/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_104/strided_slice/stack¢
*conv2d_transpose_104/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_104/strided_slice/stack_1¢
*conv2d_transpose_104/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_104/strided_slice/stack_2à
"conv2d_transpose_104/strided_sliceStridedSlice#conv2d_transpose_104/Shape:output:01conv2d_transpose_104/strided_slice/stack:output:03conv2d_transpose_104/strided_slice/stack_1:output:03conv2d_transpose_104/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_104/strided_slice~
conv2d_transpose_104/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_104/stack/1~
conv2d_transpose_104/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_104/stack/2~
conv2d_transpose_104/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_104/stack/3
conv2d_transpose_104/stackPack+conv2d_transpose_104/strided_slice:output:0%conv2d_transpose_104/stack/1:output:0%conv2d_transpose_104/stack/2:output:0%conv2d_transpose_104/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_104/stack¢
*conv2d_transpose_104/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2,
*conv2d_transpose_104/strided_slice_1/stack¦
,conv2d_transpose_104/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_104/strided_slice_1/stack_1¦
,conv2d_transpose_104/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,conv2d_transpose_104/strided_slice_1/stack_2ê
$conv2d_transpose_104/strided_slice_1StridedSlice#conv2d_transpose_104/stack:output:03conv2d_transpose_104/strided_slice_1/stack:output:05conv2d_transpose_104/strided_slice_1/stack_1:output:05conv2d_transpose_104/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2&
$conv2d_transpose_104/strided_slice_1ò
4conv2d_transpose_104/conv2d_transpose/ReadVariableOpReadVariableOp=conv2d_transpose_104_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype026
4conv2d_transpose_104/conv2d_transpose/ReadVariableOpÓ
%conv2d_transpose_104/conv2d_transposeConv2DBackpropInput#conv2d_transpose_104/stack:output:0<conv2d_transpose_104/conv2d_transpose/ReadVariableOp:value:0'conv2d_transpose_103/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
paddingSAME*
strides
2'
%conv2d_transpose_104/conv2d_transposeË
+conv2d_transpose_104/BiasAdd/ReadVariableOpReadVariableOp4conv2d_transpose_104_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+conv2d_transpose_104/BiasAdd/ReadVariableOpæ
conv2d_transpose_104/BiasAddBiasAdd.conv2d_transpose_104/conv2d_transpose:output:03conv2d_transpose_104/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_transpose_104/BiasAdd
conv2d_transpose_104/TanhTanh%conv2d_transpose_104/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
conv2d_transpose_104/Tanhm
rescaling_27/Cast/xConst*
_output_shapes
: *
dtype0*
value
B :ÿ2
rescaling_27/Cast/x|
rescaling_27/CastCastrescaling_27/Cast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
rescaling_27/Casts
rescaling_27/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
rescaling_27/Cast_1/x
rescaling_27/mulMulconv2d_transpose_104/Tanh:y:0rescaling_27/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_27/mul
rescaling_27/addAddV2rescaling_27/mul:z:0rescaling_27/Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
rescaling_27/addw
IdentityIdentityrescaling_27/add:z:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity¥
NoOpNoOp,^conv2d_transpose_101/BiasAdd/ReadVariableOp5^conv2d_transpose_101/conv2d_transpose/ReadVariableOp,^conv2d_transpose_102/BiasAdd/ReadVariableOp5^conv2d_transpose_102/conv2d_transpose/ReadVariableOp,^conv2d_transpose_103/BiasAdd/ReadVariableOp5^conv2d_transpose_103/conv2d_transpose/ReadVariableOp,^conv2d_transpose_104/BiasAdd/ReadVariableOp5^conv2d_transpose_104/conv2d_transpose/ReadVariableOp ^dense_52/BiasAdd/ReadVariableOp^dense_52/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 2Z
+conv2d_transpose_101/BiasAdd/ReadVariableOp+conv2d_transpose_101/BiasAdd/ReadVariableOp2l
4conv2d_transpose_101/conv2d_transpose/ReadVariableOp4conv2d_transpose_101/conv2d_transpose/ReadVariableOp2Z
+conv2d_transpose_102/BiasAdd/ReadVariableOp+conv2d_transpose_102/BiasAdd/ReadVariableOp2l
4conv2d_transpose_102/conv2d_transpose/ReadVariableOp4conv2d_transpose_102/conv2d_transpose/ReadVariableOp2Z
+conv2d_transpose_103/BiasAdd/ReadVariableOp+conv2d_transpose_103/BiasAdd/ReadVariableOp2l
4conv2d_transpose_103/conv2d_transpose/ReadVariableOp4conv2d_transpose_103/conv2d_transpose/ReadVariableOp2Z
+conv2d_transpose_104/BiasAdd/ReadVariableOp+conv2d_transpose_104/BiasAdd/ReadVariableOp2l
4conv2d_transpose_104/conv2d_transpose/ReadVariableOp4conv2d_transpose_104/conv2d_transpose/ReadVariableOp2B
dense_52/BiasAdd/ReadVariableOpdense_52/BiasAdd/ReadVariableOp2@
dense_52/MatMul/ReadVariableOpdense_52/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ü
«
6__inference_conv2d_transpose_103_layer_call_fn_2142970

inputs!
unknown: @
	unknown_0: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_21417582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ü
«
6__inference_conv2d_transpose_104_layer_call_fn_2143046

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_21418462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
/
¤
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142082

inputs$
dense_52_2141915:
d 
dense_52_2141917:
8
conv2d_transpose_101_2141969:+
conv2d_transpose_101_2141971:	7
conv2d_transpose_102_2142007:@*
conv2d_transpose_102_2142009:@6
conv2d_transpose_103_2142036: @*
conv2d_transpose_103_2142038: 6
conv2d_transpose_104_2142065: *
conv2d_transpose_104_2142067:
identity¢,conv2d_transpose_101/StatefulPartitionedCall¢,conv2d_transpose_102/StatefulPartitionedCall¢,conv2d_transpose_103/StatefulPartitionedCall¢,conv2d_transpose_104/StatefulPartitionedCall¢ dense_52/StatefulPartitionedCall
 dense_52/StatefulPartitionedCallStatefulPartitionedCallinputsdense_52_2141915dense_52_2141917*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_21419142"
 dense_52/StatefulPartitionedCall
reshape_28/PartitionedCallPartitionedCall)dense_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_28_layer_call_and_return_conditional_losses_21419342
reshape_28/PartitionedCall
 up_sampling2d_56/PartitionedCallPartitionedCall#reshape_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_21419432"
 up_sampling2d_56/PartitionedCallÿ
,conv2d_transpose_101/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_56/PartitionedCall:output:0conv2d_transpose_101_2141969conv2d_transpose_101_2141971*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_21419682.
,conv2d_transpose_101/StatefulPartitionedCall¥
 up_sampling2d_57/PartitionedCallPartitionedCall5conv2d_transpose_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_21419812"
 up_sampling2d_57/PartitionedCallþ
,conv2d_transpose_102/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_57/PartitionedCall:output:0conv2d_transpose_102_2142007conv2d_transpose_102_2142009*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_21420062.
,conv2d_transpose_102/StatefulPartitionedCall
,conv2d_transpose_103/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_102/StatefulPartitionedCall:output:0conv2d_transpose_103_2142036conv2d_transpose_103_2142038*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_21420352.
,conv2d_transpose_103/StatefulPartitionedCall
,conv2d_transpose_104/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_103/StatefulPartitionedCall:output:0conv2d_transpose_104_2142065conv2d_transpose_104_2142067*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_21420642.
,conv2d_transpose_104/StatefulPartitionedCall
rescaling_27/PartitionedCallPartitionedCall5conv2d_transpose_104/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_rescaling_27_layer_call_and_return_conditional_losses_21420792
rescaling_27/PartitionedCall
IdentityIdentity%rescaling_27/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity­
NoOpNoOp-^conv2d_transpose_101/StatefulPartitionedCall-^conv2d_transpose_102/StatefulPartitionedCall-^conv2d_transpose_103/StatefulPartitionedCall-^conv2d_transpose_104/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 2\
,conv2d_transpose_101/StatefulPartitionedCall,conv2d_transpose_101/StatefulPartitionedCall2\
,conv2d_transpose_102/StatefulPartitionedCall,conv2d_transpose_102/StatefulPartitionedCall2\
,conv2d_transpose_103/StatefulPartitionedCall,conv2d_transpose_103/StatefulPartitionedCall2\
,conv2d_transpose_104/StatefulPartitionedCall,conv2d_transpose_104/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ª
i
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2142817

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul»
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2
resize/ResizeNearestNeighbor
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
´
i
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2141488

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÕ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Û
N
2__inference_up_sampling2d_57_layer_call_fn_2142822

inputs
identityî
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_21416122
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª/
¬
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142347
dense_52_input$
dense_52_2142317:
d 
dense_52_2142319:
8
conv2d_transpose_101_2142324:+
conv2d_transpose_101_2142326:	7
conv2d_transpose_102_2142330:@*
conv2d_transpose_102_2142332:@6
conv2d_transpose_103_2142335: @*
conv2d_transpose_103_2142337: 6
conv2d_transpose_104_2142340: *
conv2d_transpose_104_2142342:
identity¢,conv2d_transpose_101/StatefulPartitionedCall¢,conv2d_transpose_102/StatefulPartitionedCall¢,conv2d_transpose_103/StatefulPartitionedCall¢,conv2d_transpose_104/StatefulPartitionedCall¢ dense_52/StatefulPartitionedCall¡
 dense_52/StatefulPartitionedCallStatefulPartitionedCalldense_52_inputdense_52_2142317dense_52_2142319*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_21419142"
 dense_52/StatefulPartitionedCall
reshape_28/PartitionedCallPartitionedCall)dense_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_28_layer_call_and_return_conditional_losses_21419342
reshape_28/PartitionedCall
 up_sampling2d_56/PartitionedCallPartitionedCall#reshape_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_21419432"
 up_sampling2d_56/PartitionedCallÿ
,conv2d_transpose_101/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_56/PartitionedCall:output:0conv2d_transpose_101_2142324conv2d_transpose_101_2142326*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_21419682.
,conv2d_transpose_101/StatefulPartitionedCall¥
 up_sampling2d_57/PartitionedCallPartitionedCall5conv2d_transpose_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_21419812"
 up_sampling2d_57/PartitionedCallþ
,conv2d_transpose_102/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_57/PartitionedCall:output:0conv2d_transpose_102_2142330conv2d_transpose_102_2142332*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_21420062.
,conv2d_transpose_102/StatefulPartitionedCall
,conv2d_transpose_103/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_102/StatefulPartitionedCall:output:0conv2d_transpose_103_2142335conv2d_transpose_103_2142337*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_21420352.
,conv2d_transpose_103/StatefulPartitionedCall
,conv2d_transpose_104/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_103/StatefulPartitionedCall:output:0conv2d_transpose_104_2142340conv2d_transpose_104_2142342*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_21420642.
,conv2d_transpose_104/StatefulPartitionedCall
rescaling_27/PartitionedCallPartitionedCall5conv2d_transpose_104/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_rescaling_27_layer_call_and_return_conditional_losses_21420792
rescaling_27/PartitionedCall
IdentityIdentity%rescaling_27/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity­
NoOpNoOp-^conv2d_transpose_101/StatefulPartitionedCall-^conv2d_transpose_102/StatefulPartitionedCall-^conv2d_transpose_103/StatefulPartitionedCall-^conv2d_transpose_104/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 2\
,conv2d_transpose_101/StatefulPartitionedCall,conv2d_transpose_101/StatefulPartitionedCall2\
,conv2d_transpose_102/StatefulPartitionedCall,conv2d_transpose_102/StatefulPartitionedCall2\
,conv2d_transpose_103/StatefulPartitionedCall,conv2d_transpose_103/StatefulPartitionedCall2\
,conv2d_transpose_104/StatefulPartitionedCall,conv2d_transpose_104/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(
_user_specified_namedense_52_input
Û
N
2__inference_up_sampling2d_56_layer_call_fn_2142716

inputs
identityî
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_21414882
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

c
G__inference_reshape_28_layer_call_and_return_conditional_losses_2142686

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
Reshape/shape/3º
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ú
E__inference_dense_52_layer_call_and_return_conditional_losses_2142663

inputs2
matmul_readvariableop_resource:
d/
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
d*
dtype02
MatMul/ReadVariableOpu
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes

:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddZ
ReluReluBiasAdd:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Reluo
IdentityIdentityRelu:activations:0^NoOp*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
»
®
6__inference_conv2d_transpose_101_layer_call_fn_2142797

inputs#
unknown:
	unknown_0:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_21419682
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ  : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs


/__inference_sequential_52_layer_call_fn_2142627

inputs
unknown:
d
	unknown_0:
%
	unknown_1:
	unknown_2:	$
	unknown_3:@
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_52_layer_call_and_return_conditional_losses_21420822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
&

Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2141670

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3´
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª/
¬
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142314
dense_52_input$
dense_52_2142284:
d 
dense_52_2142286:
8
conv2d_transpose_101_2142291:+
conv2d_transpose_101_2142293:	7
conv2d_transpose_102_2142297:@*
conv2d_transpose_102_2142299:@6
conv2d_transpose_103_2142302: @*
conv2d_transpose_103_2142304: 6
conv2d_transpose_104_2142307: *
conv2d_transpose_104_2142309:
identity¢,conv2d_transpose_101/StatefulPartitionedCall¢,conv2d_transpose_102/StatefulPartitionedCall¢,conv2d_transpose_103/StatefulPartitionedCall¢,conv2d_transpose_104/StatefulPartitionedCall¢ dense_52/StatefulPartitionedCall¡
 dense_52/StatefulPartitionedCallStatefulPartitionedCalldense_52_inputdense_52_2142284dense_52_2142286*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_21419142"
 dense_52/StatefulPartitionedCall
reshape_28/PartitionedCallPartitionedCall)dense_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_28_layer_call_and_return_conditional_losses_21419342
reshape_28/PartitionedCall
 up_sampling2d_56/PartitionedCallPartitionedCall#reshape_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_21419432"
 up_sampling2d_56/PartitionedCallÿ
,conv2d_transpose_101/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_56/PartitionedCall:output:0conv2d_transpose_101_2142291conv2d_transpose_101_2142293*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_21419682.
,conv2d_transpose_101/StatefulPartitionedCall¥
 up_sampling2d_57/PartitionedCallPartitionedCall5conv2d_transpose_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_21419812"
 up_sampling2d_57/PartitionedCallþ
,conv2d_transpose_102/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_57/PartitionedCall:output:0conv2d_transpose_102_2142297conv2d_transpose_102_2142299*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_21420062.
,conv2d_transpose_102/StatefulPartitionedCall
,conv2d_transpose_103/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_102/StatefulPartitionedCall:output:0conv2d_transpose_103_2142302conv2d_transpose_103_2142304*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_21420352.
,conv2d_transpose_103/StatefulPartitionedCall
,conv2d_transpose_104/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_103/StatefulPartitionedCall:output:0conv2d_transpose_104_2142307conv2d_transpose_104_2142309*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_21420642.
,conv2d_transpose_104/StatefulPartitionedCall
rescaling_27/PartitionedCallPartitionedCall5conv2d_transpose_104/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_rescaling_27_layer_call_and_return_conditional_losses_21420792
rescaling_27/PartitionedCall
IdentityIdentity%rescaling_27/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity­
NoOpNoOp-^conv2d_transpose_101/StatefulPartitionedCall-^conv2d_transpose_102/StatefulPartitionedCall-^conv2d_transpose_103/StatefulPartitionedCall-^conv2d_transpose_104/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 2\
,conv2d_transpose_101/StatefulPartitionedCall,conv2d_transpose_101/StatefulPartitionedCall2\
,conv2d_transpose_102/StatefulPartitionedCall,conv2d_transpose_102/StatefulPartitionedCall2\
,conv2d_transpose_103/StatefulPartitionedCall,conv2d_transpose_103/StatefulPartitionedCall2\
,conv2d_transpose_104/StatefulPartitionedCall,conv2d_transpose_104/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(
_user_specified_namedense_52_input
û

*__inference_dense_52_layer_call_fn_2142672

inputs
unknown:
d
	unknown_0:

identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_21419142
StatefulPartitionedCall}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
&

Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2142861

inputsC
(conv2d_transpose_readvariableop_resource:@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3´
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:@*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
¡
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2142755

inputsD
(conv2d_transpose_readvariableop_resource:.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1U
stack/3Const*
_output_shapes
: *
dtype0*
value
B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3µ
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:*
dtype02!
conv2d_transpose/ReadVariableOpñ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp¥
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAdds
ReluReluBiasAdd:output:0*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
i
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2141981

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"        2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul»
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*
half_pixel_centers(2
resize/ResizeNearestNeighbor
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ  :X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  
 
_user_specified_nameinputs
&

Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2141758

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ï
e
I__inference_rescaling_27_layer_call_and_return_conditional_losses_2142079

inputs
identityS
Cast/xConst*
_output_shapes
: *
dtype0*
value
B :ÿ2
Cast/xU
CastCastCast/x:output:0*

DstT0*

SrcT0*
_output_shapes
: 2
CastY
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2

Cast_1/x]
mulMulinputsCast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
muli
addAddV2mul:z:0Cast_1/x:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2
addc
IdentityIdentityadd:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@@:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs


/__inference_sequential_52_layer_call_fn_2142652

inputs
unknown:
d
	unknown_0:
%
	unknown_1:
	unknown_2:	$
	unknown_3:@
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_52_layer_call_and_return_conditional_losses_21422332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
&

Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2142937

inputsB
(conv2d_transpose_readvariableop_resource: @-
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ *
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2
Relu
IdentityIdentityRelu:activations:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ø%

Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_2141846

inputsB
(conv2d_transpose_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢conv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ì
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ì
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3³
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpð
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
paddingSAME*
strides
2
conv2d_transpose
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp¤
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2	
BiasAddr
TanhTanhBiasAdd:output:0*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Tanh}
IdentityIdentityTanh:y:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
/
¤
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142233

inputs$
dense_52_2142203:
d 
dense_52_2142205:
8
conv2d_transpose_101_2142210:+
conv2d_transpose_101_2142212:	7
conv2d_transpose_102_2142216:@*
conv2d_transpose_102_2142218:@6
conv2d_transpose_103_2142221: @*
conv2d_transpose_103_2142223: 6
conv2d_transpose_104_2142226: *
conv2d_transpose_104_2142228:
identity¢,conv2d_transpose_101/StatefulPartitionedCall¢,conv2d_transpose_102/StatefulPartitionedCall¢,conv2d_transpose_103/StatefulPartitionedCall¢,conv2d_transpose_104/StatefulPartitionedCall¢ dense_52/StatefulPartitionedCall
 dense_52/StatefulPartitionedCallStatefulPartitionedCallinputsdense_52_2142203dense_52_2142205*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_52_layer_call_and_return_conditional_losses_21419142"
 dense_52/StatefulPartitionedCall
reshape_28/PartitionedCallPartitionedCall)dense_52/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_28_layer_call_and_return_conditional_losses_21419342
reshape_28/PartitionedCall
 up_sampling2d_56/PartitionedCallPartitionedCall#reshape_28/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_21419432"
 up_sampling2d_56/PartitionedCallÿ
,conv2d_transpose_101/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_56/PartitionedCall:output:0conv2d_transpose_101_2142210conv2d_transpose_101_2142212*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_21419682.
,conv2d_transpose_101/StatefulPartitionedCall¥
 up_sampling2d_57/PartitionedCallPartitionedCall5conv2d_transpose_101/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_21419812"
 up_sampling2d_57/PartitionedCallþ
,conv2d_transpose_102/StatefulPartitionedCallStatefulPartitionedCall)up_sampling2d_57/PartitionedCall:output:0conv2d_transpose_102_2142216conv2d_transpose_102_2142218*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_21420062.
,conv2d_transpose_102/StatefulPartitionedCall
,conv2d_transpose_103/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_102/StatefulPartitionedCall:output:0conv2d_transpose_103_2142221conv2d_transpose_103_2142223*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_21420352.
,conv2d_transpose_103/StatefulPartitionedCall
,conv2d_transpose_104/StatefulPartitionedCallStatefulPartitionedCall5conv2d_transpose_103/StatefulPartitionedCall:output:0conv2d_transpose_104_2142226conv2d_transpose_104_2142228*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_21420642.
,conv2d_transpose_104/StatefulPartitionedCall
rescaling_27/PartitionedCallPartitionedCall5conv2d_transpose_104/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_rescaling_27_layer_call_and_return_conditional_losses_21420792
rescaling_27/PartitionedCall
IdentityIdentity%rescaling_27/PartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identity­
NoOpNoOp-^conv2d_transpose_101/StatefulPartitionedCall-^conv2d_transpose_102/StatefulPartitionedCall-^conv2d_transpose_103/StatefulPartitionedCall-^conv2d_transpose_104/StatefulPartitionedCall!^dense_52/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 2\
,conv2d_transpose_101/StatefulPartitionedCall,conv2d_transpose_101/StatefulPartitionedCall2\
,conv2d_transpose_102/StatefulPartitionedCall,conv2d_transpose_102/StatefulPartitionedCall2\
,conv2d_transpose_103/StatefulPartitionedCall,conv2d_transpose_103/StatefulPartitionedCall2\
,conv2d_transpose_104/StatefulPartitionedCall,conv2d_transpose_104/StatefulPartitionedCall2D
 dense_52/StatefulPartitionedCall dense_52/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

¤
/__inference_sequential_52_layer_call_fn_2142281
dense_52_input
unknown:
d
	unknown_0:
%
	unknown_1:
	unknown_2:	$
	unknown_3:@
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCalldense_52_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_52_layer_call_and_return_conditional_losses_21422332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(
_user_specified_namedense_52_input
´
i
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2142703

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2Î
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:2
strided_slice_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Const^
mulMulstrided_slice:output:0Const:output:0*
T0*
_output_shapes
:2
mulÕ
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
half_pixel_centers(2
resize/ResizeNearestNeighbor¤
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

c
G__inference_reshape_28_layer_call_and_return_conditional_losses_2141934

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2e
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :2
Reshape/shape/3º
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapex
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Reshapem
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
¬
6__inference_conv2d_transpose_102_layer_call_fn_2142903

inputs"
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_21420062
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@
 
_user_specified_nameinputs
´
«
6__inference_conv2d_transpose_103_layer_call_fn_2142979

inputs!
unknown: @
	unknown_0: 
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_21420352
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@ 2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ@@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@@
 
_user_specified_nameinputs
ª
i
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2141943

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul»
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
half_pixel_centers(2
resize/ResizeNearestNeighbor
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì


%__inference_signature_wrapper_2142374
dense_52_input
unknown:
d
	unknown_0:
%
	unknown_1:
	unknown_2:	$
	unknown_3:@
	unknown_4:@#
	unknown_5: @
	unknown_6: #
	unknown_7: 
	unknown_8:
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCalldense_52_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_21414722
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
(
_user_specified_namedense_52_input
ª
i
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2142711

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"      2
Constc
Const_1Const*
_output_shapes
:*
dtype0*
valueB"      2	
Const_1X
mulMulConst:output:0Const_1:output:0*
T0*
_output_shapes
:2
mul»
resize/ResizeNearestNeighborResizeNearestNeighborinputsmul:z:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  *
half_pixel_centers(2
resize/ResizeNearestNeighbor
IdentityIdentity-resize/ResizeNearestNeighbor:resized_images:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
¬
6__inference_conv2d_transpose_102_layer_call_fn_2142894

inputs"
unknown:@
	unknown_0:@
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_21416702
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ò
N
2__inference_up_sampling2d_56_layer_call_fn_2142721

inputs
identityÔ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_21419432
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"¨L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Å
serving_default±
I
dense_52_input7
 serving_default_dense_52_input:0ÿÿÿÿÿÿÿÿÿdH
rescaling_278
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ@@tensorflow/serving/predict:ÿ»
à
layer_with_weights-0
layer-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
_default_save_signature
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_sequential
½

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
§
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
§
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

kernel
bias
 trainable_variables
!	variables
"regularization_losses
#	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
§
$trainable_variables
%	variables
&regularization_losses
'	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

(kernel
)bias
*trainable_variables
+	variables
,regularization_losses
-	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

.kernel
/bias
0trainable_variables
1	variables
2regularization_losses
3	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
½

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer
§
:trainable_variables
;	variables
<regularization_losses
=	keras_api
+&call_and_return_all_conditional_losses
__call__"
_tf_keras_layer

>iter

?beta_1

@beta_2
	Adecay
Blearning_ratemumvmwmx(my)mz.m{/m|4m}5m~vvvv(v)v.v/v4v5v"
	optimizer
f
0
1
2
3
(4
)5
.6
/7
48
59"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
(4
)5
.6
/7
48
59"
trackable_list_wrapper
Î
trainable_variables
regularization_losses
Clayer_metrics

Dlayers
Emetrics
	variables
Fnon_trainable_variables
Glayer_regularization_losses
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
#:!
d2dense_52/kernel
:2dense_52/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
Hlayer_metrics
	variables

Ilayers
Jmetrics
Knon_trainable_variables
regularization_losses
Llayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
Mlayer_metrics
	variables

Nlayers
Ometrics
Pnon_trainable_variables
regularization_losses
Qlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
Rlayer_metrics
	variables

Slayers
Tmetrics
Unon_trainable_variables
regularization_losses
Vlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
7:52conv2d_transpose_101/kernel
(:&2conv2d_transpose_101/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
 trainable_variables
Wlayer_metrics
!	variables

Xlayers
Ymetrics
Znon_trainable_variables
"regularization_losses
[layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
$trainable_variables
\layer_metrics
%	variables

]layers
^metrics
_non_trainable_variables
&regularization_losses
`layer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
6:4@2conv2d_transpose_102/kernel
':%@2conv2d_transpose_102/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
*trainable_variables
alayer_metrics
+	variables

blayers
cmetrics
dnon_trainable_variables
,regularization_losses
elayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
5:3 @2conv2d_transpose_103/kernel
':% 2conv2d_transpose_103/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
0trainable_variables
flayer_metrics
1	variables

glayers
hmetrics
inon_trainable_variables
2regularization_losses
jlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
5:3 2conv2d_transpose_104/kernel
':%2conv2d_transpose_104/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
°
6trainable_variables
klayer_metrics
7	variables

llayers
mmetrics
nnon_trainable_variables
8regularization_losses
olayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
:trainable_variables
player_metrics
;	variables

qlayers
rmetrics
snon_trainable_variables
<regularization_losses
tlayer_regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(:&
d2Adam/dense_52/kernel/m
": 2Adam/dense_52/bias/m
<::2"Adam/conv2d_transpose_101/kernel/m
-:+2 Adam/conv2d_transpose_101/bias/m
;:9@2"Adam/conv2d_transpose_102/kernel/m
,:*@2 Adam/conv2d_transpose_102/bias/m
::8 @2"Adam/conv2d_transpose_103/kernel/m
,:* 2 Adam/conv2d_transpose_103/bias/m
::8 2"Adam/conv2d_transpose_104/kernel/m
,:*2 Adam/conv2d_transpose_104/bias/m
(:&
d2Adam/dense_52/kernel/v
": 2Adam/dense_52/bias/v
<::2"Adam/conv2d_transpose_101/kernel/v
-:+2 Adam/conv2d_transpose_101/bias/v
;:9@2"Adam/conv2d_transpose_102/kernel/v
,:*@2 Adam/conv2d_transpose_102/bias/v
::8 @2"Adam/conv2d_transpose_103/kernel/v
,:* 2 Adam/conv2d_transpose_103/bias/v
::8 2"Adam/conv2d_transpose_104/kernel/v
,:*2 Adam/conv2d_transpose_104/bias/v
ÔBÑ
"__inference__wrapped_model_2141472dense_52_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ö2ó
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142488
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142602
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142314
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142347À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
/__inference_sequential_52_layer_call_fn_2142105
/__inference_sequential_52_layer_call_fn_2142627
/__inference_sequential_52_layer_call_fn_2142652
/__inference_sequential_52_layer_call_fn_2142281À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
E__inference_dense_52_layer_call_and_return_conditional_losses_2142663¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ô2Ñ
*__inference_dense_52_layer_call_fn_2142672¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_reshape_28_layer_call_and_return_conditional_losses_2142686¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_reshape_28_layer_call_fn_2142691¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Æ2Ã
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2142703
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2142711¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
2__inference_up_sampling2d_56_layer_call_fn_2142716
2__inference_up_sampling2d_56_layer_call_fn_2142721¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Î2Ë
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2142755
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2142779¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
6__inference_conv2d_transpose_101_layer_call_fn_2142788
6__inference_conv2d_transpose_101_layer_call_fn_2142797¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Æ2Ã
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2142809
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2142817¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
2__inference_up_sampling2d_57_layer_call_fn_2142822
2__inference_up_sampling2d_57_layer_call_fn_2142827¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Î2Ë
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2142861
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2142885¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
6__inference_conv2d_transpose_102_layer_call_fn_2142894
6__inference_conv2d_transpose_102_layer_call_fn_2142903¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Î2Ë
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2142937
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2142961¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
6__inference_conv2d_transpose_103_layer_call_fn_2142970
6__inference_conv2d_transpose_103_layer_call_fn_2142979¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Î2Ë
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_2143013
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_2143037¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
6__inference_conv2d_transpose_104_layer_call_fn_2143046
6__inference_conv2d_transpose_104_layer_call_fn_2143055¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ó2ð
I__inference_rescaling_27_layer_call_and_return_conditional_losses_2143064¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ø2Õ
.__inference_rescaling_27_layer_call_fn_2143069¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÓBÐ
%__inference_signature_wrapper_2142374dense_52_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ±
"__inference__wrapped_model_2141472
()./457¢4
-¢*
(%
dense_52_inputÿÿÿÿÿÿÿÿÿd
ª "Cª@
>
rescaling_27.+
rescaling_27ÿÿÿÿÿÿÿÿÿ@@è
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2142755J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "@¢=
63
0,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
Q__inference_conv2d_transpose_101_layer_call_and_return_conditional_losses_2142779n8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 À
6__inference_conv2d_transpose_101_layer_call_fn_2142788J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "30,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
6__inference_conv2d_transpose_101_layer_call_fn_2142797a8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ  ç
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2142861()J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Â
Q__inference_conv2d_transpose_102_layer_call_and_return_conditional_losses_2142885m()8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@@
 ¿
6__inference_conv2d_transpose_102_layer_call_fn_2142894()J¢G
@¢=
;8
inputs,ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
6__inference_conv2d_transpose_102_layer_call_fn_2142903`()8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ@@
ª " ÿÿÿÿÿÿÿÿÿ@@@æ
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2142937./I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
 Á
Q__inference_conv2d_transpose_103_layer_call_and_return_conditional_losses_2142961l./7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@ 
 ¾
6__inference_conv2d_transpose_103_layer_call_fn_2142970./I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
6__inference_conv2d_transpose_103_layer_call_fn_2142979_./7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@@
ª " ÿÿÿÿÿÿÿÿÿ@@ æ
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_214301345I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Á
Q__inference_conv2d_transpose_104_layer_call_and_return_conditional_losses_2143037l457¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 ¾
6__inference_conv2d_transpose_104_layer_call_fn_214304645I¢F
?¢<
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
6__inference_conv2d_transpose_104_layer_call_fn_2143055_457¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@ 
ª " ÿÿÿÿÿÿÿÿÿ@@§
E__inference_dense_52_layer_call_and_return_conditional_losses_2142663^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_dense_52_layer_call_fn_2142672Q/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿµ
I__inference_rescaling_27_layer_call_and_return_conditional_losses_2143064h7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 
.__inference_rescaling_27_layer_call_fn_2143069[7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ@@
ª " ÿÿÿÿÿÿÿÿÿ@@®
G__inference_reshape_28_layer_call_and_return_conditional_losses_2142686c1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ
 
,__inference_reshape_28_layer_call_fn_2142691V1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿÊ
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142314|
()./45?¢<
5¢2
(%
dense_52_inputÿÿÿÿÿÿÿÿÿd
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Ê
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142347|
()./45?¢<
5¢2
(%
dense_52_inputÿÿÿÿÿÿÿÿÿd
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Â
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142488t
()./457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 Â
J__inference_sequential_52_layer_call_and_return_conditional_losses_2142602t
()./457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ@@
 ¢
/__inference_sequential_52_layer_call_fn_2142105o
()./45?¢<
5¢2
(%
dense_52_inputÿÿÿÿÿÿÿÿÿd
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@@¢
/__inference_sequential_52_layer_call_fn_2142281o
()./45?¢<
5¢2
(%
dense_52_inputÿÿÿÿÿÿÿÿÿd
p

 
ª " ÿÿÿÿÿÿÿÿÿ@@
/__inference_sequential_52_layer_call_fn_2142627g
()./457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p 

 
ª " ÿÿÿÿÿÿÿÿÿ@@
/__inference_sequential_52_layer_call_fn_2142652g
()./457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿd
p

 
ª " ÿÿÿÿÿÿÿÿÿ@@Æ
%__inference_signature_wrapper_2142374
()./45I¢F
¢ 
?ª<
:
dense_52_input(%
dense_52_inputÿÿÿÿÿÿÿÿÿd"Cª@
>
rescaling_27.+
rescaling_27ÿÿÿÿÿÿÿÿÿ@@ð
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2142703R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 »
M__inference_up_sampling2d_56_layer_call_and_return_conditional_losses_2142711j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ  
 È
2__inference_up_sampling2d_56_layer_call_fn_2142716R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2__inference_up_sampling2d_56_layer_call_fn_2142721]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ
ª "!ÿÿÿÿÿÿÿÿÿ  ð
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2142809R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 »
M__inference_up_sampling2d_57_layer_call_and_return_conditional_losses_2142817j8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª ".¢+
$!
0ÿÿÿÿÿÿÿÿÿ@@
 È
2__inference_up_sampling2d_57_layer_call_fn_2142822R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2__inference_up_sampling2d_57_layer_call_fn_2142827]8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿ  
ª "!ÿÿÿÿÿÿÿÿÿ@@