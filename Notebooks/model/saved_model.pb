,
äµ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
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
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ð¯*

embedding_8/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:À¸*'
shared_nameembedding_8/embeddings

*embedding_8/embeddings/Read/ReadVariableOpReadVariableOpembedding_8/embeddings*!
_output_shapes
:À¸*
dtype0

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes	
:*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes	
:*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes	
:*
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes	
:*
dtype0

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes	
:*
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes	
:*
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes	
:*
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:À*
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:À*
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:À*
dtype0
£
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:À*
dtype0
{
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À* 
shared_namedense_15/kernel
t
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes
:	À*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:*
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

lstm_5/lstm_cell_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namelstm_5/lstm_cell_7/kernel

-lstm_5/lstm_cell_7/kernel/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_7/kernel* 
_output_shapes
:
*
dtype0
¤
#lstm_5/lstm_cell_7/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*4
shared_name%#lstm_5/lstm_cell_7/recurrent_kernel

7lstm_5/lstm_cell_7/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_5/lstm_cell_7/recurrent_kernel* 
_output_shapes
:
À*
dtype0

lstm_5/lstm_cell_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_5/lstm_cell_7/bias

+lstm_5/lstm_cell_7/bias/Read/ReadVariableOpReadVariableOplstm_5/lstm_cell_7/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/embedding_8/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À¸*.
shared_nameAdam/embedding_8/embeddings/m

1Adam/embedding_8/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/m*!
_output_shapes
:À¸*
dtype0

 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/m

4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes	
:*
dtype0

Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/m

3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_1/gamma/m

6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_1/beta/m

5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*3
shared_name$"Adam/batch_normalization_2/gamma/m

6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:À*
dtype0

!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*2
shared_name#!Adam/batch_normalization_2/beta/m

5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:À*
dtype0

Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes
:	À*
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_5/lstm_cell_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_5/lstm_cell_7/kernel/m

4Adam/lstm_5/lstm_cell_7/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_7/kernel/m* 
_output_shapes
:
*
dtype0
²
*Adam/lstm_5/lstm_cell_7/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*;
shared_name,*Adam/lstm_5/lstm_cell_7/recurrent_kernel/m
«
>Adam/lstm_5/lstm_cell_7/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_7/recurrent_kernel/m* 
_output_shapes
:
À*
dtype0

Adam/lstm_5/lstm_cell_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_5/lstm_cell_7/bias/m

2Adam/lstm_5/lstm_cell_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_7/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding_8/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À¸*.
shared_nameAdam/embedding_8/embeddings/v

1Adam/embedding_8/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_8/embeddings/v*!
_output_shapes
:À¸*
dtype0

 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/v

4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes	
:*
dtype0

Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/v

3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_1/gamma/v

6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_1/beta/v

5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*3
shared_name$"Adam/batch_normalization_2/gamma/v

6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:À*
dtype0

!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:À*2
shared_name#!Adam/batch_normalization_2/beta/v

5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:À*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	À*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes
:	À*
dtype0

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_5/lstm_cell_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_5/lstm_cell_7/kernel/v

4Adam/lstm_5/lstm_cell_7/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_5/lstm_cell_7/kernel/v* 
_output_shapes
:
*
dtype0
²
*Adam/lstm_5/lstm_cell_7/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À*;
shared_name,*Adam/lstm_5/lstm_cell_7/recurrent_kernel/v
«
>Adam/lstm_5/lstm_cell_7/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_5/lstm_cell_7/recurrent_kernel/v* 
_output_shapes
:
À*
dtype0

Adam/lstm_5/lstm_cell_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_5/lstm_cell_7/bias/v

2Adam/lstm_5/lstm_cell_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_5/lstm_cell_7/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
Ã`
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*þ_
valueô_Bñ_ Bê_
Ã
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
 

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
Õ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses*
¥
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'_random_generator
(__call__
*)&call_and_return_all_conditional_losses* 
Õ
*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses*
Á
5cell
6
state_spec
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;_random_generator
<__call__
*=&call_and_return_all_conditional_losses*
Õ
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses*
¦

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*
´
Qiter

Rbeta_1

Sbeta_2
	Tdecay
Ulearning_ratemmm+m,m?m @m¡Im¢Jm£Vm¤Wm¥Xm¦v§v¨v©+vª,v«?v¬@v­Iv®Jv¯Vv°Wv±Xv²*

0
1
2
3
4
+5
,6
-7
.8
V9
W10
X11
?12
@13
A14
B15
I16
J17*
Z
0
1
2
+3
,4
V5
W6
X7
?8
@9
I10
J11*
* 
°
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

^serving_default* 
jd
VARIABLE_VALUEembedding_8/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*

0*

0*
* 

_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
hb
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
2
3*

0
1*
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses*
* 
* 
* 
* 
* 

inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
#	variables
$trainable_variables
%regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses* 
* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
+0
,1
-2
.3*

+0
,1*
* 

nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*
* 
* 
ã
s
state_size

Vkernel
Wrecurrent_kernel
Xbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x_random_generator
y__call__
*z&call_and_return_all_conditional_losses*
* 

V0
W1
X2*

V0
W1
X2*
* 
 

{states
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*
* 
* 
* 
* 
jd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
?0
@1
A2
B3*

?0
@1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1*

I0
J1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_5/lstm_cell_7/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#lstm_5/lstm_cell_7/recurrent_kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_5/lstm_cell_7/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
.
0
1
-2
.3
A4
B5*
5
0
1
2
3
4
5
6*

0
1*
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
* 
* 
* 
* 
* 
* 
* 
* 
* 

-0
.1*
* 
* 
* 
* 
* 

V0
W1
X2*

V0
W1
X2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

50*
* 
* 
* 

A0
B1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

total

count
	variables
	keras_api*
M

total

count

_fn_kwargs
	variables
	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

	variables*

VARIABLE_VALUEAdam/embedding_8/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_5/lstm_cell_7/kernel/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_5/lstm_cell_7/recurrent_kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/lstm_5/lstm_cell_7/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/embedding_8/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_5/lstm_cell_7/kernel/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_5/lstm_cell_7/recurrent_kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/lstm_5/lstm_cell_7/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

!serving_default_embedding_8_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿx
ò
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_8_inputembedding_8/embeddings#batch_normalization/moving_variancebatch_normalization/gammabatch_normalization/moving_meanbatch_normalization/beta%batch_normalization_1/moving_variancebatch_normalization_1/gamma!batch_normalization_1/moving_meanbatch_normalization_1/betalstm_5/lstm_cell_7/kernellstm_5/lstm_cell_7/bias#lstm_5/lstm_cell_7/recurrent_kernel%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betadense_15/kerneldense_15/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_112645
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ù
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_8/embeddings/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_5/lstm_cell_7/kernel/Read/ReadVariableOp7lstm_5/lstm_cell_7/recurrent_kernel/Read/ReadVariableOp+lstm_5/lstm_cell_7/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_8/embeddings/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_7/kernel/m/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_7/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_7/bias/m/Read/ReadVariableOp1Adam/embedding_8/embeddings/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp4Adam/lstm_5/lstm_cell_7/kernel/v/Read/ReadVariableOp>Adam/lstm_5/lstm_cell_7/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_5/lstm_cell_7/bias/v/Read/ReadVariableOpConst*@
Tin9
725	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_114669
Ø
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_8/embeddingsbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancedense_15/kerneldense_15/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_5/lstm_cell_7/kernel#lstm_5/lstm_cell_7/recurrent_kernellstm_5/lstm_cell_7/biastotalcounttotal_1count_1Adam/embedding_8/embeddings/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/dense_15/kernel/mAdam/dense_15/bias/m Adam/lstm_5/lstm_cell_7/kernel/m*Adam/lstm_5/lstm_cell_7/recurrent_kernel/mAdam/lstm_5/lstm_cell_7/bias/mAdam/embedding_8/embeddings/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/dense_15/kernel/vAdam/dense_15/bias/v Adam/lstm_5/lstm_cell_7/kernel/v*Adam/lstm_5/lstm_cell_7/recurrent_kernel/vAdam/lstm_5/lstm_cell_7/bias/v*?
Tin8
624*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_114832¦³(
¹
Ã
while_cond_113625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113625___redundant_placeholder04
0while_while_cond_113625___redundant_placeholder14
0while_while_cond_113625___redundant_placeholder24
0while_while_cond_113625___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
8

B__inference_lstm_5_layer_call_and_return_conditional_losses_110595

inputs&
lstm_cell_7_110513:
!
lstm_cell_7_110515:	&
lstm_cell_7_110517:
À
identity¢#lstm_cell_7/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskó
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_110513lstm_cell_7_110515lstm_cell_7_110517*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110467n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_110513lstm_cell_7_110515lstm_cell_7_110517*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110526*
condR
while_cond_110525*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ó
!__inference__wrapped_model_109887
embedding_8_inputE
0sequential_8_embedding_8_embedding_lookup_109586:À¸Q
Bsequential_8_batch_normalization_batchnorm_readvariableop_resource:	U
Fsequential_8_batch_normalization_batchnorm_mul_readvariableop_resource:	S
Dsequential_8_batch_normalization_batchnorm_readvariableop_1_resource:	S
Dsequential_8_batch_normalization_batchnorm_readvariableop_2_resource:	S
Dsequential_8_batch_normalization_1_batchnorm_readvariableop_resource:	W
Hsequential_8_batch_normalization_1_batchnorm_mul_readvariableop_resource:	U
Fsequential_8_batch_normalization_1_batchnorm_readvariableop_1_resource:	U
Fsequential_8_batch_normalization_1_batchnorm_readvariableop_2_resource:	Q
=sequential_8_lstm_5_lstm_cell_7_split_readvariableop_resource:
N
?sequential_8_lstm_5_lstm_cell_7_split_1_readvariableop_resource:	K
7sequential_8_lstm_5_lstm_cell_7_readvariableop_resource:
ÀS
Dsequential_8_batch_normalization_2_batchnorm_readvariableop_resource:	ÀW
Hsequential_8_batch_normalization_2_batchnorm_mul_readvariableop_resource:	ÀU
Fsequential_8_batch_normalization_2_batchnorm_readvariableop_1_resource:	ÀU
Fsequential_8_batch_normalization_2_batchnorm_readvariableop_2_resource:	ÀG
4sequential_8_dense_15_matmul_readvariableop_resource:	ÀC
5sequential_8_dense_15_biasadd_readvariableop_resource:
identity¢9sequential_8/batch_normalization/batchnorm/ReadVariableOp¢;sequential_8/batch_normalization/batchnorm/ReadVariableOp_1¢;sequential_8/batch_normalization/batchnorm/ReadVariableOp_2¢=sequential_8/batch_normalization/batchnorm/mul/ReadVariableOp¢;sequential_8/batch_normalization_1/batchnorm/ReadVariableOp¢=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_1¢=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_2¢?sequential_8/batch_normalization_1/batchnorm/mul/ReadVariableOp¢;sequential_8/batch_normalization_2/batchnorm/ReadVariableOp¢=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_1¢=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_2¢?sequential_8/batch_normalization_2/batchnorm/mul/ReadVariableOp¢,sequential_8/dense_15/BiasAdd/ReadVariableOp¢+sequential_8/dense_15/MatMul/ReadVariableOp¢)sequential_8/embedding_8/embedding_lookup¢.sequential_8/lstm_5/lstm_cell_7/ReadVariableOp¢0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_1¢0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_2¢0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_3¢4sequential_8/lstm_5/lstm_cell_7/split/ReadVariableOp¢6sequential_8/lstm_5/lstm_cell_7/split_1/ReadVariableOp¢sequential_8/lstm_5/whiley
sequential_8/embedding_8/CastCastembedding_8_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx 
)sequential_8/embedding_8/embedding_lookupResourceGather0sequential_8_embedding_8_embedding_lookup_109586!sequential_8/embedding_8/Cast:y:0*
Tindices0*C
_class9
75loc:@sequential_8/embedding_8/embedding_lookup/109586*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0î
2sequential_8/embedding_8/embedding_lookup/IdentityIdentity2sequential_8/embedding_8/embedding_lookup:output:0*
T0*C
_class9
75loc:@sequential_8/embedding_8/embedding_lookup/109586*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx´
4sequential_8/embedding_8/embedding_lookup/Identity_1Identity;sequential_8/embedding_8/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx¹
9sequential_8/batch_normalization/batchnorm/ReadVariableOpReadVariableOpBsequential_8_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0u
0sequential_8/batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Û
.sequential_8/batch_normalization/batchnorm/addAddV2Asequential_8/batch_normalization/batchnorm/ReadVariableOp:value:09sequential_8/batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
0sequential_8/batch_normalization/batchnorm/RsqrtRsqrt2sequential_8/batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:Á
=sequential_8/batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpFsequential_8_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Ø
.sequential_8/batch_normalization/batchnorm/mulMul4sequential_8/batch_normalization/batchnorm/Rsqrt:y:0Esequential_8/batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:á
0sequential_8/batch_normalization/batchnorm/mul_1Mul=sequential_8/embedding_8/embedding_lookup/Identity_1:output:02sequential_8/batch_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx½
;sequential_8/batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpDsequential_8_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ö
0sequential_8/batch_normalization/batchnorm/mul_2MulCsequential_8/batch_normalization/batchnorm/ReadVariableOp_1:value:02sequential_8/batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:½
;sequential_8/batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpDsequential_8_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Ö
.sequential_8/batch_normalization/batchnorm/subSubCsequential_8/batch_normalization/batchnorm/ReadVariableOp_2:value:04sequential_8/batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Ú
0sequential_8/batch_normalization/batchnorm/add_1AddV24sequential_8/batch_normalization/batchnorm/mul_1:z:02sequential_8/batch_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx¢
)sequential_8/spatial_dropout1d_5/IdentityIdentity4sequential_8/batch_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx½
;sequential_8/batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0w
2sequential_8/batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:á
0sequential_8/batch_normalization_1/batchnorm/addAddV2Csequential_8/batch_normalization_1/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
2sequential_8/batch_normalization_1/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:Å
?sequential_8/batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Þ
0sequential_8/batch_normalization_1/batchnorm/mulMul6sequential_8/batch_normalization_1/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ú
2sequential_8/batch_normalization_1/batchnorm/mul_1Mul2sequential_8/spatial_dropout1d_5/Identity:output:04sequential_8/batch_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÁ
=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0Ü
2sequential_8/batch_normalization_1/batchnorm/mul_2MulEsequential_8/batch_normalization_1/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:Á
=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0Ü
0sequential_8/batch_normalization_1/batchnorm/subSubEsequential_8/batch_normalization_1/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:à
2sequential_8/batch_normalization_1/batchnorm/add_1AddV26sequential_8/batch_normalization_1/batchnorm/mul_1:z:04sequential_8/batch_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
sequential_8/lstm_5/ShapeShape6sequential_8/batch_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
'sequential_8/lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_8/lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_8/lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_8/lstm_5/strided_sliceStridedSlice"sequential_8/lstm_5/Shape:output:00sequential_8/lstm_5/strided_slice/stack:output:02sequential_8/lstm_5/strided_slice/stack_1:output:02sequential_8/lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
"sequential_8/lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :À¯
 sequential_8/lstm_5/zeros/packedPack*sequential_8/lstm_5/strided_slice:output:0+sequential_8/lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_8/lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
sequential_8/lstm_5/zerosFill)sequential_8/lstm_5/zeros/packed:output:0(sequential_8/lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀg
$sequential_8/lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :À³
"sequential_8/lstm_5/zeros_1/packedPack*sequential_8/lstm_5/strided_slice:output:0-sequential_8/lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_8/lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¯
sequential_8/lstm_5/zeros_1Fill+sequential_8/lstm_5/zeros_1/packed:output:0*sequential_8/lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
"sequential_8/lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
sequential_8/lstm_5/transpose	Transpose6sequential_8/batch_normalization_1/batchnorm/add_1:z:0+sequential_8/lstm_5/transpose/perm:output:0*
T0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿl
sequential_8/lstm_5/Shape_1Shape!sequential_8/lstm_5/transpose:y:0*
T0*
_output_shapes
:s
)sequential_8/lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_8/lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_8/lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_8/lstm_5/strided_slice_1StridedSlice$sequential_8/lstm_5/Shape_1:output:02sequential_8/lstm_5/strided_slice_1/stack:output:04sequential_8/lstm_5/strided_slice_1/stack_1:output:04sequential_8/lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_8/lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿð
!sequential_8/lstm_5/TensorArrayV2TensorListReserve8sequential_8/lstm_5/TensorArrayV2/element_shape:output:0,sequential_8/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Isequential_8/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
;sequential_8/lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_8/lstm_5/transpose:y:0Rsequential_8/lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
)sequential_8/lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_8/lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_8/lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
#sequential_8/lstm_5/strided_slice_2StridedSlice!sequential_8/lstm_5/transpose:y:02sequential_8/lstm_5/strided_slice_2/stack:output:04sequential_8/lstm_5/strided_slice_2/stack_1:output:04sequential_8/lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
/sequential_8/lstm_5/lstm_cell_7/ones_like/ShapeShape,sequential_8/lstm_5/strided_slice_2:output:0*
T0*
_output_shapes
:t
/sequential_8/lstm_5/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ø
)sequential_8/lstm_5/lstm_cell_7/ones_likeFill8sequential_8/lstm_5/lstm_cell_7/ones_like/Shape:output:08sequential_8/lstm_5/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
1sequential_8/lstm_5/lstm_cell_7/ones_like_1/ShapeShape"sequential_8/lstm_5/zeros:output:0*
T0*
_output_shapes
:v
1sequential_8/lstm_5/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Þ
+sequential_8/lstm_5/lstm_cell_7/ones_like_1Fill:sequential_8/lstm_5/lstm_cell_7/ones_like_1/Shape:output:0:sequential_8/lstm_5/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¿
#sequential_8/lstm_5/lstm_cell_7/mulMul,sequential_8/lstm_5/strided_slice_2:output:02sequential_8/lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
%sequential_8/lstm_5/lstm_cell_7/mul_1Mul,sequential_8/lstm_5/strided_slice_2:output:02sequential_8/lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
%sequential_8/lstm_5/lstm_cell_7/mul_2Mul,sequential_8/lstm_5/strided_slice_2:output:02sequential_8/lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
%sequential_8/lstm_5/lstm_cell_7/mul_3Mul,sequential_8/lstm_5/strided_slice_2:output:02sequential_8/lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential_8/lstm_5/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :´
4sequential_8/lstm_5/lstm_cell_7/split/ReadVariableOpReadVariableOp=sequential_8_lstm_5_lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0
%sequential_8/lstm_5/lstm_cell_7/splitSplit8sequential_8/lstm_5/lstm_cell_7/split/split_dim:output:0<sequential_8/lstm_5/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split¼
&sequential_8/lstm_5/lstm_cell_7/MatMulMatMul'sequential_8/lstm_5/lstm_cell_7/mul:z:0.sequential_8/lstm_5/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÀ
(sequential_8/lstm_5/lstm_cell_7/MatMul_1MatMul)sequential_8/lstm_5/lstm_cell_7/mul_1:z:0.sequential_8/lstm_5/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÀ
(sequential_8/lstm_5/lstm_cell_7/MatMul_2MatMul)sequential_8/lstm_5/lstm_cell_7/mul_2:z:0.sequential_8/lstm_5/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÀ
(sequential_8/lstm_5/lstm_cell_7/MatMul_3MatMul)sequential_8/lstm_5/lstm_cell_7/mul_3:z:0.sequential_8/lstm_5/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀs
1sequential_8/lstm_5/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ³
6sequential_8/lstm_5/lstm_cell_7/split_1/ReadVariableOpReadVariableOp?sequential_8_lstm_5_lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0ø
'sequential_8/lstm_5/lstm_cell_7/split_1Split:sequential_8/lstm_5/lstm_cell_7/split_1/split_dim:output:0>sequential_8/lstm_5/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_splitÉ
'sequential_8/lstm_5/lstm_cell_7/BiasAddBiasAdd0sequential_8/lstm_5/lstm_cell_7/MatMul:product:00sequential_8/lstm_5/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÍ
)sequential_8/lstm_5/lstm_cell_7/BiasAdd_1BiasAdd2sequential_8/lstm_5/lstm_cell_7/MatMul_1:product:00sequential_8/lstm_5/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÍ
)sequential_8/lstm_5/lstm_cell_7/BiasAdd_2BiasAdd2sequential_8/lstm_5/lstm_cell_7/MatMul_2:product:00sequential_8/lstm_5/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÍ
)sequential_8/lstm_5/lstm_cell_7/BiasAdd_3BiasAdd2sequential_8/lstm_5/lstm_cell_7/MatMul_3:product:00sequential_8/lstm_5/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¹
%sequential_8/lstm_5/lstm_cell_7/mul_4Mul"sequential_8/lstm_5/zeros:output:04sequential_8/lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¹
%sequential_8/lstm_5/lstm_cell_7/mul_5Mul"sequential_8/lstm_5/zeros:output:04sequential_8/lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¹
%sequential_8/lstm_5/lstm_cell_7/mul_6Mul"sequential_8/lstm_5/zeros:output:04sequential_8/lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¹
%sequential_8/lstm_5/lstm_cell_7/mul_7Mul"sequential_8/lstm_5/zeros:output:04sequential_8/lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¨
.sequential_8/lstm_5/lstm_cell_7/ReadVariableOpReadVariableOp7sequential_8_lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0
3sequential_8/lstm_5/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
5sequential_8/lstm_5/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
5sequential_8/lstm_5/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
-sequential_8/lstm_5/lstm_cell_7/strided_sliceStridedSlice6sequential_8/lstm_5/lstm_cell_7/ReadVariableOp:value:0<sequential_8/lstm_5/lstm_cell_7/strided_slice/stack:output:0>sequential_8/lstm_5/lstm_cell_7/strided_slice/stack_1:output:0>sequential_8/lstm_5/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÈ
(sequential_8/lstm_5/lstm_cell_7/MatMul_4MatMul)sequential_8/lstm_5/lstm_cell_7/mul_4:z:06sequential_8/lstm_5/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÅ
#sequential_8/lstm_5/lstm_cell_7/addAddV20sequential_8/lstm_5/lstm_cell_7/BiasAdd:output:02sequential_8/lstm_5/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
'sequential_8/lstm_5/lstm_cell_7/SigmoidSigmoid'sequential_8/lstm_5/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀª
0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_1ReadVariableOp7sequential_8_lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0
5sequential_8/lstm_5/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
7sequential_8/lstm_5/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
7sequential_8/lstm_5/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_8/lstm_5/lstm_cell_7/strided_slice_1StridedSlice8sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_1:value:0>sequential_8/lstm_5/lstm_cell_7/strided_slice_1/stack:output:0@sequential_8/lstm_5/lstm_cell_7/strided_slice_1/stack_1:output:0@sequential_8/lstm_5/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÊ
(sequential_8/lstm_5/lstm_cell_7/MatMul_5MatMul)sequential_8/lstm_5/lstm_cell_7/mul_5:z:08sequential_8/lstm_5/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÉ
%sequential_8/lstm_5/lstm_cell_7/add_1AddV22sequential_8/lstm_5/lstm_cell_7/BiasAdd_1:output:02sequential_8/lstm_5/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)sequential_8/lstm_5/lstm_cell_7/Sigmoid_1Sigmoid)sequential_8/lstm_5/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ´
%sequential_8/lstm_5/lstm_cell_7/mul_8Mul-sequential_8/lstm_5/lstm_cell_7/Sigmoid_1:y:0$sequential_8/lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀª
0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_2ReadVariableOp7sequential_8_lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0
5sequential_8/lstm_5/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      
7sequential_8/lstm_5/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  
7sequential_8/lstm_5/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_8/lstm_5/lstm_cell_7/strided_slice_2StridedSlice8sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_2:value:0>sequential_8/lstm_5/lstm_cell_7/strided_slice_2/stack:output:0@sequential_8/lstm_5/lstm_cell_7/strided_slice_2/stack_1:output:0@sequential_8/lstm_5/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÊ
(sequential_8/lstm_5/lstm_cell_7/MatMul_6MatMul)sequential_8/lstm_5/lstm_cell_7/mul_6:z:08sequential_8/lstm_5/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÉ
%sequential_8/lstm_5/lstm_cell_7/add_2AddV22sequential_8/lstm_5/lstm_cell_7/BiasAdd_2:output:02sequential_8/lstm_5/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
$sequential_8/lstm_5/lstm_cell_7/TanhTanh)sequential_8/lstm_5/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¶
%sequential_8/lstm_5/lstm_cell_7/mul_9Mul+sequential_8/lstm_5/lstm_cell_7/Sigmoid:y:0(sequential_8/lstm_5/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ·
%sequential_8/lstm_5/lstm_cell_7/add_3AddV2)sequential_8/lstm_5/lstm_cell_7/mul_8:z:0)sequential_8/lstm_5/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀª
0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_3ReadVariableOp7sequential_8_lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0
5sequential_8/lstm_5/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  
7sequential_8/lstm_5/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
7sequential_8/lstm_5/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
/sequential_8/lstm_5/lstm_cell_7/strided_slice_3StridedSlice8sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_3:value:0>sequential_8/lstm_5/lstm_cell_7/strided_slice_3/stack:output:0@sequential_8/lstm_5/lstm_cell_7/strided_slice_3/stack_1:output:0@sequential_8/lstm_5/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÊ
(sequential_8/lstm_5/lstm_cell_7/MatMul_7MatMul)sequential_8/lstm_5/lstm_cell_7/mul_7:z:08sequential_8/lstm_5/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÉ
%sequential_8/lstm_5/lstm_cell_7/add_4AddV22sequential_8/lstm_5/lstm_cell_7/BiasAdd_3:output:02sequential_8/lstm_5/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)sequential_8/lstm_5/lstm_cell_7/Sigmoid_2Sigmoid)sequential_8/lstm_5/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
&sequential_8/lstm_5/lstm_cell_7/Tanh_1Tanh)sequential_8/lstm_5/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ»
&sequential_8/lstm_5/lstm_cell_7/mul_10Mul-sequential_8/lstm_5/lstm_cell_7/Sigmoid_2:y:0*sequential_8/lstm_5/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
1sequential_8/lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ô
#sequential_8/lstm_5/TensorArrayV2_1TensorListReserve:sequential_8/lstm_5/TensorArrayV2_1/element_shape:output:0,sequential_8/lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒZ
sequential_8/lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_8/lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿh
&sequential_8/lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_8/lstm_5/whileWhile/sequential_8/lstm_5/while/loop_counter:output:05sequential_8/lstm_5/while/maximum_iterations:output:0!sequential_8/lstm_5/time:output:0,sequential_8/lstm_5/TensorArrayV2_1:handle:0"sequential_8/lstm_5/zeros:output:0$sequential_8/lstm_5/zeros_1:output:0,sequential_8/lstm_5/strided_slice_1:output:0Ksequential_8/lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_8_lstm_5_lstm_cell_7_split_readvariableop_resource?sequential_8_lstm_5_lstm_cell_7_split_1_readvariableop_resource7sequential_8_lstm_5_lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *1
body)R'
%sequential_8_lstm_5_while_body_109730*1
cond)R'
%sequential_8_lstm_5_while_cond_109729*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
Dsequential_8/lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ÿ
6sequential_8/lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_8/lstm_5/while:output:3Msequential_8/lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿÀ*
element_dtype0|
)sequential_8/lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿu
+sequential_8/lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_8/lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
#sequential_8/lstm_5/strided_slice_3StridedSlice?sequential_8/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:02sequential_8/lstm_5/strided_slice_3/stack:output:04sequential_8/lstm_5/strided_slice_3/stack_1:output:04sequential_8/lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_masky
$sequential_8/lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ó
sequential_8/lstm_5/transpose_1	Transpose?sequential_8/lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_8/lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÀo
sequential_8/lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ½
;sequential_8/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpDsequential_8_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:À*
dtype0w
2sequential_8/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:á
0sequential_8/batch_normalization_2/batchnorm/addAddV2Csequential_8/batch_normalization_2/batchnorm/ReadVariableOp:value:0;sequential_8/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:À
2sequential_8/batch_normalization_2/batchnorm/RsqrtRsqrt4sequential_8/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:ÀÅ
?sequential_8/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpHsequential_8_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:À*
dtype0Þ
0sequential_8/batch_normalization_2/batchnorm/mulMul6sequential_8/batch_normalization_2/batchnorm/Rsqrt:y:0Gsequential_8/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:ÀÐ
2sequential_8/batch_normalization_2/batchnorm/mul_1Mul,sequential_8/lstm_5/strided_slice_3:output:04sequential_8/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÁ
=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpFsequential_8_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:À*
dtype0Ü
2sequential_8/batch_normalization_2/batchnorm/mul_2MulEsequential_8/batch_normalization_2/batchnorm/ReadVariableOp_1:value:04sequential_8/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:ÀÁ
=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpFsequential_8_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:À*
dtype0Ü
0sequential_8/batch_normalization_2/batchnorm/subSubEsequential_8/batch_normalization_2/batchnorm/ReadVariableOp_2:value:06sequential_8/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ÀÜ
2sequential_8/batch_normalization_2/batchnorm/add_1AddV26sequential_8/batch_normalization_2/batchnorm/mul_1:z:04sequential_8/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¡
+sequential_8/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_8_dense_15_matmul_readvariableop_resource*
_output_shapes
:	À*
dtype0Å
sequential_8/dense_15/MatMulMatMul6sequential_8/batch_normalization_2/batchnorm/add_1:z:03sequential_8/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_8/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_8_dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_8/dense_15/BiasAddBiasAdd&sequential_8/dense_15/MatMul:product:04sequential_8/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_8/dense_15/SoftmaxSoftmax&sequential_8/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_8/dense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp:^sequential_8/batch_normalization/batchnorm/ReadVariableOp<^sequential_8/batch_normalization/batchnorm/ReadVariableOp_1<^sequential_8/batch_normalization/batchnorm/ReadVariableOp_2>^sequential_8/batch_normalization/batchnorm/mul/ReadVariableOp<^sequential_8/batch_normalization_1/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_1/batchnorm/mul/ReadVariableOp<^sequential_8/batch_normalization_2/batchnorm/ReadVariableOp>^sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_1>^sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_2@^sequential_8/batch_normalization_2/batchnorm/mul/ReadVariableOp-^sequential_8/dense_15/BiasAdd/ReadVariableOp,^sequential_8/dense_15/MatMul/ReadVariableOp*^sequential_8/embedding_8/embedding_lookup/^sequential_8/lstm_5/lstm_cell_7/ReadVariableOp1^sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_11^sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_21^sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_35^sequential_8/lstm_5/lstm_cell_7/split/ReadVariableOp7^sequential_8/lstm_5/lstm_cell_7/split_1/ReadVariableOp^sequential_8/lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 2v
9sequential_8/batch_normalization/batchnorm/ReadVariableOp9sequential_8/batch_normalization/batchnorm/ReadVariableOp2z
;sequential_8/batch_normalization/batchnorm/ReadVariableOp_1;sequential_8/batch_normalization/batchnorm/ReadVariableOp_12z
;sequential_8/batch_normalization/batchnorm/ReadVariableOp_2;sequential_8/batch_normalization/batchnorm/ReadVariableOp_22~
=sequential_8/batch_normalization/batchnorm/mul/ReadVariableOp=sequential_8/batch_normalization/batchnorm/mul/ReadVariableOp2z
;sequential_8/batch_normalization_1/batchnorm/ReadVariableOp;sequential_8/batch_normalization_1/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_1/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_1/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_1/batchnorm/mul/ReadVariableOp2z
;sequential_8/batch_normalization_2/batchnorm/ReadVariableOp;sequential_8/batch_normalization_2/batchnorm/ReadVariableOp2~
=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_1=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_12~
=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_2=sequential_8/batch_normalization_2/batchnorm/ReadVariableOp_22
?sequential_8/batch_normalization_2/batchnorm/mul/ReadVariableOp?sequential_8/batch_normalization_2/batchnorm/mul/ReadVariableOp2\
,sequential_8/dense_15/BiasAdd/ReadVariableOp,sequential_8/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_8/dense_15/MatMul/ReadVariableOp+sequential_8/dense_15/MatMul/ReadVariableOp2V
)sequential_8/embedding_8/embedding_lookup)sequential_8/embedding_8/embedding_lookup2`
.sequential_8/lstm_5/lstm_cell_7/ReadVariableOp.sequential_8/lstm_5/lstm_cell_7/ReadVariableOp2d
0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_10sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_12d
0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_20sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_22d
0sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_30sequential_8/lstm_5/lstm_cell_7/ReadVariableOp_32l
4sequential_8/lstm_5/lstm_cell_7/split/ReadVariableOp4sequential_8/lstm_5/lstm_cell_7/split/ReadVariableOp2p
6sequential_8/lstm_5/lstm_cell_7/split_1/ReadVariableOp6sequential_8/lstm_5/lstm_cell_7/split_1/ReadVariableOp26
sequential_8/lstm_5/whilesequential_8/lstm_5/while:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
+
_user_specified_nameembedding_8_input
ï"
à
while_body_110526
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_7_110550_0:
)
while_lstm_cell_7_110552_0:	.
while_lstm_cell_7_110554_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_7_110550:
'
while_lstm_cell_7_110552:	,
while_lstm_cell_7_110554:
À¢)while/lstm_cell_7/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0±
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_110550_0while_lstm_cell_7_110552_0while_lstm_cell_7_110554_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110467Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_7_110550while_lstm_cell_7_110550_0"6
while_lstm_cell_7_110552while_lstm_cell_7_110552_0"6
while_lstm_cell_7_110554while_lstm_cell_7_110554_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
º
m
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_109978

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿq

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
Ó
4__inference_batch_normalization_layer_call_fn_112675

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109911}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
²
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109911

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý	
Ï
lstm_5_while_cond_112366*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_112366___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_112366___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_112366___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_112366___redundant_placeholder3
lstm_5_while_identity
~
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: Y
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_5_while_identitylstm_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
û
¶
'__inference_lstm_5_layer_call_fn_112903

inputs
unknown:

	unknown_0:	
	unknown_1:
À
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_111436p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿx: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs

¸
'__inference_lstm_5_layer_call_fn_112870
inputs_0
unknown:

	unknown_0:	
	unknown_1:
À
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_110290p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
­

,__inference_embedding_8_layer_call_fn_112652

inputs
unknown:À¸
identity¢StatefulPartitionedCallÔ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_110703t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿx: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
Å

)__inference_dense_15_layer_call_fn_114220

inputs
unknown:	À
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_110996o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
º*
Ã
H__inference_sequential_8_layer_call_and_return_conditional_losses_111003

inputs'
embedding_8_110704:À¸)
batch_normalization_110707:	)
batch_normalization_110709:	)
batch_normalization_110711:	)
batch_normalization_110713:	+
batch_normalization_1_110717:	+
batch_normalization_1_110719:	+
batch_normalization_1_110721:	+
batch_normalization_1_110723:	!
lstm_5_110969:

lstm_5_110971:	!
lstm_5_110973:
À+
batch_normalization_2_110976:	À+
batch_normalization_2_110978:	À+
batch_normalization_2_110980:	À+
batch_normalization_2_110982:	À"
dense_15_110997:	À
dense_15_110999:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢#embedding_8/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCallë
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_8_110704*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_110703
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0batch_normalization_110707batch_normalization_110709batch_normalization_110711batch_normalization_110713*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109911
#spatial_dropout1d_5/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_109978
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_5/PartitionedCall:output:0batch_normalization_1_110717batch_normalization_1_110719batch_normalization_1_110721batch_normalization_1_110723*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110032ª
lstm_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0lstm_5_110969lstm_5_110971lstm_5_110973*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_110968
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0batch_normalization_2_110976batch_normalization_2_110978batch_normalization_2_110980batch_normalization_2_110982*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110628 
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_15_110997dense_15_110999*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_110996x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
¹
Ã
while_cond_111237
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_111237___redundant_placeholder04
0while_while_cond_111237___redundant_placeholder14
0while_while_cond_111237___redundant_placeholder24
0while_while_cond_111237___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
¹
Ã
while_cond_113011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113011___redundant_placeholder04
0while_while_cond_113011___redundant_placeholder14
0while_while_cond_113011___redundant_placeholder24
0while_while_cond_113011___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
ó
Ò
-__inference_sequential_8_layer_call_fn_111805

inputs
unknown:À¸
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:

	unknown_9:	

unknown_10:
À

unknown_11:	À

unknown_12:	À

unknown_13:	À

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCall®
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_111543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
Û*
Î
H__inference_sequential_8_layer_call_and_return_conditional_losses_111670
embedding_8_input'
embedding_8_111626:À¸)
batch_normalization_111629:	)
batch_normalization_111631:	)
batch_normalization_111633:	)
batch_normalization_111635:	+
batch_normalization_1_111639:	+
batch_normalization_1_111641:	+
batch_normalization_1_111643:	+
batch_normalization_1_111645:	!
lstm_5_111648:

lstm_5_111650:	!
lstm_5_111652:
À+
batch_normalization_2_111655:	À+
batch_normalization_2_111657:	À+
batch_normalization_2_111659:	À+
batch_normalization_2_111661:	À"
dense_15_111664:	À
dense_15_111666:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢#embedding_8/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCallö
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputembedding_8_111626*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_110703
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0batch_normalization_111629batch_normalization_111631batch_normalization_111633batch_normalization_111635*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109911
#spatial_dropout1d_5/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_109978
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_5/PartitionedCall:output:0batch_normalization_1_111639batch_normalization_1_111641batch_normalization_1_111643batch_normalization_1_111645*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110032ª
lstm_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0lstm_5_111648lstm_5_111650lstm_5_111652*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_110968
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0batch_normalization_2_111655batch_normalization_2_111657batch_normalization_2_111659batch_normalization_2_111661*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110628 
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_15_111664dense_15_111666*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_110996x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
+
_user_specified_nameembedding_8_input
ÖD
ª
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110207

inputs

states
states_11
split_readvariableop_resource:
.
split_1_readvariableop_resource:	+
readvariableop_resource:
À
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype0¦
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ]
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_namestates

Ý
-__inference_sequential_8_layer_call_fn_111623
embedding_8_input
unknown:À¸
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:

	unknown_9:	

unknown_10:
À

unknown_11:	À

unknown_12:	À

unknown_13:	À

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*.
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_111543o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
+
_user_specified_nameembedding_8_input
,
ñ
H__inference_sequential_8_layer_call_and_return_conditional_losses_111543

inputs'
embedding_8_111499:À¸)
batch_normalization_111502:	)
batch_normalization_111504:	)
batch_normalization_111506:	)
batch_normalization_111508:	+
batch_normalization_1_111512:	+
batch_normalization_1_111514:	+
batch_normalization_1_111516:	+
batch_normalization_1_111518:	!
lstm_5_111521:

lstm_5_111523:	!
lstm_5_111525:
À+
batch_normalization_2_111528:	À+
batch_normalization_2_111530:	À+
batch_normalization_2_111532:	À+
batch_normalization_2_111534:	À"
dense_15_111537:	À
dense_15_111539:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢#embedding_8/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCall¢+spatial_dropout1d_5/StatefulPartitionedCallë
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_8_111499*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_110703
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0batch_normalization_111502batch_normalization_111504batch_normalization_111506batch_normalization_111508*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109958
+spatial_dropout1d_5/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_110005
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_5/StatefulPartitionedCall:output:0batch_normalization_1_111512batch_normalization_1_111514batch_normalization_1_111516batch_normalization_1_111518*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110079ª
lstm_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0lstm_5_111521lstm_5_111523lstm_5_111525*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_111436
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0batch_normalization_2_111528batch_normalization_2_111530batch_normalization_2_111532batch_normalization_2_111534*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110675 
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_15_111537dense_15_111539*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_110996x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall,^spatial_dropout1d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2Z
+spatial_dropout1d_5/StatefulPartitionedCall+spatial_dropout1d_5/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ê

H__inference_sequential_8_layer_call_and_return_conditional_losses_112110

inputs8
#embedding_8_embedding_lookup_111809:À¸D
5batch_normalization_batchnorm_readvariableop_resource:	H
9batch_normalization_batchnorm_mul_readvariableop_resource:	F
7batch_normalization_batchnorm_readvariableop_1_resource:	F
7batch_normalization_batchnorm_readvariableop_2_resource:	F
7batch_normalization_1_batchnorm_readvariableop_resource:	J
;batch_normalization_1_batchnorm_mul_readvariableop_resource:	H
9batch_normalization_1_batchnorm_readvariableop_1_resource:	H
9batch_normalization_1_batchnorm_readvariableop_2_resource:	D
0lstm_5_lstm_cell_7_split_readvariableop_resource:
A
2lstm_5_lstm_cell_7_split_1_readvariableop_resource:	>
*lstm_5_lstm_cell_7_readvariableop_resource:
ÀF
7batch_normalization_2_batchnorm_readvariableop_resource:	ÀJ
;batch_normalization_2_batchnorm_mul_readvariableop_resource:	ÀH
9batch_normalization_2_batchnorm_readvariableop_1_resource:	ÀH
9batch_normalization_2_batchnorm_readvariableop_2_resource:	À:
'dense_15_matmul_readvariableop_resource:	À6
(dense_15_biasadd_readvariableop_resource:
identity¢,batch_normalization/batchnorm/ReadVariableOp¢.batch_normalization/batchnorm/ReadVariableOp_1¢.batch_normalization/batchnorm/ReadVariableOp_2¢0batch_normalization/batchnorm/mul/ReadVariableOp¢.batch_normalization_1/batchnorm/ReadVariableOp¢0batch_normalization_1/batchnorm/ReadVariableOp_1¢0batch_normalization_1/batchnorm/ReadVariableOp_2¢2batch_normalization_1/batchnorm/mul/ReadVariableOp¢.batch_normalization_2/batchnorm/ReadVariableOp¢0batch_normalization_2/batchnorm/ReadVariableOp_1¢0batch_normalization_2/batchnorm/ReadVariableOp_2¢2batch_normalization_2/batchnorm/mul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢embedding_8/embedding_lookup¢!lstm_5/lstm_cell_7/ReadVariableOp¢#lstm_5/lstm_cell_7/ReadVariableOp_1¢#lstm_5/lstm_cell_7/ReadVariableOp_2¢#lstm_5/lstm_cell_7/ReadVariableOp_3¢'lstm_5/lstm_cell_7/split/ReadVariableOp¢)lstm_5/lstm_cell_7/split_1/ReadVariableOp¢lstm_5/whilea
embedding_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxì
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_111809embedding_8/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_8/embedding_lookup/111809*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0Ç
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/111809*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
!batch_normalization/batchnorm/addAddV24batch_normalization/batchnorm/ReadVariableOp:value:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:y
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:§
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0±
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:º
#batch_normalization/batchnorm/mul_1Mul0embedding_8/embedding_lookup/Identity_1:output:0%batch_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx£
.batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp7batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0¯
#batch_normalization/batchnorm/mul_2Mul6batch_normalization/batchnorm/ReadVariableOp_1:value:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:£
.batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp7batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0¯
!batch_normalization/batchnorm/subSub6batch_normalization/batchnorm/ReadVariableOp_2:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:³
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
spatial_dropout1d_5/IdentityIdentity'batch_normalization/batchnorm/add_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx£
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_1/batchnorm/addAddV26batch_normalization_1/batchnorm/ReadVariableOp:value:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:«
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0·
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:³
%batch_normalization_1/batchnorm/mul_1Mul%spatial_dropout1d_5/Identity:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx§
0batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0µ
%batch_normalization_1/batchnorm/mul_2Mul8batch_normalization_1/batchnorm/ReadVariableOp_1:value:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:§
0batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0µ
#batch_normalization_1/batchnorm/subSub8batch_normalization_1/batchnorm/ReadVariableOp_2:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¹
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxe
lstm_5/ShapeShape)batch_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:d
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :À
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :À
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_5/transpose	Transpose)batch_normalization_1/batchnorm/add_1:z:0lstm_5/transpose/perm:output:0*
T0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿR
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:f
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskq
"lstm_5/lstm_cell_7/ones_like/ShapeShapelstm_5/strided_slice_2:output:0*
T0*
_output_shapes
:g
"lstm_5/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?±
lstm_5/lstm_cell_7/ones_likeFill+lstm_5/lstm_cell_7/ones_like/Shape:output:0+lstm_5/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
$lstm_5/lstm_cell_7/ones_like_1/ShapeShapelstm_5/zeros:output:0*
T0*
_output_shapes
:i
$lstm_5/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?·
lstm_5/lstm_cell_7/ones_like_1Fill-lstm_5/lstm_cell_7/ones_like_1/Shape:output:0-lstm_5/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mulMullstm_5/strided_slice_2:output:0%lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_5/lstm_cell_7/mul_1Mullstm_5/strided_slice_2:output:0%lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_5/lstm_cell_7/mul_2Mullstm_5/strided_slice_2:output:0%lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_5/lstm_cell_7/mul_3Mullstm_5/strided_slice_2:output:0%lstm_5/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_5/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'lstm_5/lstm_cell_7/split/ReadVariableOpReadVariableOp0lstm_5_lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0ß
lstm_5/lstm_cell_7/splitSplit+lstm_5/lstm_cell_7/split/split_dim:output:0/lstm_5/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_5/lstm_cell_7/MatMulMatMullstm_5/lstm_cell_7/mul:z:0!lstm_5/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/MatMul_1MatMullstm_5/lstm_cell_7/mul_1:z:0!lstm_5/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/MatMul_2MatMullstm_5/lstm_cell_7/mul_2:z:0!lstm_5/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/MatMul_3MatMullstm_5/lstm_cell_7/mul_3:z:0!lstm_5/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
$lstm_5/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm_5/lstm_cell_7/split_1/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ñ
lstm_5/lstm_cell_7/split_1Split-lstm_5/lstm_cell_7/split_1/split_dim:output:01lstm_5/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split¢
lstm_5/lstm_cell_7/BiasAddBiasAdd#lstm_5/lstm_cell_7/MatMul:product:0#lstm_5/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/lstm_cell_7/BiasAdd_1BiasAdd%lstm_5/lstm_cell_7/MatMul_1:product:0#lstm_5/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/lstm_cell_7/BiasAdd_2BiasAdd%lstm_5/lstm_cell_7/MatMul_2:product:0#lstm_5/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/lstm_cell_7/BiasAdd_3BiasAdd%lstm_5/lstm_cell_7/MatMul_3:product:0#lstm_5/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_4Mullstm_5/zeros:output:0'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_5Mullstm_5/zeros:output:0'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_6Mullstm_5/zeros:output:0'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_7Mullstm_5/zeros:output:0'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!lstm_5/lstm_cell_7/ReadVariableOpReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0w
&lstm_5/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_5/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   y
(lstm_5/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm_5/lstm_cell_7/strided_sliceStridedSlice)lstm_5/lstm_cell_7/ReadVariableOp:value:0/lstm_5/lstm_cell_7/strided_slice/stack:output:01lstm_5/lstm_cell_7/strided_slice/stack_1:output:01lstm_5/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask¡
lstm_5/lstm_cell_7/MatMul_4MatMullstm_5/lstm_cell_7/mul_4:z:0)lstm_5/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/addAddV2#lstm_5/lstm_cell_7/BiasAdd:output:0%lstm_5/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
lstm_5/lstm_cell_7/SigmoidSigmoidlstm_5/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#lstm_5/lstm_cell_7/ReadVariableOp_1ReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0y
(lstm_5/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*lstm_5/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      {
*lstm_5/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm_5/lstm_cell_7/strided_slice_1StridedSlice+lstm_5/lstm_cell_7/ReadVariableOp_1:value:01lstm_5/lstm_cell_7/strided_slice_1/stack:output:03lstm_5/lstm_cell_7/strided_slice_1/stack_1:output:03lstm_5/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask£
lstm_5/lstm_cell_7/MatMul_5MatMullstm_5/lstm_cell_7/mul_5:z:0+lstm_5/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/lstm_cell_7/add_1AddV2%lstm_5/lstm_cell_7/BiasAdd_1:output:0%lstm_5/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_5/lstm_cell_7/Sigmoid_1Sigmoidlstm_5/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_8Mul lstm_5/lstm_cell_7/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#lstm_5/lstm_cell_7/ReadVariableOp_2ReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0y
(lstm_5/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      {
*lstm_5/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  {
*lstm_5/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm_5/lstm_cell_7/strided_slice_2StridedSlice+lstm_5/lstm_cell_7/ReadVariableOp_2:value:01lstm_5/lstm_cell_7/strided_slice_2/stack:output:03lstm_5/lstm_cell_7/strided_slice_2/stack_1:output:03lstm_5/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask£
lstm_5/lstm_cell_7/MatMul_6MatMullstm_5/lstm_cell_7/mul_6:z:0+lstm_5/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/lstm_cell_7/add_2AddV2%lstm_5/lstm_cell_7/BiasAdd_2:output:0%lstm_5/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
lstm_5/lstm_cell_7/TanhTanhlstm_5/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_9Mullstm_5/lstm_cell_7/Sigmoid:y:0lstm_5/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/add_3AddV2lstm_5/lstm_cell_7/mul_8:z:0lstm_5/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#lstm_5/lstm_cell_7/ReadVariableOp_3ReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0y
(lstm_5/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  {
*lstm_5/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_5/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm_5/lstm_cell_7/strided_slice_3StridedSlice+lstm_5/lstm_cell_7/ReadVariableOp_3:value:01lstm_5/lstm_cell_7/strided_slice_3/stack:output:03lstm_5/lstm_cell_7/strided_slice_3/stack_1:output:03lstm_5/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask£
lstm_5/lstm_cell_7/MatMul_7MatMullstm_5/lstm_cell_7/mul_7:z:0+lstm_5/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/lstm_cell_7/add_4AddV2%lstm_5/lstm_cell_7/BiasAdd_3:output:0%lstm_5/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_5/lstm_cell_7/Sigmoid_2Sigmoidlstm_5/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
lstm_5/lstm_cell_7/Tanh_1Tanhlstm_5/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_10Mul lstm_5/lstm_cell_7/Sigmoid_2:y:0lstm_5/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀu
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Í
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Û
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_5_lstm_cell_7_split_readvariableop_resource2lstm_5_lstm_cell_7_split_1_readvariableop_resource*lstm_5_lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_5_while_body_111953*$
condR
lstm_5_while_cond_111952*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ø
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿÀ*
element_dtype0o
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maskl
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÀb
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    £
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:À*
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:º
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:À}
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:À«
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:À*
dtype0·
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:À©
%batch_normalization_2/batchnorm/mul_1Mullstm_5/strided_slice_3:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ§
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:À*
dtype0µ
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:À§
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:À*
dtype0µ
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Àµ
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	À*
dtype0
dense_15/MatMulMatMul)batch_normalization_2/batchnorm/add_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿ
NoOpNoOp-^batch_normalization/batchnorm/ReadVariableOp/^batch_normalization/batchnorm/ReadVariableOp_1/^batch_normalization/batchnorm/ReadVariableOp_21^batch_normalization/batchnorm/mul/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp1^batch_normalization_1/batchnorm/ReadVariableOp_11^batch_normalization_1/batchnorm/ReadVariableOp_23^batch_normalization_1/batchnorm/mul/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp^embedding_8/embedding_lookup"^lstm_5/lstm_cell_7/ReadVariableOp$^lstm_5/lstm_cell_7/ReadVariableOp_1$^lstm_5/lstm_cell_7/ReadVariableOp_2$^lstm_5/lstm_cell_7/ReadVariableOp_3(^lstm_5/lstm_cell_7/split/ReadVariableOp*^lstm_5/lstm_cell_7/split_1/ReadVariableOp^lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2`
.batch_normalization/batchnorm/ReadVariableOp_1.batch_normalization/batchnorm/ReadVariableOp_12`
.batch_normalization/batchnorm/ReadVariableOp_2.batch_normalization/batchnorm/ReadVariableOp_22d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2d
0batch_normalization_1/batchnorm/ReadVariableOp_10batch_normalization_1/batchnorm/ReadVariableOp_12d
0batch_normalization_1/batchnorm/ReadVariableOp_20batch_normalization_1/batchnorm/ReadVariableOp_22h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2F
!lstm_5/lstm_cell_7/ReadVariableOp!lstm_5/lstm_cell_7/ReadVariableOp2J
#lstm_5/lstm_cell_7/ReadVariableOp_1#lstm_5/lstm_cell_7/ReadVariableOp_12J
#lstm_5/lstm_cell_7/ReadVariableOp_2#lstm_5/lstm_cell_7/ReadVariableOp_22J
#lstm_5/lstm_cell_7/ReadVariableOp_3#lstm_5/lstm_cell_7/ReadVariableOp_32R
'lstm_5/lstm_cell_7/split/ReadVariableOp'lstm_5/lstm_cell_7/split/ReadVariableOp2V
)lstm_5/lstm_cell_7/split_1/ReadVariableOp)lstm_5/lstm_cell_7/split_1/ReadVariableOp2
lstm_5/whilelstm_5/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
¥,
ü
H__inference_sequential_8_layer_call_and_return_conditional_losses_111717
embedding_8_input'
embedding_8_111673:À¸)
batch_normalization_111676:	)
batch_normalization_111678:	)
batch_normalization_111680:	)
batch_normalization_111682:	+
batch_normalization_1_111686:	+
batch_normalization_1_111688:	+
batch_normalization_1_111690:	+
batch_normalization_1_111692:	!
lstm_5_111695:

lstm_5_111697:	!
lstm_5_111699:
À+
batch_normalization_2_111702:	À+
batch_normalization_2_111704:	À+
batch_normalization_2_111706:	À+
batch_normalization_2_111708:	À"
dense_15_111711:	À
dense_15_111713:
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢#embedding_8/StatefulPartitionedCall¢lstm_5/StatefulPartitionedCall¢+spatial_dropout1d_5/StatefulPartitionedCallö
#embedding_8/StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputembedding_8_111673*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_8_layer_call_and_return_conditional_losses_110703
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall,embedding_8/StatefulPartitionedCall:output:0batch_normalization_111676batch_normalization_111678batch_normalization_111680batch_normalization_111682*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109958
+spatial_dropout1d_5/StatefulPartitionedCallStatefulPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_110005
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_5/StatefulPartitionedCall:output:0batch_normalization_1_111686batch_normalization_1_111688batch_normalization_1_111690batch_normalization_1_111692*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110079ª
lstm_5/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0lstm_5_111695lstm_5_111697lstm_5_111699*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_111436
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_5/StatefulPartitionedCall:output:0batch_normalization_2_111702batch_normalization_2_111704batch_normalization_2_111706batch_normalization_2_111708*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110675 
 dense_15/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0dense_15_111711dense_15_111713*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_110996x
IdentityIdentity)dense_15/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall$^embedding_8/StatefulPartitionedCall^lstm_5/StatefulPartitionedCall,^spatial_dropout1d_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2J
#embedding_8/StatefulPartitionedCall#embedding_8/StatefulPartitionedCall2@
lstm_5/StatefulPartitionedCalllstm_5/StatefulPartitionedCall2Z
+spatial_dropout1d_5/StatefulPartitionedCall+spatial_dropout1d_5/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
+
_user_specified_nameembedding_8_input
®
¬
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_114493

inputs
states_0
states_11
split_readvariableop_resource:
.
split_1_readvariableop_resource:	+
readvariableop_resource:
À
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀX
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype0¦
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ^
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ^
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ^
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ^
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/1
÷
÷
,__inference_lstm_cell_7_layer_call_fn_114248

inputs
states_0
states_1
unknown:

	unknown_0:	
	unknown_1:
À
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110207p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/1
¤

ö
D__inference_dense_15_layer_call_and_return_conditional_losses_114231

inputs1
matmul_readvariableop_resource:	À-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
®
Õ
6__inference_batch_normalization_2_layer_call_fn_114157

inputs
unknown:	À
	unknown_0:	À
	unknown_1:	À
	unknown_2:	À
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110675p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
£
n
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_112779

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :­
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>³
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
â
Õ
6__inference_batch_normalization_1_layer_call_fn_112805

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110079}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä
Õ
6__inference_batch_normalization_1_layer_call_fn_112792

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110032}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£
n
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_110005

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?z
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :­
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:¨
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>³
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ|
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿo
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 

lstm_5_while_body_111953*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0L
8lstm_5_while_lstm_cell_7_split_readvariableop_resource_0:
I
:lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0:	F
2lstm_5_while_lstm_cell_7_readvariableop_resource_0:
À
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensorJ
6lstm_5_while_lstm_cell_7_split_readvariableop_resource:
G
8lstm_5_while_lstm_cell_7_split_1_readvariableop_resource:	D
0lstm_5_while_lstm_cell_7_readvariableop_resource:
À¢'lstm_5/while/lstm_cell_7/ReadVariableOp¢)lstm_5/while/lstm_cell_7/ReadVariableOp_1¢)lstm_5/while/lstm_cell_7/ReadVariableOp_2¢)lstm_5/while/lstm_cell_7/ReadVariableOp_3¢-lstm_5/while/lstm_cell_7/split/ReadVariableOp¢/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ê
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(lstm_5/while/lstm_cell_7/ones_like/ShapeShape7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:m
(lstm_5/while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ã
"lstm_5/while/lstm_cell_7/ones_likeFill1lstm_5/while/lstm_cell_7/ones_like/Shape:output:01lstm_5/while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
*lstm_5/while/lstm_cell_7/ones_like_1/ShapeShapelstm_5_while_placeholder_2*
T0*
_output_shapes
:o
*lstm_5/while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
$lstm_5/while/lstm_cell_7/ones_like_1Fill3lstm_5/while/lstm_cell_7/ones_like_1/Shape:output:03lstm_5/while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¼
lstm_5/while/lstm_cell_7/mulMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
lstm_5/while/lstm_cell_7/mul_1Mul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
lstm_5/while/lstm_cell_7/mul_2Mul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
lstm_5/while/lstm_cell_7/mul_3Mul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm_5/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
-lstm_5/while/lstm_cell_7/split/ReadVariableOpReadVariableOp8lstm_5_while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ñ
lstm_5/while/lstm_cell_7/splitSplit1lstm_5/while/lstm_cell_7/split/split_dim:output:05lstm_5/while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split§
lstm_5/while/lstm_cell_7/MatMulMatMul lstm_5/while/lstm_cell_7/mul:z:0'lstm_5/while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ«
!lstm_5/while/lstm_cell_7/MatMul_1MatMul"lstm_5/while/lstm_cell_7/mul_1:z:0'lstm_5/while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ«
!lstm_5/while/lstm_cell_7/MatMul_2MatMul"lstm_5/while/lstm_cell_7/mul_2:z:0'lstm_5/while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ«
!lstm_5/while/lstm_cell_7/MatMul_3MatMul"lstm_5/while/lstm_cell_7/mul_3:z:0'lstm_5/while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀl
*lstm_5/while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : §
/lstm_5/while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0ã
 lstm_5/while/lstm_cell_7/split_1Split3lstm_5/while/lstm_cell_7/split_1/split_dim:output:07lstm_5/while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split´
 lstm_5/while/lstm_cell_7/BiasAddBiasAdd)lstm_5/while/lstm_cell_7/MatMul:product:0)lstm_5/while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
"lstm_5/while/lstm_cell_7/BiasAdd_1BiasAdd+lstm_5/while/lstm_cell_7/MatMul_1:product:0)lstm_5/while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
"lstm_5/while/lstm_cell_7/BiasAdd_2BiasAdd+lstm_5/while/lstm_cell_7/MatMul_2:product:0)lstm_5/while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
"lstm_5/while/lstm_cell_7/BiasAdd_3BiasAdd+lstm_5/while/lstm_cell_7/MatMul_3:product:0)lstm_5/while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
lstm_5/while/lstm_cell_7/mul_4Mullstm_5_while_placeholder_2-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
lstm_5/while/lstm_cell_7/mul_5Mullstm_5_while_placeholder_2-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
lstm_5/while/lstm_cell_7/mul_6Mullstm_5_while_placeholder_2-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
lstm_5/while/lstm_cell_7/mul_7Mullstm_5_while_placeholder_2-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
'lstm_5/while/lstm_cell_7/ReadVariableOpReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0}
,lstm_5/while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_5/while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
.lstm_5/while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm_5/while/lstm_cell_7/strided_sliceStridedSlice/lstm_5/while/lstm_cell_7/ReadVariableOp:value:05lstm_5/while/lstm_cell_7/strided_slice/stack:output:07lstm_5/while/lstm_cell_7/strided_slice/stack_1:output:07lstm_5/while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask³
!lstm_5/while/lstm_cell_7/MatMul_4MatMul"lstm_5/while/lstm_cell_7/mul_4:z:0/lstm_5/while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ°
lstm_5/while/lstm_cell_7/addAddV2)lstm_5/while/lstm_cell_7/BiasAdd:output:0+lstm_5/while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 lstm_5/while/lstm_cell_7/SigmoidSigmoid lstm_5/while/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)lstm_5/while/lstm_cell_7/ReadVariableOp_1ReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
.lstm_5/while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
0lstm_5/while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
0lstm_5/while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
(lstm_5/while/lstm_cell_7/strided_slice_1StridedSlice1lstm_5/while/lstm_cell_7/ReadVariableOp_1:value:07lstm_5/while/lstm_cell_7/strided_slice_1/stack:output:09lstm_5/while/lstm_cell_7/strided_slice_1/stack_1:output:09lstm_5/while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskµ
!lstm_5/while/lstm_cell_7/MatMul_5MatMul"lstm_5/while/lstm_cell_7/mul_5:z:01lstm_5/while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ´
lstm_5/while/lstm_cell_7/add_1AddV2+lstm_5/while/lstm_cell_7/BiasAdd_1:output:0+lstm_5/while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"lstm_5/while/lstm_cell_7/Sigmoid_1Sigmoid"lstm_5/while/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/while/lstm_cell_7/mul_8Mul&lstm_5/while/lstm_cell_7/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)lstm_5/while/lstm_cell_7/ReadVariableOp_2ReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
.lstm_5/while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      
0lstm_5/while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  
0lstm_5/while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
(lstm_5/while/lstm_cell_7/strided_slice_2StridedSlice1lstm_5/while/lstm_cell_7/ReadVariableOp_2:value:07lstm_5/while/lstm_cell_7/strided_slice_2/stack:output:09lstm_5/while/lstm_cell_7/strided_slice_2/stack_1:output:09lstm_5/while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskµ
!lstm_5/while/lstm_cell_7/MatMul_6MatMul"lstm_5/while/lstm_cell_7/mul_6:z:01lstm_5/while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ´
lstm_5/while/lstm_cell_7/add_2AddV2+lstm_5/while/lstm_cell_7/BiasAdd_2:output:0+lstm_5/while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_5/while/lstm_cell_7/TanhTanh"lstm_5/while/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¡
lstm_5/while/lstm_cell_7/mul_9Mul$lstm_5/while/lstm_cell_7/Sigmoid:y:0!lstm_5/while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/while/lstm_cell_7/add_3AddV2"lstm_5/while/lstm_cell_7/mul_8:z:0"lstm_5/while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)lstm_5/while/lstm_cell_7/ReadVariableOp_3ReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
.lstm_5/while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  
0lstm_5/while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
0lstm_5/while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
(lstm_5/while/lstm_cell_7/strided_slice_3StridedSlice1lstm_5/while/lstm_cell_7/ReadVariableOp_3:value:07lstm_5/while/lstm_cell_7/strided_slice_3/stack:output:09lstm_5/while/lstm_cell_7/strided_slice_3/stack_1:output:09lstm_5/while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskµ
!lstm_5/while/lstm_cell_7/MatMul_7MatMul"lstm_5/while/lstm_cell_7/mul_7:z:01lstm_5/while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ´
lstm_5/while/lstm_cell_7/add_4AddV2+lstm_5/while/lstm_cell_7/BiasAdd_3:output:0+lstm_5/while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"lstm_5/while/lstm_cell_7/Sigmoid_2Sigmoid"lstm_5/while/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ~
lstm_5/while/lstm_cell_7/Tanh_1Tanh"lstm_5/while/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/while/lstm_cell_7/mul_10Mul&lstm_5/while/lstm_cell_7/Sigmoid_2:y:0#lstm_5/while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀá
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder#lstm_5/while/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations^lstm_5/while/NoOp*
T0*
_output_shapes
: n
lstm_5/while/Identity_2Identitylstm_5/while/add:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: ®
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_5/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_5/while/Identity_4Identity#lstm_5/while/lstm_cell_7/mul_10:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_7/add_3:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀã
lstm_5/while/NoOpNoOp(^lstm_5/while/lstm_cell_7/ReadVariableOp*^lstm_5/while/lstm_cell_7/ReadVariableOp_1*^lstm_5/while/lstm_cell_7/ReadVariableOp_2*^lstm_5/while/lstm_cell_7/ReadVariableOp_3.^lstm_5/while/lstm_cell_7/split/ReadVariableOp0^lstm_5/while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"f
0lstm_5_while_lstm_cell_7_readvariableop_resource2lstm_5_while_lstm_cell_7_readvariableop_resource_0"v
8lstm_5_while_lstm_cell_7_split_1_readvariableop_resource:lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0"r
6lstm_5_while_lstm_cell_7_split_readvariableop_resource8lstm_5_while_lstm_cell_7_split_readvariableop_resource_0"Ä
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2R
'lstm_5/while/lstm_cell_7/ReadVariableOp'lstm_5/while/lstm_cell_7/ReadVariableOp2V
)lstm_5/while/lstm_cell_7/ReadVariableOp_1)lstm_5/while/lstm_cell_7/ReadVariableOp_12V
)lstm_5/while/lstm_cell_7/ReadVariableOp_2)lstm_5/while/lstm_cell_7/ReadVariableOp_22V
)lstm_5/while/lstm_cell_7/ReadVariableOp_3)lstm_5/while/lstm_cell_7/ReadVariableOp_32^
-lstm_5/while/lstm_cell_7/split/ReadVariableOp-lstm_5/while/lstm_cell_7/split/ReadVariableOp2b
/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
 
²
O__inference_batch_normalization_layer_call_and_return_conditional_losses_112708

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à
´
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_114177

inputs0
!batchnorm_readvariableop_resource:	À4
%batchnorm_mul_readvariableop_resource:	À2
#batchnorm_readvariableop_1_resource:	À2
#batchnorm_readvariableop_2_resource:	À
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:À*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ÀQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:À
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:À*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Àd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:À*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:À{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:À*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Às
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
÷
µ
H__inference_sequential_8_layer_call_and_return_conditional_losses_112602

inputs8
#embedding_8_embedding_lookup_112114:À¸J
;batch_normalization_assignmovingavg_readvariableop_resource:	L
=batch_normalization_assignmovingavg_1_readvariableop_resource:	H
9batch_normalization_batchnorm_mul_readvariableop_resource:	D
5batch_normalization_batchnorm_readvariableop_resource:	L
=batch_normalization_1_assignmovingavg_readvariableop_resource:	N
?batch_normalization_1_assignmovingavg_1_readvariableop_resource:	J
;batch_normalization_1_batchnorm_mul_readvariableop_resource:	F
7batch_normalization_1_batchnorm_readvariableop_resource:	D
0lstm_5_lstm_cell_7_split_readvariableop_resource:
A
2lstm_5_lstm_cell_7_split_1_readvariableop_resource:	>
*lstm_5_lstm_cell_7_readvariableop_resource:
ÀL
=batch_normalization_2_assignmovingavg_readvariableop_resource:	ÀN
?batch_normalization_2_assignmovingavg_1_readvariableop_resource:	ÀJ
;batch_normalization_2_batchnorm_mul_readvariableop_resource:	ÀF
7batch_normalization_2_batchnorm_readvariableop_resource:	À:
'dense_15_matmul_readvariableop_resource:	À6
(dense_15_biasadd_readvariableop_resource:
identity¢#batch_normalization/AssignMovingAvg¢2batch_normalization/AssignMovingAvg/ReadVariableOp¢%batch_normalization/AssignMovingAvg_1¢4batch_normalization/AssignMovingAvg_1/ReadVariableOp¢,batch_normalization/batchnorm/ReadVariableOp¢0batch_normalization/batchnorm/mul/ReadVariableOp¢%batch_normalization_1/AssignMovingAvg¢4batch_normalization_1/AssignMovingAvg/ReadVariableOp¢'batch_normalization_1/AssignMovingAvg_1¢6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_1/batchnorm/ReadVariableOp¢2batch_normalization_1/batchnorm/mul/ReadVariableOp¢%batch_normalization_2/AssignMovingAvg¢4batch_normalization_2/AssignMovingAvg/ReadVariableOp¢'batch_normalization_2/AssignMovingAvg_1¢6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_2/batchnorm/ReadVariableOp¢2batch_normalization_2/batchnorm/mul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢embedding_8/embedding_lookup¢!lstm_5/lstm_cell_7/ReadVariableOp¢#lstm_5/lstm_cell_7/ReadVariableOp_1¢#lstm_5/lstm_cell_7/ReadVariableOp_2¢#lstm_5/lstm_cell_7/ReadVariableOp_3¢'lstm_5/lstm_cell_7/split/ReadVariableOp¢)lstm_5/lstm_cell_7/split_1/ReadVariableOp¢lstm_5/whilea
embedding_8/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿxì
embedding_8/embedding_lookupResourceGather#embedding_8_embedding_lookup_112114embedding_8/Cast:y:0*
Tindices0*6
_class,
*(loc:@embedding_8/embedding_lookup/112114*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0Ç
%embedding_8/embedding_lookup/IdentityIdentity%embedding_8/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_8/embedding_lookup/112114*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
'embedding_8/embedding_lookup/Identity_1Identity.embedding_8/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
2batch_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ö
 batch_normalization/moments/meanMean0embedding_8/embedding_lookup/Identity_1:output:0;batch_normalization/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(
(batch_normalization/moments/StopGradientStopGradient)batch_normalization/moments/mean:output:0*
T0*#
_output_shapes
:Þ
-batch_normalization/moments/SquaredDifferenceSquaredDifference0embedding_8/embedding_lookup/Identity_1:output:01batch_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
6batch_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ß
$batch_normalization/moments/varianceMean1batch_normalization/moments/SquaredDifference:z:0?batch_normalization/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(
#batch_normalization/moments/SqueezeSqueeze)batch_normalization/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 
%batch_normalization/moments/Squeeze_1Squeeze-batch_normalization/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 n
)batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<«
2batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp;batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0¾
'batch_normalization/AssignMovingAvg/subSub:batch_normalization/AssignMovingAvg/ReadVariableOp:value:0,batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:µ
'batch_normalization/AssignMovingAvg/mulMul+batch_normalization/AssignMovingAvg/sub:z:02batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:ü
#batch_normalization/AssignMovingAvgAssignSubVariableOp;batch_normalization_assignmovingavg_readvariableop_resource+batch_normalization/AssignMovingAvg/mul:z:03^batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0p
+batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¯
4batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ä
)batch_normalization/AssignMovingAvg_1/subSub<batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:0.batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:»
)batch_normalization/AssignMovingAvg_1/mulMul-batch_normalization/AssignMovingAvg_1/sub:z:04batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
%batch_normalization/AssignMovingAvg_1AssignSubVariableOp=batch_normalization_assignmovingavg_1_readvariableop_resource-batch_normalization/AssignMovingAvg_1/mul:z:05^batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0h
#batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:®
!batch_normalization/batchnorm/addAddV2.batch_normalization/moments/Squeeze_1:output:0,batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:y
#batch_normalization/batchnorm/RsqrtRsqrt%batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:§
0batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp9batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0±
!batch_normalization/batchnorm/mulMul'batch_normalization/batchnorm/Rsqrt:y:08batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:º
#batch_normalization/batchnorm/mul_1Mul0embedding_8/embedding_lookup/Identity_1:output:0%batch_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx¥
#batch_normalization/batchnorm/mul_2Mul,batch_normalization/moments/Squeeze:output:0%batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:
,batch_normalization/batchnorm/ReadVariableOpReadVariableOp5batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0­
!batch_normalization/batchnorm/subSub4batch_normalization/batchnorm/ReadVariableOp:value:0'batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:³
#batch_normalization/batchnorm/add_1AddV2'batch_normalization/batchnorm/mul_1:z:0%batch_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxp
spatial_dropout1d_5/ShapeShape'batch_normalization/batchnorm/add_1:z:0*
T0*
_output_shapes
:q
'spatial_dropout1d_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)spatial_dropout1d_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)spatial_dropout1d_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!spatial_dropout1d_5/strided_sliceStridedSlice"spatial_dropout1d_5/Shape:output:00spatial_dropout1d_5/strided_slice/stack:output:02spatial_dropout1d_5/strided_slice/stack_1:output:02spatial_dropout1d_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
)spatial_dropout1d_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:u
+spatial_dropout1d_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+spatial_dropout1d_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
#spatial_dropout1d_5/strided_slice_1StridedSlice"spatial_dropout1d_5/Shape:output:02spatial_dropout1d_5/strided_slice_1/stack:output:04spatial_dropout1d_5/strided_slice_1/stack_1:output:04spatial_dropout1d_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
!spatial_dropout1d_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?²
spatial_dropout1d_5/dropout/MulMul'batch_normalization/batchnorm/add_1:z:0*spatial_dropout1d_5/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxt
2spatial_dropout1d_5/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :ý
0spatial_dropout1d_5/dropout/random_uniform/shapePack*spatial_dropout1d_5/strided_slice:output:0;spatial_dropout1d_5/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_5/strided_slice_1:output:0*
N*
T0*
_output_shapes
:È
8spatial_dropout1d_5/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_5/dropout/random_uniform/shape:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*spatial_dropout1d_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ç
(spatial_dropout1d_5/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_5/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_5/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 spatial_dropout1d_5/dropout/CastCast,spatial_dropout1d_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
!spatial_dropout1d_5/dropout/Mul_1Mul#spatial_dropout1d_5/dropout/Mul:z:0$spatial_dropout1d_5/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
4batch_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ï
"batch_normalization_1/moments/meanMean%spatial_dropout1d_5/dropout/Mul_1:z:0=batch_normalization_1/moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(
*batch_normalization_1/moments/StopGradientStopGradient+batch_normalization_1/moments/mean:output:0*
T0*#
_output_shapes
:×
/batch_normalization_1/moments/SquaredDifferenceSquaredDifference%spatial_dropout1d_5/dropout/Mul_1:z:03batch_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
8batch_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       å
&batch_normalization_1/moments/varianceMean3batch_normalization_1/moments/SquaredDifference:z:0Abatch_normalization_1/moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(
%batch_normalization_1/moments/SqueezeSqueeze+batch_normalization_1/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 ¡
'batch_normalization_1/moments/Squeeze_1Squeeze/batch_normalization_1/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 p
+batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¯
4batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ä
)batch_normalization_1/AssignMovingAvg/subSub<batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:»
)batch_normalization_1/AssignMovingAvg/mulMul-batch_normalization_1/AssignMovingAvg/sub:z:04batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
%batch_normalization_1/AssignMovingAvgAssignSubVariableOp=batch_normalization_1_assignmovingavg_readvariableop_resource-batch_normalization_1/AssignMovingAvg/mul:z:05^batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ê
+batch_normalization_1/AssignMovingAvg_1/subSub>batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Á
+batch_normalization_1/AssignMovingAvg_1/mulMul/batch_normalization_1/AssignMovingAvg_1/sub:z:06batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
'batch_normalization_1/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_1_assignmovingavg_1_readvariableop_resource/batch_normalization_1/AssignMovingAvg_1/mul:z:07^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_1/batchnorm/addAddV20batch_normalization_1/moments/Squeeze_1:output:0.batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:}
%batch_normalization_1/batchnorm/RsqrtRsqrt'batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:«
2batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0·
#batch_normalization_1/batchnorm/mulMul)batch_normalization_1/batchnorm/Rsqrt:y:0:batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:³
%batch_normalization_1/batchnorm/mul_1Mul%spatial_dropout1d_5/dropout/Mul_1:z:0'batch_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx«
%batch_normalization_1/batchnorm/mul_2Mul.batch_normalization_1/moments/Squeeze:output:0'batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:£
.batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0³
#batch_normalization_1/batchnorm/subSub6batch_normalization_1/batchnorm/ReadVariableOp:value:0)batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¹
%batch_normalization_1/batchnorm/add_1AddV2)batch_normalization_1/batchnorm/mul_1:z:0'batch_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxe
lstm_5/ShapeShape)batch_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
:d
lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_5/strided_sliceStridedSlicelstm_5/Shape:output:0#lstm_5/strided_slice/stack:output:0%lstm_5/strided_slice/stack_1:output:0%lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :À
lstm_5/zeros/packedPacklstm_5/strided_slice:output:0lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_5/zerosFilllstm_5/zeros/packed:output:0lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :À
lstm_5/zeros_1/packedPacklstm_5/strided_slice:output:0 lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_5/zeros_1Filllstm_5/zeros_1/packed:output:0lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_5/transpose	Transpose)batch_normalization_1/batchnorm/add_1:z:0lstm_5/transpose/perm:output:0*
T0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿR
lstm_5/Shape_1Shapelstm_5/transpose:y:0*
T0*
_output_shapes
:f
lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_5/strided_slice_1StridedSlicelstm_5/Shape_1:output:0%lstm_5/strided_slice_1/stack:output:0'lstm_5/strided_slice_1/stack_1:output:0'lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_5/TensorArrayV2TensorListReserve+lstm_5/TensorArrayV2/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_5/transpose:y:0Elstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_5/strided_slice_2StridedSlicelstm_5/transpose:y:0%lstm_5/strided_slice_2/stack:output:0'lstm_5/strided_slice_2/stack_1:output:0'lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskq
"lstm_5/lstm_cell_7/ones_like/ShapeShapelstm_5/strided_slice_2:output:0*
T0*
_output_shapes
:g
"lstm_5/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?±
lstm_5/lstm_cell_7/ones_likeFill+lstm_5/lstm_cell_7/ones_like/Shape:output:0+lstm_5/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
 lstm_5/lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?ª
lstm_5/lstm_cell_7/dropout/MulMul%lstm_5/lstm_cell_7/ones_like:output:0)lstm_5/lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
 lstm_5/lstm_cell_7/dropout/ShapeShape%lstm_5/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:³
7lstm_5/lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform)lstm_5/lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0n
)lstm_5/lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>à
'lstm_5/lstm_cell_7/dropout/GreaterEqualGreaterEqual@lstm_5/lstm_cell_7/dropout/random_uniform/RandomUniform:output:02lstm_5/lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_5/lstm_cell_7/dropout/CastCast+lstm_5/lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
 lstm_5/lstm_cell_7/dropout/Mul_1Mul"lstm_5/lstm_cell_7/dropout/Mul:z:0#lstm_5/lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
"lstm_5/lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?®
 lstm_5/lstm_cell_7/dropout_1/MulMul%lstm_5/lstm_cell_7/ones_like:output:0+lstm_5/lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"lstm_5/lstm_cell_7/dropout_1/ShapeShape%lstm_5/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:·
9lstm_5/lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0p
+lstm_5/lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>æ
)lstm_5/lstm_cell_7/dropout_1/GreaterEqualGreaterEqualBlstm_5/lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_5/lstm_cell_7/dropout_1/CastCast-lstm_5/lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
"lstm_5/lstm_cell_7/dropout_1/Mul_1Mul$lstm_5/lstm_cell_7/dropout_1/Mul:z:0%lstm_5/lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
"lstm_5/lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?®
 lstm_5/lstm_cell_7/dropout_2/MulMul%lstm_5/lstm_cell_7/ones_like:output:0+lstm_5/lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"lstm_5/lstm_cell_7/dropout_2/ShapeShape%lstm_5/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:·
9lstm_5/lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0p
+lstm_5/lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>æ
)lstm_5/lstm_cell_7/dropout_2/GreaterEqualGreaterEqualBlstm_5/lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_5/lstm_cell_7/dropout_2/CastCast-lstm_5/lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
"lstm_5/lstm_cell_7/dropout_2/Mul_1Mul$lstm_5/lstm_cell_7/dropout_2/Mul:z:0%lstm_5/lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
"lstm_5/lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?®
 lstm_5/lstm_cell_7/dropout_3/MulMul%lstm_5/lstm_cell_7/ones_like:output:0+lstm_5/lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
"lstm_5/lstm_cell_7/dropout_3/ShapeShape%lstm_5/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:·
9lstm_5/lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0p
+lstm_5/lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>æ
)lstm_5/lstm_cell_7/dropout_3/GreaterEqualGreaterEqualBlstm_5/lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_5/lstm_cell_7/dropout_3/CastCast-lstm_5/lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
"lstm_5/lstm_cell_7/dropout_3/Mul_1Mul$lstm_5/lstm_cell_7/dropout_3/Mul:z:0%lstm_5/lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
$lstm_5/lstm_cell_7/ones_like_1/ShapeShapelstm_5/zeros:output:0*
T0*
_output_shapes
:i
$lstm_5/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?·
lstm_5/lstm_cell_7/ones_like_1Fill-lstm_5/lstm_cell_7/ones_like_1/Shape:output:0-lstm_5/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀg
"lstm_5/lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?°
 lstm_5/lstm_cell_7/dropout_4/MulMul'lstm_5/lstm_cell_7/ones_like_1:output:0+lstm_5/lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
"lstm_5/lstm_cell_7/dropout_4/ShapeShape'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:·
9lstm_5/lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0p
+lstm_5/lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>æ
)lstm_5/lstm_cell_7/dropout_4/GreaterEqualGreaterEqualBlstm_5/lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!lstm_5/lstm_cell_7/dropout_4/CastCast-lstm_5/lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ©
"lstm_5/lstm_cell_7/dropout_4/Mul_1Mul$lstm_5/lstm_cell_7/dropout_4/Mul:z:0%lstm_5/lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀg
"lstm_5/lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?°
 lstm_5/lstm_cell_7/dropout_5/MulMul'lstm_5/lstm_cell_7/ones_like_1:output:0+lstm_5/lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
"lstm_5/lstm_cell_7/dropout_5/ShapeShape'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:·
9lstm_5/lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0p
+lstm_5/lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>æ
)lstm_5/lstm_cell_7/dropout_5/GreaterEqualGreaterEqualBlstm_5/lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!lstm_5/lstm_cell_7/dropout_5/CastCast-lstm_5/lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ©
"lstm_5/lstm_cell_7/dropout_5/Mul_1Mul$lstm_5/lstm_cell_7/dropout_5/Mul:z:0%lstm_5/lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀg
"lstm_5/lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?°
 lstm_5/lstm_cell_7/dropout_6/MulMul'lstm_5/lstm_cell_7/ones_like_1:output:0+lstm_5/lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
"lstm_5/lstm_cell_7/dropout_6/ShapeShape'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:·
9lstm_5/lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0p
+lstm_5/lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>æ
)lstm_5/lstm_cell_7/dropout_6/GreaterEqualGreaterEqualBlstm_5/lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!lstm_5/lstm_cell_7/dropout_6/CastCast-lstm_5/lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ©
"lstm_5/lstm_cell_7/dropout_6/Mul_1Mul$lstm_5/lstm_cell_7/dropout_6/Mul:z:0%lstm_5/lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀg
"lstm_5/lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?°
 lstm_5/lstm_cell_7/dropout_7/MulMul'lstm_5/lstm_cell_7/ones_like_1:output:0+lstm_5/lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
"lstm_5/lstm_cell_7/dropout_7/ShapeShape'lstm_5/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:·
9lstm_5/lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform+lstm_5/lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0p
+lstm_5/lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>æ
)lstm_5/lstm_cell_7/dropout_7/GreaterEqualGreaterEqualBlstm_5/lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:04lstm_5/lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!lstm_5/lstm_cell_7/dropout_7/CastCast-lstm_5/lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ©
"lstm_5/lstm_cell_7/dropout_7/Mul_1Mul$lstm_5/lstm_cell_7/dropout_7/Mul:z:0%lstm_5/lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mulMullstm_5/strided_slice_2:output:0$lstm_5/lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_5/lstm_cell_7/mul_1Mullstm_5/strided_slice_2:output:0&lstm_5/lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_5/lstm_cell_7/mul_2Mullstm_5/strided_slice_2:output:0&lstm_5/lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_5/lstm_cell_7/mul_3Mullstm_5/strided_slice_2:output:0&lstm_5/lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_5/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'lstm_5/lstm_cell_7/split/ReadVariableOpReadVariableOp0lstm_5_lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0ß
lstm_5/lstm_cell_7/splitSplit+lstm_5/lstm_cell_7/split/split_dim:output:0/lstm_5/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_5/lstm_cell_7/MatMulMatMullstm_5/lstm_cell_7/mul:z:0!lstm_5/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/MatMul_1MatMullstm_5/lstm_cell_7/mul_1:z:0!lstm_5/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/MatMul_2MatMullstm_5/lstm_cell_7/mul_2:z:0!lstm_5/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/MatMul_3MatMullstm_5/lstm_cell_7/mul_3:z:0!lstm_5/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
$lstm_5/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)lstm_5/lstm_cell_7/split_1/ReadVariableOpReadVariableOp2lstm_5_lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ñ
lstm_5/lstm_cell_7/split_1Split-lstm_5/lstm_cell_7/split_1/split_dim:output:01lstm_5/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split¢
lstm_5/lstm_cell_7/BiasAddBiasAdd#lstm_5/lstm_cell_7/MatMul:product:0#lstm_5/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/lstm_cell_7/BiasAdd_1BiasAdd%lstm_5/lstm_cell_7/MatMul_1:product:0#lstm_5/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/lstm_cell_7/BiasAdd_2BiasAdd%lstm_5/lstm_cell_7/MatMul_2:product:0#lstm_5/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/lstm_cell_7/BiasAdd_3BiasAdd%lstm_5/lstm_cell_7/MatMul_3:product:0#lstm_5/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_4Mullstm_5/zeros:output:0&lstm_5/lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_5Mullstm_5/zeros:output:0&lstm_5/lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_6Mullstm_5/zeros:output:0&lstm_5/lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_7Mullstm_5/zeros:output:0&lstm_5/lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
!lstm_5/lstm_cell_7/ReadVariableOpReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0w
&lstm_5/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(lstm_5/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   y
(lstm_5/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
 lstm_5/lstm_cell_7/strided_sliceStridedSlice)lstm_5/lstm_cell_7/ReadVariableOp:value:0/lstm_5/lstm_cell_7/strided_slice/stack:output:01lstm_5/lstm_cell_7/strided_slice/stack_1:output:01lstm_5/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask¡
lstm_5/lstm_cell_7/MatMul_4MatMullstm_5/lstm_cell_7/mul_4:z:0)lstm_5/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/addAddV2#lstm_5/lstm_cell_7/BiasAdd:output:0%lstm_5/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
lstm_5/lstm_cell_7/SigmoidSigmoidlstm_5/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#lstm_5/lstm_cell_7/ReadVariableOp_1ReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0y
(lstm_5/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*lstm_5/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      {
*lstm_5/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm_5/lstm_cell_7/strided_slice_1StridedSlice+lstm_5/lstm_cell_7/ReadVariableOp_1:value:01lstm_5/lstm_cell_7/strided_slice_1/stack:output:03lstm_5/lstm_cell_7/strided_slice_1/stack_1:output:03lstm_5/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask£
lstm_5/lstm_cell_7/MatMul_5MatMullstm_5/lstm_cell_7/mul_5:z:0+lstm_5/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/lstm_cell_7/add_1AddV2%lstm_5/lstm_cell_7/BiasAdd_1:output:0%lstm_5/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_5/lstm_cell_7/Sigmoid_1Sigmoidlstm_5/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_8Mul lstm_5/lstm_cell_7/Sigmoid_1:y:0lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#lstm_5/lstm_cell_7/ReadVariableOp_2ReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0y
(lstm_5/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      {
*lstm_5/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  {
*lstm_5/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm_5/lstm_cell_7/strided_slice_2StridedSlice+lstm_5/lstm_cell_7/ReadVariableOp_2:value:01lstm_5/lstm_cell_7/strided_slice_2/stack:output:03lstm_5/lstm_cell_7/strided_slice_2/stack_1:output:03lstm_5/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask£
lstm_5/lstm_cell_7/MatMul_6MatMullstm_5/lstm_cell_7/mul_6:z:0+lstm_5/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/lstm_cell_7/add_2AddV2%lstm_5/lstm_cell_7/BiasAdd_2:output:0%lstm_5/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
lstm_5/lstm_cell_7/TanhTanhlstm_5/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_9Mullstm_5/lstm_cell_7/Sigmoid:y:0lstm_5/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/add_3AddV2lstm_5/lstm_cell_7/mul_8:z:0lstm_5/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
#lstm_5/lstm_cell_7/ReadVariableOp_3ReadVariableOp*lstm_5_lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0y
(lstm_5/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  {
*lstm_5/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_5/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ö
"lstm_5/lstm_cell_7/strided_slice_3StridedSlice+lstm_5/lstm_cell_7/ReadVariableOp_3:value:01lstm_5/lstm_cell_7/strided_slice_3/stack:output:03lstm_5/lstm_cell_7/strided_slice_3/stack_1:output:03lstm_5/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask£
lstm_5/lstm_cell_7/MatMul_7MatMullstm_5/lstm_cell_7/mul_7:z:0+lstm_5/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/lstm_cell_7/add_4AddV2%lstm_5/lstm_cell_7/BiasAdd_3:output:0%lstm_5/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_5/lstm_cell_7/Sigmoid_2Sigmoidlstm_5/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
lstm_5/lstm_cell_7/Tanh_1Tanhlstm_5/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/lstm_cell_7/mul_10Mul lstm_5/lstm_cell_7/Sigmoid_2:y:0lstm_5/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀu
$lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Í
lstm_5/TensorArrayV2_1TensorListReserve-lstm_5/TensorArrayV2_1/element_shape:output:0lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Û
lstm_5/whileWhile"lstm_5/while/loop_counter:output:0(lstm_5/while/maximum_iterations:output:0lstm_5/time:output:0lstm_5/TensorArrayV2_1:handle:0lstm_5/zeros:output:0lstm_5/zeros_1:output:0lstm_5/strided_slice_1:output:0>lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_5_lstm_cell_7_split_readvariableop_resource2lstm_5_lstm_cell_7_split_1_readvariableop_resource*lstm_5_lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_5_while_body_112367*$
condR
lstm_5_while_cond_112366*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
7lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ø
)lstm_5/TensorArrayV2Stack/TensorListStackTensorListStacklstm_5/while:output:3@lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿÀ*
element_dtype0o
lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
lstm_5/strided_slice_3StridedSlice2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_5/strided_slice_3/stack:output:0'lstm_5/strided_slice_3/stack_1:output:0'lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maskl
lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
lstm_5/transpose_1	Transpose2lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÀb
lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ~
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Å
"batch_normalization_2/moments/meanMeanlstm_5/strided_slice_3:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	À*
	keep_dims(
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	ÀÍ
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferencelstm_5/strided_slice_3:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: á
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	À*
	keep_dims(
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:À*
squeeze_dims
  
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:À*
squeeze_dims
 p
+batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<¯
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes	
:À*
dtype0Ä
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes	
:À»
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:À
%batch_normalization_2/AssignMovingAvgAssignSubVariableOp=batch_normalization_2_assignmovingavg_readvariableop_resource-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<³
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:À*
dtype0Ê
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:ÀÁ
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:À
'batch_normalization_2/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_2_assignmovingavg_1_readvariableop_resource/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:´
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:À}
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:À«
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:À*
dtype0·
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:À©
%batch_normalization_2/batchnorm/mul_1Mullstm_5/strided_slice_3:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ«
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:À£
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:À*
dtype0³
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Àµ
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes
:	À*
dtype0
dense_15/MatMulMatMul)batch_normalization_2/batchnorm/add_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_15/SoftmaxSoftmaxdense_15/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_15/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

NoOpNoOp$^batch_normalization/AssignMovingAvg3^batch_normalization/AssignMovingAvg/ReadVariableOp&^batch_normalization/AssignMovingAvg_15^batch_normalization/AssignMovingAvg_1/ReadVariableOp-^batch_normalization/batchnorm/ReadVariableOp1^batch_normalization/batchnorm/mul/ReadVariableOp&^batch_normalization_1/AssignMovingAvg5^batch_normalization_1/AssignMovingAvg/ReadVariableOp(^batch_normalization_1/AssignMovingAvg_17^batch_normalization_1/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_1/batchnorm/ReadVariableOp3^batch_normalization_1/batchnorm/mul/ReadVariableOp&^batch_normalization_2/AssignMovingAvg5^batch_normalization_2/AssignMovingAvg/ReadVariableOp(^batch_normalization_2/AssignMovingAvg_17^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp^embedding_8/embedding_lookup"^lstm_5/lstm_cell_7/ReadVariableOp$^lstm_5/lstm_cell_7/ReadVariableOp_1$^lstm_5/lstm_cell_7/ReadVariableOp_2$^lstm_5/lstm_cell_7/ReadVariableOp_3(^lstm_5/lstm_cell_7/split/ReadVariableOp*^lstm_5/lstm_cell_7/split_1/ReadVariableOp^lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 2J
#batch_normalization/AssignMovingAvg#batch_normalization/AssignMovingAvg2h
2batch_normalization/AssignMovingAvg/ReadVariableOp2batch_normalization/AssignMovingAvg/ReadVariableOp2N
%batch_normalization/AssignMovingAvg_1%batch_normalization/AssignMovingAvg_12l
4batch_normalization/AssignMovingAvg_1/ReadVariableOp4batch_normalization/AssignMovingAvg_1/ReadVariableOp2\
,batch_normalization/batchnorm/ReadVariableOp,batch_normalization/batchnorm/ReadVariableOp2d
0batch_normalization/batchnorm/mul/ReadVariableOp0batch_normalization/batchnorm/mul/ReadVariableOp2N
%batch_normalization_1/AssignMovingAvg%batch_normalization_1/AssignMovingAvg2l
4batch_normalization_1/AssignMovingAvg/ReadVariableOp4batch_normalization_1/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_1/AssignMovingAvg_1'batch_normalization_1/AssignMovingAvg_12p
6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp6batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_1/batchnorm/ReadVariableOp.batch_normalization_1/batchnorm/ReadVariableOp2h
2batch_normalization_1/batchnorm/mul/ReadVariableOp2batch_normalization_1/batchnorm/mul/ReadVariableOp2N
%batch_normalization_2/AssignMovingAvg%batch_normalization_2/AssignMovingAvg2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_2/AssignMovingAvg_1'batch_normalization_2/AssignMovingAvg_12p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2<
embedding_8/embedding_lookupembedding_8/embedding_lookup2F
!lstm_5/lstm_cell_7/ReadVariableOp!lstm_5/lstm_cell_7/ReadVariableOp2J
#lstm_5/lstm_cell_7/ReadVariableOp_1#lstm_5/lstm_cell_7/ReadVariableOp_12J
#lstm_5/lstm_cell_7/ReadVariableOp_2#lstm_5/lstm_cell_7/ReadVariableOp_22J
#lstm_5/lstm_cell_7/ReadVariableOp_3#lstm_5/lstm_cell_7/ReadVariableOp_32R
'lstm_5/lstm_cell_7/split/ReadVariableOp'lstm_5/lstm_cell_7/split/ReadVariableOp2V
)lstm_5/lstm_cell_7/split_1/ReadVariableOp)lstm_5/lstm_cell_7/split_1/ReadVariableOp2
lstm_5/whilelstm_5/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
&
ì
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109958

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       £
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ï"
à
while_body_110221
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_7_110245_0:
)
while_lstm_cell_7_110247_0:	.
while_lstm_cell_7_110249_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_7_110245:
'
while_lstm_cell_7_110247:	,
while_lstm_cell_7_110249:
À¢)while/lstm_cell_7/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0±
)while/lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_7_110245_0while_lstm_cell_7_110247_0while_lstm_cell_7_110249_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110207Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_7/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_7/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/Identity_5Identity2while/lstm_cell_7/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx

while/NoOpNoOp*^while/lstm_cell_7/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_7_110245while_lstm_cell_7_110245_0"6
while_lstm_cell_7_110247while_lstm_cell_7_110247_0"6
while_lstm_cell_7_110249while_lstm_cell_7_110249_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2V
)while/lstm_cell_7/StatefulPartitionedCall)while/lstm_cell_7/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
&
ì
O__inference_batch_normalization_layer_call_and_return_conditional_losses_112742

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       £
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
u
	
while_body_110834
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_7_split_readvariableop_resource_0:
B
3while_lstm_cell_7_split_1_readvariableop_resource_0:	?
+while_lstm_cell_7_readvariableop_resource_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_7_split_readvariableop_resource:
@
1while_lstm_cell_7_split_1_readvariableop_resource:	=
)while_lstm_cell_7_readvariableop_resource:
À¢ while/lstm_cell_7/ReadVariableOp¢"while/lstm_cell_7/ReadVariableOp_1¢"while/lstm_cell_7/ReadVariableOp_2¢"while/lstm_cell_7/ReadVariableOp_3¢&while/lstm_cell_7/split/ReadVariableOp¢(while/lstm_cell_7/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!while/lstm_cell_7/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
while/lstm_cell_7/ones_likeFill*while/lstm_cell_7/ones_like/Shape:output:0*while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
#while/lstm_cell_7/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_7/ones_like_1Fill,while/lstm_cell_7/ones_like_1/Shape:output:0,while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ§
while/lstm_cell_7/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_7/split/ReadVariableOpReadVariableOp1while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ü
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0.while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
while/lstm_cell_7/MatMulMatMulwhile/lstm_cell_7/mul:z:0 while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_1MatMulwhile/lstm_cell_7/mul_1:z:0 while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_2MatMulwhile/lstm_cell_7/mul_2:z:0 while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_3MatMulwhile/lstm_cell_7/mul_3:z:0 while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
#while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_7/split_1Split,while/lstm_cell_7/split_1/split_dim:output:00while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
while/lstm_cell_7/BiasAddBiasAdd"while/lstm_cell_7/MatMul:product:0"while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_1BiasAdd$while/lstm_cell_7/MatMul_1:product:0"while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_2BiasAdd$while/lstm_cell_7/MatMul_2:product:0"while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_3BiasAdd$while/lstm_cell_7/MatMul_3:product:0"while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_4Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_5Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_6Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_7Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/ReadVariableOpReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0v
%while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   x
'while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_7/strided_sliceStridedSlice(while/lstm_cell_7/ReadVariableOp:value:0.while/lstm_cell_7/strided_slice/stack:output:00while/lstm_cell_7/strided_slice/stack_1:output:00while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
while/lstm_cell_7/MatMul_4MatMulwhile/lstm_cell_7/mul_4:z:0(while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/BiasAdd:output:0$while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
while/lstm_cell_7/SigmoidSigmoidwhile/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_1ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   z
)while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_1StridedSlice*while/lstm_cell_7/ReadVariableOp_1:value:00while/lstm_cell_7/strided_slice_1/stack:output:02while/lstm_cell_7/strided_slice_1/stack_1:output:02while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_5MatMulwhile/lstm_cell_7/mul_5:z:0*while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_1AddV2$while/lstm_cell_7/BiasAdd_1:output:0$while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_1Sigmoidwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_8Mulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_2ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_2StridedSlice*while/lstm_cell_7/ReadVariableOp_2:value:00while/lstm_cell_7/strided_slice_2/stack:output:02while/lstm_cell_7/strided_slice_2/stack_1:output:02while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_6MatMulwhile/lstm_cell_7/mul_6:z:0*while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_2AddV2$while/lstm_cell_7/BiasAdd_2:output:0$while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
while/lstm_cell_7/TanhTanhwhile/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_9Mulwhile/lstm_cell_7/Sigmoid:y:0while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_3AddV2while/lstm_cell_7/mul_8:z:0while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_3ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_3StridedSlice*while/lstm_cell_7/ReadVariableOp_3:value:00while/lstm_cell_7/strided_slice_3/stack:output:02while/lstm_cell_7/strided_slice_3/stack_1:output:02while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_7MatMulwhile/lstm_cell_7/mul_7:z:0*while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_4AddV2$while/lstm_cell_7/BiasAdd_3:output:0$while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_2Sigmoidwhile/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
while/lstm_cell_7/Tanh_1Tanhwhile/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_10Mulwhile/lstm_cell_7/Sigmoid_2:y:0while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_7/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
while/Identity_5Identitywhile/lstm_cell_7/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ²

while/NoOpNoOp!^while/lstm_cell_7/ReadVariableOp#^while/lstm_cell_7/ReadVariableOp_1#^while/lstm_cell_7/ReadVariableOp_2#^while/lstm_cell_7/ReadVariableOp_3'^while/lstm_cell_7/split/ReadVariableOp)^while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_7_readvariableop_resource+while_lstm_cell_7_readvariableop_resource_0"h
1while_lstm_cell_7_split_1_readvariableop_resource3while_lstm_cell_7_split_1_readvariableop_resource_0"d
/while_lstm_cell_7_split_readvariableop_resource1while_lstm_cell_7_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2D
 while/lstm_cell_7/ReadVariableOp while/lstm_cell_7/ReadVariableOp2H
"while/lstm_cell_7/ReadVariableOp_1"while/lstm_cell_7/ReadVariableOp_12H
"while/lstm_cell_7/ReadVariableOp_2"while/lstm_cell_7/ReadVariableOp_22H
"while/lstm_cell_7/ReadVariableOp_3"while/lstm_cell_7/ReadVariableOp_32P
&while/lstm_cell_7/split/ReadVariableOp&while/lstm_cell_7/split/ReadVariableOp2T
(while/lstm_cell_7/split_1/ReadVariableOp(while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
&
î
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110079

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       £
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
ß
B__inference_lstm_5_layer_call_and_return_conditional_losses_110968

inputs=
)lstm_cell_7_split_readvariableop_resource:
:
+lstm_cell_7_split_1_readvariableop_resource:	7
#lstm_cell_7_readvariableop_resource:
À
identity¢lstm_cell_7/ReadVariableOp¢lstm_cell_7/ReadVariableOp_1¢lstm_cell_7/ReadVariableOp_2¢lstm_cell_7/ReadVariableOp_3¢ lstm_cell_7/split/ReadVariableOp¢"lstm_cell_7/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskc
lstm_cell_7/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_7/ones_likeFill$lstm_cell_7/ones_like/Shape:output:0$lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell_7/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_7/ones_like_1Fill&lstm_cell_7/ones_like_1/Shape:output:0&lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mulMulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_1Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_2Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_3Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_7/split/ReadVariableOpReadVariableOp)lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0Ê
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0(lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_cell_7/MatMulMatMullstm_cell_7/mul:z:0lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_1MatMullstm_cell_7/mul_1:z:0lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_2MatMullstm_cell_7/mul_2:z:0lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_3MatMullstm_cell_7/mul_3:z:0lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_7/split_1/ReadVariableOpReadVariableOp+lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_7/split_1Split&lstm_cell_7/split_1/split_dim:output:0*lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
lstm_cell_7/BiasAddBiasAddlstm_cell_7/MatMul:product:0lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_1BiasAddlstm_cell_7/MatMul_1:product:0lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_2BiasAddlstm_cell_7/MatMul_2:product:0lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_3BiasAddlstm_cell_7/MatMul_3:product:0lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_4Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_5Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_6Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_7Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOpReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0p
lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   r
!lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_7/strided_sliceStridedSlice"lstm_cell_7/ReadVariableOp:value:0(lstm_cell_7/strided_slice/stack:output:0*lstm_cell_7/strided_slice/stack_1:output:0*lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_4MatMullstm_cell_7/mul_4:z:0"lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/addAddV2lstm_cell_7/BiasAdd:output:0lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
lstm_cell_7/SigmoidSigmoidlstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_1ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   t
#lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_1StridedSlice$lstm_cell_7/ReadVariableOp_1:value:0*lstm_cell_7/strided_slice_1/stack:output:0,lstm_cell_7/strided_slice_1/stack_1:output:0,lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_5MatMullstm_cell_7/mul_5:z:0$lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_1AddV2lstm_cell_7/BiasAdd_1:output:0lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_cell_7/mul_8Mullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_2ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_2StridedSlice$lstm_cell_7/ReadVariableOp_2:value:0*lstm_cell_7/strided_slice_2/stack:output:0,lstm_cell_7/strided_slice_2/stack_1:output:0,lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_6MatMullstm_cell_7/mul_6:z:0$lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_2AddV2lstm_cell_7/BiasAdd_2:output:0lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
lstm_cell_7/TanhTanhlstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀz
lstm_cell_7/mul_9Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
lstm_cell_7/add_3AddV2lstm_cell_7/mul_8:z:0lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_3ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_3StridedSlice$lstm_cell_7/ReadVariableOp_3:value:0*lstm_cell_7/strided_slice_3/stack:output:0,lstm_cell_7/strided_slice_3/stack_1:output:0,lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_7MatMullstm_cell_7/mul_7:z:0$lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_4AddV2lstm_cell_7/BiasAdd_3:output:0lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀd
lstm_cell_7/Tanh_1Tanhlstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mul_10Mullstm_cell_7/Sigmoid_2:y:0lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_7_split_readvariableop_resource+lstm_cell_7_split_1_readvariableop_resource#lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110834*
condR
while_cond_110833*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^lstm_cell_7/ReadVariableOp^lstm_cell_7/ReadVariableOp_1^lstm_cell_7/ReadVariableOp_2^lstm_cell_7/ReadVariableOp_3!^lstm_cell_7/split/ReadVariableOp#^lstm_cell_7/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿx: : : 28
lstm_cell_7/ReadVariableOplstm_cell_7/ReadVariableOp2<
lstm_cell_7/ReadVariableOp_1lstm_cell_7/ReadVariableOp_12<
lstm_cell_7/ReadVariableOp_2lstm_cell_7/ReadVariableOp_22<
lstm_cell_7/ReadVariableOp_3lstm_cell_7/ReadVariableOp_32D
 lstm_cell_7/split/ReadVariableOp lstm_cell_7/split/ReadVariableOp2H
"lstm_cell_7/split_1/ReadVariableOp"lstm_cell_7/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
¹
Ã
while_cond_110525
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110525___redundant_placeholder04
0while_while_cond_110525___redundant_placeholder14
0while_while_cond_110525___redundant_placeholder24
0while_while_cond_110525___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
8

B__inference_lstm_5_layer_call_and_return_conditional_losses_110290

inputs&
lstm_cell_7_110208:
!
lstm_cell_7_110210:	&
lstm_cell_7_110212:
À
identity¢#lstm_cell_7/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskó
#lstm_cell_7/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_7_110208lstm_cell_7_110210lstm_cell_7_110212*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110207n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_7_110208lstm_cell_7_110210lstm_cell_7_110212*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_110221*
condR
while_cond_110220*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
NoOpNoOp$^lstm_cell_7/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_7/StatefulPartitionedCall#lstm_cell_7/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ª
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110467

inputs

states
states_11
split_readvariableop_resource:
.
split_1_readvariableop_resource:	+
readvariableop_resource:
À
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?q
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?u
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?u
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿT
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?u
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿG
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀT
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?w
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0]
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>­
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀt
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀX
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype0¦
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_namestates
¯%
î
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_114211

inputs6
'assignmovingavg_readvariableop_resource:	À8
)assignmovingavg_1_readvariableop_resource:	À4
%batchnorm_mul_readvariableop_resource:	À0
!batchnorm_readvariableop_resource:	À
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	À*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	À
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	À*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:À*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:À*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:À*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:Ày
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:À¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:À*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:À
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:À´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ÀQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:À
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:À*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Àd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Àw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:À*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Às
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
¹
Ã
while_cond_110833
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110833___redundant_placeholder04
0while_while_cond_110833___redundant_placeholder14
0while_while_cond_110833___redundant_placeholder24
0while_while_cond_110833___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
æD
¬
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_114347

inputs
states_0
states_11
split_readvariableop_resource:
.
split_1_readvariableop_resource:	+
readvariableop_resource:
À
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?x
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿI
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:V
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?~
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀY
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :t
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype0¦
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split\
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_spliti
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀh
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskh
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀN
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀX
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀJ
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀV
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀW
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
À*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskj
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀR
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀL
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀZ
IdentityIdentity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ\

Identity_1Identity
mul_10:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ[

Identity_2Identity	add_3:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÀ
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/1
¢
´
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112825

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
Ã
while_cond_113318
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113318___redundant_placeholder04
0while_while_cond_113318___redundant_placeholder14
0while_while_cond_113318___redundant_placeholder24
0while_while_cond_113318___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
¬È
ß
B__inference_lstm_5_layer_call_and_return_conditional_losses_114131

inputs=
)lstm_cell_7_split_readvariableop_resource:
:
+lstm_cell_7_split_1_readvariableop_resource:	7
#lstm_cell_7_readvariableop_resource:
À
identity¢lstm_cell_7/ReadVariableOp¢lstm_cell_7/ReadVariableOp_1¢lstm_cell_7/ReadVariableOp_2¢lstm_cell_7/ReadVariableOp_3¢ lstm_cell_7/split/ReadVariableOp¢"lstm_cell_7/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskc
lstm_cell_7/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_7/ones_likeFill$lstm_cell_7/ones_like/Shape:output:0$lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout/MulMullstm_cell_7/ones_like:output:0"lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_7/dropout/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:¥
0lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ë
 lstm_cell_7/dropout/GreaterEqualGreaterEqual9lstm_cell_7/dropout/random_uniform/RandomUniform:output:0+lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout/CastCast$lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout/Mul_1Mullstm_cell_7/dropout/Mul:z:0lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_1/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_1/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_1/GreaterEqualGreaterEqual;lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_1/CastCast&lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_1/Mul_1Mullstm_cell_7/dropout_1/Mul:z:0lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_2/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_2/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_2/GreaterEqualGreaterEqual;lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_2/CastCast&lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_2/Mul_1Mullstm_cell_7/dropout_2/Mul:z:0lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_3/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_3/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_3/GreaterEqualGreaterEqual;lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_3/CastCast&lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_3/Mul_1Mullstm_cell_7/dropout_3/Mul:z:0lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell_7/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_7/ones_like_1Fill&lstm_cell_7/ones_like_1/Shape:output:0&lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_4/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_4/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_4/GreaterEqualGreaterEqual;lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_4/CastCast&lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_4/Mul_1Mullstm_cell_7/dropout_4/Mul:z:0lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_5/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_5/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_5/GreaterEqualGreaterEqual;lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_5/CastCast&lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_5/Mul_1Mullstm_cell_7/dropout_5/Mul:z:0lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_6/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_6/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_6/GreaterEqualGreaterEqual;lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_6/CastCast&lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_6/Mul_1Mullstm_cell_7/dropout_6/Mul:z:0lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_7/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_7/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_7/GreaterEqualGreaterEqual;lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_7/CastCast&lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_7/Mul_1Mullstm_cell_7/dropout_7/Mul:z:0lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mulMulstrided_slice_2:output:0lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_1Mulstrided_slice_2:output:0lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_2Mulstrided_slice_2:output:0lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_3Mulstrided_slice_2:output:0lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_7/split/ReadVariableOpReadVariableOp)lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0Ê
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0(lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_cell_7/MatMulMatMullstm_cell_7/mul:z:0lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_1MatMullstm_cell_7/mul_1:z:0lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_2MatMullstm_cell_7/mul_2:z:0lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_3MatMullstm_cell_7/mul_3:z:0lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_7/split_1/ReadVariableOpReadVariableOp+lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_7/split_1Split&lstm_cell_7/split_1/split_dim:output:0*lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
lstm_cell_7/BiasAddBiasAddlstm_cell_7/MatMul:product:0lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_1BiasAddlstm_cell_7/MatMul_1:product:0lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_2BiasAddlstm_cell_7/MatMul_2:product:0lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_3BiasAddlstm_cell_7/MatMul_3:product:0lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_4Mulzeros:output:0lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_5Mulzeros:output:0lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_6Mulzeros:output:0lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_7Mulzeros:output:0lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOpReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0p
lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   r
!lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_7/strided_sliceStridedSlice"lstm_cell_7/ReadVariableOp:value:0(lstm_cell_7/strided_slice/stack:output:0*lstm_cell_7/strided_slice/stack_1:output:0*lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_4MatMullstm_cell_7/mul_4:z:0"lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/addAddV2lstm_cell_7/BiasAdd:output:0lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
lstm_cell_7/SigmoidSigmoidlstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_1ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   t
#lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_1StridedSlice$lstm_cell_7/ReadVariableOp_1:value:0*lstm_cell_7/strided_slice_1/stack:output:0,lstm_cell_7/strided_slice_1/stack_1:output:0,lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_5MatMullstm_cell_7/mul_5:z:0$lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_1AddV2lstm_cell_7/BiasAdd_1:output:0lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_cell_7/mul_8Mullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_2ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_2StridedSlice$lstm_cell_7/ReadVariableOp_2:value:0*lstm_cell_7/strided_slice_2/stack:output:0,lstm_cell_7/strided_slice_2/stack_1:output:0,lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_6MatMullstm_cell_7/mul_6:z:0$lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_2AddV2lstm_cell_7/BiasAdd_2:output:0lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
lstm_cell_7/TanhTanhlstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀz
lstm_cell_7/mul_9Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
lstm_cell_7/add_3AddV2lstm_cell_7/mul_8:z:0lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_3ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_3StridedSlice$lstm_cell_7/ReadVariableOp_3:value:0*lstm_cell_7/strided_slice_3/stack:output:0,lstm_cell_7/strided_slice_3/stack_1:output:0,lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_7MatMullstm_cell_7/mul_7:z:0$lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_4AddV2lstm_cell_7/BiasAdd_3:output:0lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀd
lstm_cell_7/Tanh_1Tanhlstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mul_10Mullstm_cell_7/Sigmoid_2:y:0lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_7_split_readvariableop_resource+lstm_cell_7_split_1_readvariableop_resource#lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113933*
condR
while_cond_113932*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^lstm_cell_7/ReadVariableOp^lstm_cell_7/ReadVariableOp_1^lstm_cell_7/ReadVariableOp_2^lstm_cell_7/ReadVariableOp_3!^lstm_cell_7/split/ReadVariableOp#^lstm_cell_7/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿx: : : 28
lstm_cell_7/ReadVariableOplstm_cell_7/ReadVariableOp2<
lstm_cell_7/ReadVariableOp_1lstm_cell_7/ReadVariableOp_12<
lstm_cell_7/ReadVariableOp_2lstm_cell_7/ReadVariableOp_22<
lstm_cell_7/ReadVariableOp_3lstm_cell_7/ReadVariableOp_32D
 lstm_cell_7/split/ReadVariableOp lstm_cell_7/split/ReadVariableOp2H
"lstm_cell_7/split_1/ReadVariableOp"lstm_cell_7/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
÷Â
	
while_body_111238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_7_split_readvariableop_resource_0:
B
3while_lstm_cell_7_split_1_readvariableop_resource_0:	?
+while_lstm_cell_7_readvariableop_resource_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_7_split_readvariableop_resource:
@
1while_lstm_cell_7_split_1_readvariableop_resource:	=
)while_lstm_cell_7_readvariableop_resource:
À¢ while/lstm_cell_7/ReadVariableOp¢"while/lstm_cell_7/ReadVariableOp_1¢"while/lstm_cell_7/ReadVariableOp_2¢"while/lstm_cell_7/ReadVariableOp_3¢&while/lstm_cell_7/split/ReadVariableOp¢(while/lstm_cell_7/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!while/lstm_cell_7/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
while/lstm_cell_7/ones_likeFill*while/lstm_cell_7/ones_like/Shape:output:0*while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?§
while/lstm_cell_7/dropout/MulMul$while/lstm_cell_7/ones_like:output:0(while/lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_7/dropout/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:±
6while/lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0m
(while/lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ý
&while/lstm_cell_7/dropout/GreaterEqualGreaterEqual?while/lstm_cell_7/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_7/dropout/CastCast*while/lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_7/dropout/Mul_1Mul!while/lstm_cell_7/dropout/Mul:z:0"while/lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_1/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_1/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_1/CastCast,while/lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_1/Mul_1Mul#while/lstm_cell_7/dropout_1/Mul:z:0$while/lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_2/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_2/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_2/CastCast,while/lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_2/Mul_1Mul#while/lstm_cell_7/dropout_2/Mul:z:0$while/lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_3/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_3/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_3/CastCast,while/lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_3/Mul_1Mul#while/lstm_cell_7/dropout_3/Mul:z:0$while/lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
#while/lstm_cell_7/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_7/ones_like_1Fill,while/lstm_cell_7/ones_like_1/Shape:output:0,while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_4/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_4/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_4/CastCast,while/lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_4/Mul_1Mul#while/lstm_cell_7/dropout_4/Mul:z:0$while/lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_5/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_5/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_5/CastCast,while/lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_5/Mul_1Mul#while/lstm_cell_7/dropout_5/Mul:z:0$while/lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_6/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_6/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_6/CastCast,while/lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_6/Mul_1Mul#while/lstm_cell_7/dropout_6/Mul:z:0$while/lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_7/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_7/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_7/CastCast,while/lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_7/Mul_1Mul#while/lstm_cell_7/dropout_7/Mul:z:0$while/lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
while/lstm_cell_7/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_7/split/ReadVariableOpReadVariableOp1while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ü
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0.while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
while/lstm_cell_7/MatMulMatMulwhile/lstm_cell_7/mul:z:0 while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_1MatMulwhile/lstm_cell_7/mul_1:z:0 while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_2MatMulwhile/lstm_cell_7/mul_2:z:0 while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_3MatMulwhile/lstm_cell_7/mul_3:z:0 while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
#while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_7/split_1Split,while/lstm_cell_7/split_1/split_dim:output:00while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
while/lstm_cell_7/BiasAddBiasAdd"while/lstm_cell_7/MatMul:product:0"while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_1BiasAdd$while/lstm_cell_7/MatMul_1:product:0"while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_2BiasAdd$while/lstm_cell_7/MatMul_2:product:0"while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_3BiasAdd$while/lstm_cell_7/MatMul_3:product:0"while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_4Mulwhile_placeholder_2%while/lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_5Mulwhile_placeholder_2%while/lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_6Mulwhile_placeholder_2%while/lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_7Mulwhile_placeholder_2%while/lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/ReadVariableOpReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0v
%while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   x
'while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_7/strided_sliceStridedSlice(while/lstm_cell_7/ReadVariableOp:value:0.while/lstm_cell_7/strided_slice/stack:output:00while/lstm_cell_7/strided_slice/stack_1:output:00while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
while/lstm_cell_7/MatMul_4MatMulwhile/lstm_cell_7/mul_4:z:0(while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/BiasAdd:output:0$while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
while/lstm_cell_7/SigmoidSigmoidwhile/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_1ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   z
)while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_1StridedSlice*while/lstm_cell_7/ReadVariableOp_1:value:00while/lstm_cell_7/strided_slice_1/stack:output:02while/lstm_cell_7/strided_slice_1/stack_1:output:02while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_5MatMulwhile/lstm_cell_7/mul_5:z:0*while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_1AddV2$while/lstm_cell_7/BiasAdd_1:output:0$while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_1Sigmoidwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_8Mulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_2ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_2StridedSlice*while/lstm_cell_7/ReadVariableOp_2:value:00while/lstm_cell_7/strided_slice_2/stack:output:02while/lstm_cell_7/strided_slice_2/stack_1:output:02while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_6MatMulwhile/lstm_cell_7/mul_6:z:0*while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_2AddV2$while/lstm_cell_7/BiasAdd_2:output:0$while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
while/lstm_cell_7/TanhTanhwhile/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_9Mulwhile/lstm_cell_7/Sigmoid:y:0while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_3AddV2while/lstm_cell_7/mul_8:z:0while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_3ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_3StridedSlice*while/lstm_cell_7/ReadVariableOp_3:value:00while/lstm_cell_7/strided_slice_3/stack:output:02while/lstm_cell_7/strided_slice_3/stack_1:output:02while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_7MatMulwhile/lstm_cell_7/mul_7:z:0*while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_4AddV2$while/lstm_cell_7/BiasAdd_3:output:0$while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_2Sigmoidwhile/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
while/lstm_cell_7/Tanh_1Tanhwhile/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_10Mulwhile/lstm_cell_7/Sigmoid_2:y:0while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_7/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
while/Identity_5Identitywhile/lstm_cell_7/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ²

while/NoOpNoOp!^while/lstm_cell_7/ReadVariableOp#^while/lstm_cell_7/ReadVariableOp_1#^while/lstm_cell_7/ReadVariableOp_2#^while/lstm_cell_7/ReadVariableOp_3'^while/lstm_cell_7/split/ReadVariableOp)^while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_7_readvariableop_resource+while_lstm_cell_7_readvariableop_resource_0"h
1while_lstm_cell_7_split_1_readvariableop_resource3while_lstm_cell_7_split_1_readvariableop_resource_0"d
/while_lstm_cell_7_split_readvariableop_resource1while_lstm_cell_7_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2D
 while/lstm_cell_7/ReadVariableOp while/lstm_cell_7/ReadVariableOp2H
"while/lstm_cell_7/ReadVariableOp_1"while/lstm_cell_7/ReadVariableOp_12H
"while/lstm_cell_7/ReadVariableOp_2"while/lstm_cell_7/ReadVariableOp_22H
"while/lstm_cell_7/ReadVariableOp_3"while/lstm_cell_7/ReadVariableOp_32P
&while/lstm_cell_7/split/ReadVariableOp&while/lstm_cell_7/split/ReadVariableOp2T
(while/lstm_cell_7/split_1/ReadVariableOp(while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
¢
´
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_110032

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
á
B__inference_lstm_5_layer_call_and_return_conditional_losses_113146
inputs_0=
)lstm_cell_7_split_readvariableop_resource:
:
+lstm_cell_7_split_1_readvariableop_resource:	7
#lstm_cell_7_readvariableop_resource:
À
identity¢lstm_cell_7/ReadVariableOp¢lstm_cell_7/ReadVariableOp_1¢lstm_cell_7/ReadVariableOp_2¢lstm_cell_7/ReadVariableOp_3¢ lstm_cell_7/split/ReadVariableOp¢"lstm_cell_7/split_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskc
lstm_cell_7/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_7/ones_likeFill$lstm_cell_7/ones_like/Shape:output:0$lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell_7/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_7/ones_like_1Fill&lstm_cell_7/ones_like_1/Shape:output:0&lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mulMulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_1Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_2Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_3Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_7/split/ReadVariableOpReadVariableOp)lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0Ê
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0(lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_cell_7/MatMulMatMullstm_cell_7/mul:z:0lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_1MatMullstm_cell_7/mul_1:z:0lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_2MatMullstm_cell_7/mul_2:z:0lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_3MatMullstm_cell_7/mul_3:z:0lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_7/split_1/ReadVariableOpReadVariableOp+lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_7/split_1Split&lstm_cell_7/split_1/split_dim:output:0*lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
lstm_cell_7/BiasAddBiasAddlstm_cell_7/MatMul:product:0lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_1BiasAddlstm_cell_7/MatMul_1:product:0lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_2BiasAddlstm_cell_7/MatMul_2:product:0lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_3BiasAddlstm_cell_7/MatMul_3:product:0lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_4Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_5Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_6Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_7Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOpReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0p
lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   r
!lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_7/strided_sliceStridedSlice"lstm_cell_7/ReadVariableOp:value:0(lstm_cell_7/strided_slice/stack:output:0*lstm_cell_7/strided_slice/stack_1:output:0*lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_4MatMullstm_cell_7/mul_4:z:0"lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/addAddV2lstm_cell_7/BiasAdd:output:0lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
lstm_cell_7/SigmoidSigmoidlstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_1ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   t
#lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_1StridedSlice$lstm_cell_7/ReadVariableOp_1:value:0*lstm_cell_7/strided_slice_1/stack:output:0,lstm_cell_7/strided_slice_1/stack_1:output:0,lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_5MatMullstm_cell_7/mul_5:z:0$lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_1AddV2lstm_cell_7/BiasAdd_1:output:0lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_cell_7/mul_8Mullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_2ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_2StridedSlice$lstm_cell_7/ReadVariableOp_2:value:0*lstm_cell_7/strided_slice_2/stack:output:0,lstm_cell_7/strided_slice_2/stack_1:output:0,lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_6MatMullstm_cell_7/mul_6:z:0$lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_2AddV2lstm_cell_7/BiasAdd_2:output:0lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
lstm_cell_7/TanhTanhlstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀz
lstm_cell_7/mul_9Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
lstm_cell_7/add_3AddV2lstm_cell_7/mul_8:z:0lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_3ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_3StridedSlice$lstm_cell_7/ReadVariableOp_3:value:0*lstm_cell_7/strided_slice_3/stack:output:0,lstm_cell_7/strided_slice_3/stack_1:output:0,lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_7MatMullstm_cell_7/mul_7:z:0$lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_4AddV2lstm_cell_7/BiasAdd_3:output:0lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀd
lstm_cell_7/Tanh_1Tanhlstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mul_10Mullstm_cell_7/Sigmoid_2:y:0lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_7_split_readvariableop_resource+lstm_cell_7_split_1_readvariableop_resource#lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113012*
condR
while_cond_113011*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^lstm_cell_7/ReadVariableOp^lstm_cell_7/ReadVariableOp_1^lstm_cell_7/ReadVariableOp_2^lstm_cell_7/ReadVariableOp_3!^lstm_cell_7/split/ReadVariableOp#^lstm_cell_7/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 28
lstm_cell_7/ReadVariableOplstm_cell_7/ReadVariableOp2<
lstm_cell_7/ReadVariableOp_1lstm_cell_7/ReadVariableOp_12<
lstm_cell_7/ReadVariableOp_2lstm_cell_7/ReadVariableOp_22<
lstm_cell_7/ReadVariableOp_3lstm_cell_7/ReadVariableOp_32D
 lstm_cell_7/split/ReadVariableOp lstm_cell_7/split/ReadVariableOp2H
"lstm_cell_7/split_1/ReadVariableOp"lstm_cell_7/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0

P
4__inference_spatial_dropout1d_5_layer_call_fn_112747

inputs
identityÐ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_109978v
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
&
î
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112859

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(i
moments/StopGradientStopGradientmoments/mean:output:0*
T0*#
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       £
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*#
_output_shapes
:*
	keep_dims(o
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 u
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:q
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿp
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬È
ß
B__inference_lstm_5_layer_call_and_return_conditional_losses_111436

inputs=
)lstm_cell_7_split_readvariableop_resource:
:
+lstm_cell_7_split_1_readvariableop_resource:	7
#lstm_cell_7_readvariableop_resource:
À
identity¢lstm_cell_7/ReadVariableOp¢lstm_cell_7/ReadVariableOp_1¢lstm_cell_7/ReadVariableOp_2¢lstm_cell_7/ReadVariableOp_3¢ lstm_cell_7/split/ReadVariableOp¢"lstm_cell_7/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskc
lstm_cell_7/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_7/ones_likeFill$lstm_cell_7/ones_like/Shape:output:0$lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout/MulMullstm_cell_7/ones_like:output:0"lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_7/dropout/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:¥
0lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ë
 lstm_cell_7/dropout/GreaterEqualGreaterEqual9lstm_cell_7/dropout/random_uniform/RandomUniform:output:0+lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout/CastCast$lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout/Mul_1Mullstm_cell_7/dropout/Mul:z:0lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_1/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_1/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_1/GreaterEqualGreaterEqual;lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_1/CastCast&lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_1/Mul_1Mullstm_cell_7/dropout_1/Mul:z:0lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_2/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_2/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_2/GreaterEqualGreaterEqual;lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_2/CastCast&lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_2/Mul_1Mullstm_cell_7/dropout_2/Mul:z:0lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_3/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_3/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_3/GreaterEqualGreaterEqual;lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_3/CastCast&lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_3/Mul_1Mullstm_cell_7/dropout_3/Mul:z:0lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell_7/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_7/ones_like_1Fill&lstm_cell_7/ones_like_1/Shape:output:0&lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_4/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_4/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_4/GreaterEqualGreaterEqual;lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_4/CastCast&lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_4/Mul_1Mullstm_cell_7/dropout_4/Mul:z:0lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_5/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_5/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_5/GreaterEqualGreaterEqual;lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_5/CastCast&lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_5/Mul_1Mullstm_cell_7/dropout_5/Mul:z:0lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_6/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_6/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_6/GreaterEqualGreaterEqual;lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_6/CastCast&lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_6/Mul_1Mullstm_cell_7/dropout_6/Mul:z:0lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_7/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_7/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_7/GreaterEqualGreaterEqual;lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_7/CastCast&lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_7/Mul_1Mullstm_cell_7/dropout_7/Mul:z:0lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mulMulstrided_slice_2:output:0lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_1Mulstrided_slice_2:output:0lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_2Mulstrided_slice_2:output:0lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_3Mulstrided_slice_2:output:0lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_7/split/ReadVariableOpReadVariableOp)lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0Ê
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0(lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_cell_7/MatMulMatMullstm_cell_7/mul:z:0lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_1MatMullstm_cell_7/mul_1:z:0lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_2MatMullstm_cell_7/mul_2:z:0lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_3MatMullstm_cell_7/mul_3:z:0lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_7/split_1/ReadVariableOpReadVariableOp+lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_7/split_1Split&lstm_cell_7/split_1/split_dim:output:0*lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
lstm_cell_7/BiasAddBiasAddlstm_cell_7/MatMul:product:0lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_1BiasAddlstm_cell_7/MatMul_1:product:0lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_2BiasAddlstm_cell_7/MatMul_2:product:0lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_3BiasAddlstm_cell_7/MatMul_3:product:0lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_4Mulzeros:output:0lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_5Mulzeros:output:0lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_6Mulzeros:output:0lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_7Mulzeros:output:0lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOpReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0p
lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   r
!lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_7/strided_sliceStridedSlice"lstm_cell_7/ReadVariableOp:value:0(lstm_cell_7/strided_slice/stack:output:0*lstm_cell_7/strided_slice/stack_1:output:0*lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_4MatMullstm_cell_7/mul_4:z:0"lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/addAddV2lstm_cell_7/BiasAdd:output:0lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
lstm_cell_7/SigmoidSigmoidlstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_1ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   t
#lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_1StridedSlice$lstm_cell_7/ReadVariableOp_1:value:0*lstm_cell_7/strided_slice_1/stack:output:0,lstm_cell_7/strided_slice_1/stack_1:output:0,lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_5MatMullstm_cell_7/mul_5:z:0$lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_1AddV2lstm_cell_7/BiasAdd_1:output:0lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_cell_7/mul_8Mullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_2ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_2StridedSlice$lstm_cell_7/ReadVariableOp_2:value:0*lstm_cell_7/strided_slice_2/stack:output:0,lstm_cell_7/strided_slice_2/stack_1:output:0,lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_6MatMullstm_cell_7/mul_6:z:0$lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_2AddV2lstm_cell_7/BiasAdd_2:output:0lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
lstm_cell_7/TanhTanhlstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀz
lstm_cell_7/mul_9Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
lstm_cell_7/add_3AddV2lstm_cell_7/mul_8:z:0lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_3ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_3StridedSlice$lstm_cell_7/ReadVariableOp_3:value:0*lstm_cell_7/strided_slice_3/stack:output:0,lstm_cell_7/strided_slice_3/stack_1:output:0,lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_7MatMullstm_cell_7/mul_7:z:0$lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_4AddV2lstm_cell_7/BiasAdd_3:output:0lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀd
lstm_cell_7/Tanh_1Tanhlstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mul_10Mullstm_cell_7/Sigmoid_2:y:0lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_7_split_readvariableop_resource+lstm_cell_7_split_1_readvariableop_resource#lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_111238*
condR
while_cond_111237*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^lstm_cell_7/ReadVariableOp^lstm_cell_7/ReadVariableOp_1^lstm_cell_7/ReadVariableOp_2^lstm_cell_7/ReadVariableOp_3!^lstm_cell_7/split/ReadVariableOp#^lstm_cell_7/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿx: : : 28
lstm_cell_7/ReadVariableOplstm_cell_7/ReadVariableOp2<
lstm_cell_7/ReadVariableOp_1lstm_cell_7/ReadVariableOp_12<
lstm_cell_7/ReadVariableOp_2lstm_cell_7/ReadVariableOp_22<
lstm_cell_7/ReadVariableOp_3lstm_cell_7/ReadVariableOp_32D
 lstm_cell_7/split/ReadVariableOp lstm_cell_7/split/ReadVariableOp2H
"lstm_cell_7/split_1/ReadVariableOp"lstm_cell_7/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
÷Â
	
while_body_113933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_7_split_readvariableop_resource_0:
B
3while_lstm_cell_7_split_1_readvariableop_resource_0:	?
+while_lstm_cell_7_readvariableop_resource_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_7_split_readvariableop_resource:
@
1while_lstm_cell_7_split_1_readvariableop_resource:	=
)while_lstm_cell_7_readvariableop_resource:
À¢ while/lstm_cell_7/ReadVariableOp¢"while/lstm_cell_7/ReadVariableOp_1¢"while/lstm_cell_7/ReadVariableOp_2¢"while/lstm_cell_7/ReadVariableOp_3¢&while/lstm_cell_7/split/ReadVariableOp¢(while/lstm_cell_7/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!while/lstm_cell_7/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
while/lstm_cell_7/ones_likeFill*while/lstm_cell_7/ones_like/Shape:output:0*while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?§
while/lstm_cell_7/dropout/MulMul$while/lstm_cell_7/ones_like:output:0(while/lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_7/dropout/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:±
6while/lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0m
(while/lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ý
&while/lstm_cell_7/dropout/GreaterEqualGreaterEqual?while/lstm_cell_7/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_7/dropout/CastCast*while/lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_7/dropout/Mul_1Mul!while/lstm_cell_7/dropout/Mul:z:0"while/lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_1/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_1/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_1/CastCast,while/lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_1/Mul_1Mul#while/lstm_cell_7/dropout_1/Mul:z:0$while/lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_2/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_2/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_2/CastCast,while/lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_2/Mul_1Mul#while/lstm_cell_7/dropout_2/Mul:z:0$while/lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_3/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_3/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_3/CastCast,while/lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_3/Mul_1Mul#while/lstm_cell_7/dropout_3/Mul:z:0$while/lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
#while/lstm_cell_7/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_7/ones_like_1Fill,while/lstm_cell_7/ones_like_1/Shape:output:0,while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_4/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_4/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_4/CastCast,while/lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_4/Mul_1Mul#while/lstm_cell_7/dropout_4/Mul:z:0$while/lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_5/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_5/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_5/CastCast,while/lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_5/Mul_1Mul#while/lstm_cell_7/dropout_5/Mul:z:0$while/lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_6/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_6/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_6/CastCast,while/lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_6/Mul_1Mul#while/lstm_cell_7/dropout_6/Mul:z:0$while/lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_7/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_7/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_7/CastCast,while/lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_7/Mul_1Mul#while/lstm_cell_7/dropout_7/Mul:z:0$while/lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
while/lstm_cell_7/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_7/split/ReadVariableOpReadVariableOp1while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ü
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0.while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
while/lstm_cell_7/MatMulMatMulwhile/lstm_cell_7/mul:z:0 while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_1MatMulwhile/lstm_cell_7/mul_1:z:0 while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_2MatMulwhile/lstm_cell_7/mul_2:z:0 while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_3MatMulwhile/lstm_cell_7/mul_3:z:0 while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
#while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_7/split_1Split,while/lstm_cell_7/split_1/split_dim:output:00while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
while/lstm_cell_7/BiasAddBiasAdd"while/lstm_cell_7/MatMul:product:0"while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_1BiasAdd$while/lstm_cell_7/MatMul_1:product:0"while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_2BiasAdd$while/lstm_cell_7/MatMul_2:product:0"while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_3BiasAdd$while/lstm_cell_7/MatMul_3:product:0"while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_4Mulwhile_placeholder_2%while/lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_5Mulwhile_placeholder_2%while/lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_6Mulwhile_placeholder_2%while/lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_7Mulwhile_placeholder_2%while/lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/ReadVariableOpReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0v
%while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   x
'while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_7/strided_sliceStridedSlice(while/lstm_cell_7/ReadVariableOp:value:0.while/lstm_cell_7/strided_slice/stack:output:00while/lstm_cell_7/strided_slice/stack_1:output:00while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
while/lstm_cell_7/MatMul_4MatMulwhile/lstm_cell_7/mul_4:z:0(while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/BiasAdd:output:0$while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
while/lstm_cell_7/SigmoidSigmoidwhile/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_1ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   z
)while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_1StridedSlice*while/lstm_cell_7/ReadVariableOp_1:value:00while/lstm_cell_7/strided_slice_1/stack:output:02while/lstm_cell_7/strided_slice_1/stack_1:output:02while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_5MatMulwhile/lstm_cell_7/mul_5:z:0*while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_1AddV2$while/lstm_cell_7/BiasAdd_1:output:0$while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_1Sigmoidwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_8Mulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_2ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_2StridedSlice*while/lstm_cell_7/ReadVariableOp_2:value:00while/lstm_cell_7/strided_slice_2/stack:output:02while/lstm_cell_7/strided_slice_2/stack_1:output:02while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_6MatMulwhile/lstm_cell_7/mul_6:z:0*while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_2AddV2$while/lstm_cell_7/BiasAdd_2:output:0$while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
while/lstm_cell_7/TanhTanhwhile/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_9Mulwhile/lstm_cell_7/Sigmoid:y:0while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_3AddV2while/lstm_cell_7/mul_8:z:0while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_3ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_3StridedSlice*while/lstm_cell_7/ReadVariableOp_3:value:00while/lstm_cell_7/strided_slice_3/stack:output:02while/lstm_cell_7/strided_slice_3/stack_1:output:02while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_7MatMulwhile/lstm_cell_7/mul_7:z:0*while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_4AddV2$while/lstm_cell_7/BiasAdd_3:output:0$while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_2Sigmoidwhile/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
while/lstm_cell_7/Tanh_1Tanhwhile/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_10Mulwhile/lstm_cell_7/Sigmoid_2:y:0while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_7/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
while/Identity_5Identitywhile/lstm_cell_7/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ²

while/NoOpNoOp!^while/lstm_cell_7/ReadVariableOp#^while/lstm_cell_7/ReadVariableOp_1#^while/lstm_cell_7/ReadVariableOp_2#^while/lstm_cell_7/ReadVariableOp_3'^while/lstm_cell_7/split/ReadVariableOp)^while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_7_readvariableop_resource+while_lstm_cell_7_readvariableop_resource_0"h
1while_lstm_cell_7_split_1_readvariableop_resource3while_lstm_cell_7_split_1_readvariableop_resource_0"d
/while_lstm_cell_7_split_readvariableop_resource1while_lstm_cell_7_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2D
 while/lstm_cell_7/ReadVariableOp while/lstm_cell_7/ReadVariableOp2H
"while/lstm_cell_7/ReadVariableOp_1"while/lstm_cell_7/ReadVariableOp_12H
"while/lstm_cell_7/ReadVariableOp_2"while/lstm_cell_7/ReadVariableOp_22H
"while/lstm_cell_7/ReadVariableOp_3"while/lstm_cell_7/ReadVariableOp_32P
&while/lstm_cell_7/split/ReadVariableOp&while/lstm_cell_7/split/ReadVariableOp2T
(while/lstm_cell_7/split_1/ReadVariableOp(while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
u
	
while_body_113626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_7_split_readvariableop_resource_0:
B
3while_lstm_cell_7_split_1_readvariableop_resource_0:	?
+while_lstm_cell_7_readvariableop_resource_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_7_split_readvariableop_resource:
@
1while_lstm_cell_7_split_1_readvariableop_resource:	=
)while_lstm_cell_7_readvariableop_resource:
À¢ while/lstm_cell_7/ReadVariableOp¢"while/lstm_cell_7/ReadVariableOp_1¢"while/lstm_cell_7/ReadVariableOp_2¢"while/lstm_cell_7/ReadVariableOp_3¢&while/lstm_cell_7/split/ReadVariableOp¢(while/lstm_cell_7/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!while/lstm_cell_7/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
while/lstm_cell_7/ones_likeFill*while/lstm_cell_7/ones_like/Shape:output:0*while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
#while/lstm_cell_7/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_7/ones_like_1Fill,while/lstm_cell_7/ones_like_1/Shape:output:0,while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ§
while/lstm_cell_7/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_7/split/ReadVariableOpReadVariableOp1while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ü
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0.while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
while/lstm_cell_7/MatMulMatMulwhile/lstm_cell_7/mul:z:0 while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_1MatMulwhile/lstm_cell_7/mul_1:z:0 while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_2MatMulwhile/lstm_cell_7/mul_2:z:0 while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_3MatMulwhile/lstm_cell_7/mul_3:z:0 while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
#while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_7/split_1Split,while/lstm_cell_7/split_1/split_dim:output:00while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
while/lstm_cell_7/BiasAddBiasAdd"while/lstm_cell_7/MatMul:product:0"while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_1BiasAdd$while/lstm_cell_7/MatMul_1:product:0"while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_2BiasAdd$while/lstm_cell_7/MatMul_2:product:0"while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_3BiasAdd$while/lstm_cell_7/MatMul_3:product:0"while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_4Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_5Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_6Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_7Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/ReadVariableOpReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0v
%while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   x
'while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_7/strided_sliceStridedSlice(while/lstm_cell_7/ReadVariableOp:value:0.while/lstm_cell_7/strided_slice/stack:output:00while/lstm_cell_7/strided_slice/stack_1:output:00while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
while/lstm_cell_7/MatMul_4MatMulwhile/lstm_cell_7/mul_4:z:0(while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/BiasAdd:output:0$while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
while/lstm_cell_7/SigmoidSigmoidwhile/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_1ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   z
)while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_1StridedSlice*while/lstm_cell_7/ReadVariableOp_1:value:00while/lstm_cell_7/strided_slice_1/stack:output:02while/lstm_cell_7/strided_slice_1/stack_1:output:02while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_5MatMulwhile/lstm_cell_7/mul_5:z:0*while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_1AddV2$while/lstm_cell_7/BiasAdd_1:output:0$while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_1Sigmoidwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_8Mulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_2ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_2StridedSlice*while/lstm_cell_7/ReadVariableOp_2:value:00while/lstm_cell_7/strided_slice_2/stack:output:02while/lstm_cell_7/strided_slice_2/stack_1:output:02while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_6MatMulwhile/lstm_cell_7/mul_6:z:0*while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_2AddV2$while/lstm_cell_7/BiasAdd_2:output:0$while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
while/lstm_cell_7/TanhTanhwhile/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_9Mulwhile/lstm_cell_7/Sigmoid:y:0while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_3AddV2while/lstm_cell_7/mul_8:z:0while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_3ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_3StridedSlice*while/lstm_cell_7/ReadVariableOp_3:value:00while/lstm_cell_7/strided_slice_3/stack:output:02while/lstm_cell_7/strided_slice_3/stack_1:output:02while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_7MatMulwhile/lstm_cell_7/mul_7:z:0*while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_4AddV2$while/lstm_cell_7/BiasAdd_3:output:0$while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_2Sigmoidwhile/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
while/lstm_cell_7/Tanh_1Tanhwhile/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_10Mulwhile/lstm_cell_7/Sigmoid_2:y:0while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_7/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
while/Identity_5Identitywhile/lstm_cell_7/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ²

while/NoOpNoOp!^while/lstm_cell_7/ReadVariableOp#^while/lstm_cell_7/ReadVariableOp_1#^while/lstm_cell_7/ReadVariableOp_2#^while/lstm_cell_7/ReadVariableOp_3'^while/lstm_cell_7/split/ReadVariableOp)^while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_7_readvariableop_resource+while_lstm_cell_7_readvariableop_resource_0"h
1while_lstm_cell_7_split_1_readvariableop_resource3while_lstm_cell_7_split_1_readvariableop_resource_0"d
/while_lstm_cell_7_split_readvariableop_resource1while_lstm_cell_7_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2D
 while/lstm_cell_7/ReadVariableOp while/lstm_cell_7/ReadVariableOp2H
"while/lstm_cell_7/ReadVariableOp_1"while/lstm_cell_7/ReadVariableOp_12H
"while/lstm_cell_7/ReadVariableOp_2"while/lstm_cell_7/ReadVariableOp_22H
"while/lstm_cell_7/ReadVariableOp_3"while/lstm_cell_7/ReadVariableOp_32P
&while/lstm_cell_7/split/ReadVariableOp&while/lstm_cell_7/split/ReadVariableOp2T
(while/lstm_cell_7/split_1/ReadVariableOp(while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
ù
Ò
-__inference_sequential_8_layer_call_fn_111764

inputs
unknown:À¸
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:

	unknown_9:	

unknown_10:
À

unknown_11:	À

unknown_12:	À

unknown_13:	À

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_111003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
¯%
î
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110675

inputs6
'assignmovingavg_readvariableop_resource:	À8
)assignmovingavg_1_readvariableop_resource:	À4
%batchnorm_mul_readvariableop_resource:	À0
!batchnorm_readvariableop_resource:	À
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	À*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	À
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	À*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:À*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:À*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:À*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:Ày
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:À¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:À*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:À
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:À´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ÀQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:À
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:À*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Àd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:Àw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:À*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Às
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
Þ
m
4__inference_spatial_dropout1d_5_layer_call_fn_112752

inputs
identity¢StatefulPartitionedCallà
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_110005
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª	
§
G__inference_embedding_8_layer_call_and_return_conditional_losses_112662

inputs,
embedding_lookup_112656:À¸
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx¼
embedding_lookupResourceGatherembedding_lookup_112656Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/112656*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/112656*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxx
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿx: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
à
´
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110628

inputs0
!batchnorm_readvariableop_resource:	À4
%batchnorm_mul_readvariableop_resource:	À2
#batchnorm_readvariableop_1_resource:	À2
#batchnorm_readvariableop_2_resource:	À
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:À*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:ÀQ
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:À
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:À*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Àd
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:À*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:À{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:À*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:Às
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

¸
'__inference_lstm_5_layer_call_fn_112881
inputs_0
unknown:

	unknown_0:	
	unknown_1:
À
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_110595p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
û
¶
'__inference_lstm_5_layer_call_fn_112892

inputs
unknown:

	unknown_0:	
	unknown_1:
À
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_5_layer_call_and_return_conditional_losses_110968p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿx: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ê
Ó
%sequential_8_lstm_5_while_cond_109729D
@sequential_8_lstm_5_while_sequential_8_lstm_5_while_loop_counterJ
Fsequential_8_lstm_5_while_sequential_8_lstm_5_while_maximum_iterations)
%sequential_8_lstm_5_while_placeholder+
'sequential_8_lstm_5_while_placeholder_1+
'sequential_8_lstm_5_while_placeholder_2+
'sequential_8_lstm_5_while_placeholder_3F
Bsequential_8_lstm_5_while_less_sequential_8_lstm_5_strided_slice_1\
Xsequential_8_lstm_5_while_sequential_8_lstm_5_while_cond_109729___redundant_placeholder0\
Xsequential_8_lstm_5_while_sequential_8_lstm_5_while_cond_109729___redundant_placeholder1\
Xsequential_8_lstm_5_while_sequential_8_lstm_5_while_cond_109729___redundant_placeholder2\
Xsequential_8_lstm_5_while_sequential_8_lstm_5_while_cond_109729___redundant_placeholder3&
"sequential_8_lstm_5_while_identity
²
sequential_8/lstm_5/while/LessLess%sequential_8_lstm_5_while_placeholderBsequential_8_lstm_5_while_less_sequential_8_lstm_5_strided_slice_1*
T0*
_output_shapes
: s
"sequential_8/lstm_5/while/IdentityIdentity"sequential_8/lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_8_lstm_5_while_identity+sequential_8/lstm_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
º
m
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_112757

inputs

identity_1d
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿq

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
Ã
while_cond_113932
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_113932___redundant_placeholder04
0while_while_cond_113932___redundant_placeholder14
0while_while_cond_113932___redundant_placeholder24
0while_while_cond_113932___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
¹
Ã
while_cond_110220
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_110220___redundant_placeholder04
0while_while_cond_110220___redundant_placeholder14
0while_while_cond_110220___redundant_placeholder24
0while_while_cond_110220___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
´ 
Ø
%sequential_8_lstm_5_while_body_109730D
@sequential_8_lstm_5_while_sequential_8_lstm_5_while_loop_counterJ
Fsequential_8_lstm_5_while_sequential_8_lstm_5_while_maximum_iterations)
%sequential_8_lstm_5_while_placeholder+
'sequential_8_lstm_5_while_placeholder_1+
'sequential_8_lstm_5_while_placeholder_2+
'sequential_8_lstm_5_while_placeholder_3C
?sequential_8_lstm_5_while_sequential_8_lstm_5_strided_slice_1_0
{sequential_8_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_5_tensorarrayunstack_tensorlistfromtensor_0Y
Esequential_8_lstm_5_while_lstm_cell_7_split_readvariableop_resource_0:
V
Gsequential_8_lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0:	S
?sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource_0:
À&
"sequential_8_lstm_5_while_identity(
$sequential_8_lstm_5_while_identity_1(
$sequential_8_lstm_5_while_identity_2(
$sequential_8_lstm_5_while_identity_3(
$sequential_8_lstm_5_while_identity_4(
$sequential_8_lstm_5_while_identity_5A
=sequential_8_lstm_5_while_sequential_8_lstm_5_strided_slice_1}
ysequential_8_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_5_tensorarrayunstack_tensorlistfromtensorW
Csequential_8_lstm_5_while_lstm_cell_7_split_readvariableop_resource:
T
Esequential_8_lstm_5_while_lstm_cell_7_split_1_readvariableop_resource:	Q
=sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource:
À¢4sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp¢6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_1¢6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_2¢6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_3¢:sequential_8/lstm_5/while/lstm_cell_7/split/ReadVariableOp¢<sequential_8/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp
Ksequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
=sequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_8_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_5_tensorarrayunstack_tensorlistfromtensor_0%sequential_8_lstm_5_while_placeholderTsequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0©
5sequential_8/lstm_5/while/lstm_cell_7/ones_like/ShapeShapeDsequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:z
5sequential_8/lstm_5/while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ê
/sequential_8/lstm_5/while/lstm_cell_7/ones_likeFill>sequential_8/lstm_5/while/lstm_cell_7/ones_like/Shape:output:0>sequential_8/lstm_5/while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
7sequential_8/lstm_5/while/lstm_cell_7/ones_like_1/ShapeShape'sequential_8_lstm_5_while_placeholder_2*
T0*
_output_shapes
:|
7sequential_8/lstm_5/while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ð
1sequential_8/lstm_5/while/lstm_cell_7/ones_like_1Fill@sequential_8/lstm_5/while/lstm_cell_7/ones_like_1/Shape:output:0@sequential_8/lstm_5/while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀã
)sequential_8/lstm_5/while/lstm_cell_7/mulMulDsequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_8/lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
+sequential_8/lstm_5/while/lstm_cell_7/mul_1MulDsequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_8/lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
+sequential_8/lstm_5/while/lstm_cell_7/mul_2MulDsequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_8/lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿå
+sequential_8/lstm_5/while/lstm_cell_7/mul_3MulDsequential_8/lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_8/lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
5sequential_8/lstm_5/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Â
:sequential_8/lstm_5/while/lstm_cell_7/split/ReadVariableOpReadVariableOpEsequential_8_lstm_5_while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
+sequential_8/lstm_5/while/lstm_cell_7/splitSplit>sequential_8/lstm_5/while/lstm_cell_7/split/split_dim:output:0Bsequential_8/lstm_5/while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_splitÎ
,sequential_8/lstm_5/while/lstm_cell_7/MatMulMatMul-sequential_8/lstm_5/while/lstm_cell_7/mul:z:04sequential_8/lstm_5/while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÒ
.sequential_8/lstm_5/while/lstm_cell_7/MatMul_1MatMul/sequential_8/lstm_5/while/lstm_cell_7/mul_1:z:04sequential_8/lstm_5/while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÒ
.sequential_8/lstm_5/while/lstm_cell_7/MatMul_2MatMul/sequential_8/lstm_5/while/lstm_cell_7/mul_2:z:04sequential_8/lstm_5/while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÒ
.sequential_8/lstm_5/while/lstm_cell_7/MatMul_3MatMul/sequential_8/lstm_5/while/lstm_cell_7/mul_3:z:04sequential_8/lstm_5/while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
7sequential_8/lstm_5/while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Á
<sequential_8/lstm_5/while/lstm_cell_7/split_1/ReadVariableOpReadVariableOpGsequential_8_lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0
-sequential_8/lstm_5/while/lstm_cell_7/split_1Split@sequential_8/lstm_5/while/lstm_cell_7/split_1/split_dim:output:0Dsequential_8/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_splitÛ
-sequential_8/lstm_5/while/lstm_cell_7/BiasAddBiasAdd6sequential_8/lstm_5/while/lstm_cell_7/MatMul:product:06sequential_8/lstm_5/while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀß
/sequential_8/lstm_5/while/lstm_cell_7/BiasAdd_1BiasAdd8sequential_8/lstm_5/while/lstm_cell_7/MatMul_1:product:06sequential_8/lstm_5/while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀß
/sequential_8/lstm_5/while/lstm_cell_7/BiasAdd_2BiasAdd8sequential_8/lstm_5/while/lstm_cell_7/MatMul_2:product:06sequential_8/lstm_5/while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀß
/sequential_8/lstm_5/while/lstm_cell_7/BiasAdd_3BiasAdd8sequential_8/lstm_5/while/lstm_cell_7/MatMul_3:product:06sequential_8/lstm_5/while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÊ
+sequential_8/lstm_5/while/lstm_cell_7/mul_4Mul'sequential_8_lstm_5_while_placeholder_2:sequential_8/lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÊ
+sequential_8/lstm_5/while/lstm_cell_7/mul_5Mul'sequential_8_lstm_5_while_placeholder_2:sequential_8/lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÊ
+sequential_8/lstm_5/while/lstm_cell_7/mul_6Mul'sequential_8_lstm_5_while_placeholder_2:sequential_8/lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÊ
+sequential_8/lstm_5/while/lstm_cell_7/mul_7Mul'sequential_8_lstm_5_while_placeholder_2:sequential_8/lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¶
4sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOpReadVariableOp?sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
9sequential_8/lstm_5/while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
;sequential_8/lstm_5/while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
;sequential_8/lstm_5/while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      «
3sequential_8/lstm_5/while/lstm_cell_7/strided_sliceStridedSlice<sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp:value:0Bsequential_8/lstm_5/while/lstm_cell_7/strided_slice/stack:output:0Dsequential_8/lstm_5/while/lstm_cell_7/strided_slice/stack_1:output:0Dsequential_8/lstm_5/while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÚ
.sequential_8/lstm_5/while/lstm_cell_7/MatMul_4MatMul/sequential_8/lstm_5/while/lstm_cell_7/mul_4:z:0<sequential_8/lstm_5/while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ×
)sequential_8/lstm_5/while/lstm_cell_7/addAddV26sequential_8/lstm_5/while/lstm_cell_7/BiasAdd:output:08sequential_8/lstm_5/while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
-sequential_8/lstm_5/while/lstm_cell_7/SigmoidSigmoid-sequential_8/lstm_5/while/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_1ReadVariableOp?sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
;sequential_8/lstm_5/while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
=sequential_8/lstm_5/while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
=sequential_8/lstm_5/while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
5sequential_8/lstm_5/while/lstm_cell_7/strided_slice_1StridedSlice>sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_1:value:0Dsequential_8/lstm_5/while/lstm_cell_7/strided_slice_1/stack:output:0Fsequential_8/lstm_5/while/lstm_cell_7/strided_slice_1/stack_1:output:0Fsequential_8/lstm_5/while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÜ
.sequential_8/lstm_5/while/lstm_cell_7/MatMul_5MatMul/sequential_8/lstm_5/while/lstm_cell_7/mul_5:z:0>sequential_8/lstm_5/while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÛ
+sequential_8/lstm_5/while/lstm_cell_7/add_1AddV28sequential_8/lstm_5/while/lstm_cell_7/BiasAdd_1:output:08sequential_8/lstm_5/while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
/sequential_8/lstm_5/while/lstm_cell_7/Sigmoid_1Sigmoid/sequential_8/lstm_5/while/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÃ
+sequential_8/lstm_5/while/lstm_cell_7/mul_8Mul3sequential_8/lstm_5/while/lstm_cell_7/Sigmoid_1:y:0'sequential_8_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_2ReadVariableOp?sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
;sequential_8/lstm_5/while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      
=sequential_8/lstm_5/while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  
=sequential_8/lstm_5/while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
5sequential_8/lstm_5/while/lstm_cell_7/strided_slice_2StridedSlice>sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_2:value:0Dsequential_8/lstm_5/while/lstm_cell_7/strided_slice_2/stack:output:0Fsequential_8/lstm_5/while/lstm_cell_7/strided_slice_2/stack_1:output:0Fsequential_8/lstm_5/while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÜ
.sequential_8/lstm_5/while/lstm_cell_7/MatMul_6MatMul/sequential_8/lstm_5/while/lstm_cell_7/mul_6:z:0>sequential_8/lstm_5/while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÛ
+sequential_8/lstm_5/while/lstm_cell_7/add_2AddV28sequential_8/lstm_5/while/lstm_cell_7/BiasAdd_2:output:08sequential_8/lstm_5/while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
*sequential_8/lstm_5/while/lstm_cell_7/TanhTanh/sequential_8/lstm_5/while/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÈ
+sequential_8/lstm_5/while/lstm_cell_7/mul_9Mul1sequential_8/lstm_5/while/lstm_cell_7/Sigmoid:y:0.sequential_8/lstm_5/while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÉ
+sequential_8/lstm_5/while/lstm_cell_7/add_3AddV2/sequential_8/lstm_5/while/lstm_cell_7/mul_8:z:0/sequential_8/lstm_5/while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_3ReadVariableOp?sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
;sequential_8/lstm_5/while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  
=sequential_8/lstm_5/while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
=sequential_8/lstm_5/while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      µ
5sequential_8/lstm_5/while/lstm_cell_7/strided_slice_3StridedSlice>sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_3:value:0Dsequential_8/lstm_5/while/lstm_cell_7/strided_slice_3/stack:output:0Fsequential_8/lstm_5/while/lstm_cell_7/strided_slice_3/stack_1:output:0Fsequential_8/lstm_5/while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskÜ
.sequential_8/lstm_5/while/lstm_cell_7/MatMul_7MatMul/sequential_8/lstm_5/while/lstm_cell_7/mul_7:z:0>sequential_8/lstm_5/while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÛ
+sequential_8/lstm_5/while/lstm_cell_7/add_4AddV28sequential_8/lstm_5/while/lstm_cell_7/BiasAdd_3:output:08sequential_8/lstm_5/while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
/sequential_8/lstm_5/while/lstm_cell_7/Sigmoid_2Sigmoid/sequential_8/lstm_5/while/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
,sequential_8/lstm_5/while/lstm_cell_7/Tanh_1Tanh/sequential_8/lstm_5/while/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÍ
,sequential_8/lstm_5/while/lstm_cell_7/mul_10Mul3sequential_8/lstm_5/while/lstm_cell_7/Sigmoid_2:y:00sequential_8/lstm_5/while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
>sequential_8/lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_8_lstm_5_while_placeholder_1%sequential_8_lstm_5_while_placeholder0sequential_8/lstm_5/while/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒa
sequential_8/lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_8/lstm_5/while/addAddV2%sequential_8_lstm_5_while_placeholder(sequential_8/lstm_5/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_8/lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
sequential_8/lstm_5/while/add_1AddV2@sequential_8_lstm_5_while_sequential_8_lstm_5_while_loop_counter*sequential_8/lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_8/lstm_5/while/IdentityIdentity#sequential_8/lstm_5/while/add_1:z:0^sequential_8/lstm_5/while/NoOp*
T0*
_output_shapes
: º
$sequential_8/lstm_5/while/Identity_1IdentityFsequential_8_lstm_5_while_sequential_8_lstm_5_while_maximum_iterations^sequential_8/lstm_5/while/NoOp*
T0*
_output_shapes
: 
$sequential_8/lstm_5/while/Identity_2Identity!sequential_8/lstm_5/while/add:z:0^sequential_8/lstm_5/while/NoOp*
T0*
_output_shapes
: Õ
$sequential_8/lstm_5/while/Identity_3IdentityNsequential_8/lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_8/lstm_5/while/NoOp*
T0*
_output_shapes
: :éèÒ¶
$sequential_8/lstm_5/while/Identity_4Identity0sequential_8/lstm_5/while/lstm_cell_7/mul_10:z:0^sequential_8/lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀµ
$sequential_8/lstm_5/while/Identity_5Identity/sequential_8/lstm_5/while/lstm_cell_7/add_3:z:0^sequential_8/lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¾
sequential_8/lstm_5/while/NoOpNoOp5^sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp7^sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_17^sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_27^sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_3;^sequential_8/lstm_5/while/lstm_cell_7/split/ReadVariableOp=^sequential_8/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_8_lstm_5_while_identity+sequential_8/lstm_5/while/Identity:output:0"U
$sequential_8_lstm_5_while_identity_1-sequential_8/lstm_5/while/Identity_1:output:0"U
$sequential_8_lstm_5_while_identity_2-sequential_8/lstm_5/while/Identity_2:output:0"U
$sequential_8_lstm_5_while_identity_3-sequential_8/lstm_5/while/Identity_3:output:0"U
$sequential_8_lstm_5_while_identity_4-sequential_8/lstm_5/while/Identity_4:output:0"U
$sequential_8_lstm_5_while_identity_5-sequential_8/lstm_5/while/Identity_5:output:0"
=sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource?sequential_8_lstm_5_while_lstm_cell_7_readvariableop_resource_0"
Esequential_8_lstm_5_while_lstm_cell_7_split_1_readvariableop_resourceGsequential_8_lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0"
Csequential_8_lstm_5_while_lstm_cell_7_split_readvariableop_resourceEsequential_8_lstm_5_while_lstm_cell_7_split_readvariableop_resource_0"
=sequential_8_lstm_5_while_sequential_8_lstm_5_strided_slice_1?sequential_8_lstm_5_while_sequential_8_lstm_5_strided_slice_1_0"ø
ysequential_8_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_5_tensorarrayunstack_tensorlistfromtensor{sequential_8_lstm_5_while_tensorarrayv2read_tensorlistgetitem_sequential_8_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2l
4sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp4sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp2p
6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_16sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_12p
6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_26sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_22p
6sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_36sequential_8/lstm_5/while/lstm_cell_7/ReadVariableOp_32x
:sequential_8/lstm_5/while/lstm_cell_7/split/ReadVariableOp:sequential_8/lstm_5/while/lstm_cell_7/split/ReadVariableOp2|
<sequential_8/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp<sequential_8/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
áÈ
á
B__inference_lstm_5_layer_call_and_return_conditional_losses_113517
inputs_0=
)lstm_cell_7_split_readvariableop_resource:
:
+lstm_cell_7_split_1_readvariableop_resource:	7
#lstm_cell_7_readvariableop_resource:
À
identity¢lstm_cell_7/ReadVariableOp¢lstm_cell_7/ReadVariableOp_1¢lstm_cell_7/ReadVariableOp_2¢lstm_cell_7/ReadVariableOp_3¢ lstm_cell_7/split/ReadVariableOp¢"lstm_cell_7/split_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskc
lstm_cell_7/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_7/ones_likeFill$lstm_cell_7/ones_like/Shape:output:0$lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout/MulMullstm_cell_7/ones_like:output:0"lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_7/dropout/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:¥
0lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0g
"lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ë
 lstm_cell_7/dropout/GreaterEqualGreaterEqual9lstm_cell_7/dropout/random_uniform/RandomUniform:output:0+lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout/CastCast$lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout/Mul_1Mullstm_cell_7/dropout/Mul:z:0lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_1/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_1/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_1/GreaterEqualGreaterEqual;lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_1/CastCast&lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_1/Mul_1Mullstm_cell_7/dropout_1/Mul:z:0lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_2/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_2/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_2/GreaterEqualGreaterEqual;lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_2/CastCast&lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_2/Mul_1Mullstm_cell_7/dropout_2/Mul:z:0lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_3/MulMullstm_cell_7/ones_like:output:0$lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
lstm_cell_7/dropout_3/ShapeShapelstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0i
$lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_3/GreaterEqualGreaterEqual;lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_3/CastCast&lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/dropout_3/Mul_1Mullstm_cell_7/dropout_3/Mul:z:0lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell_7/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_7/ones_like_1Fill&lstm_cell_7/ones_like_1/Shape:output:0&lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_4/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_4/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_4/GreaterEqualGreaterEqual;lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_4/CastCast&lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_4/Mul_1Mullstm_cell_7/dropout_4/Mul:z:0lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_5/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_5/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_5/GreaterEqualGreaterEqual;lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_5/CastCast&lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_5/Mul_1Mullstm_cell_7/dropout_5/Mul:z:0lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_6/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_6/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_6/GreaterEqualGreaterEqual;lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_6/CastCast&lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_6/Mul_1Mullstm_cell_7/dropout_6/Mul:z:0lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?
lstm_cell_7/dropout_7/MulMul lstm_cell_7/ones_like_1:output:0$lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀk
lstm_cell_7/dropout_7/ShapeShape lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:©
2lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0i
$lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ñ
"lstm_cell_7/dropout_7/GreaterEqualGreaterEqual;lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_7/CastCast&lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/dropout_7/Mul_1Mullstm_cell_7/dropout_7/Mul:z:0lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mulMulstrided_slice_2:output:0lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_1Mulstrided_slice_2:output:0lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_2Mulstrided_slice_2:output:0lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_3Mulstrided_slice_2:output:0lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_7/split/ReadVariableOpReadVariableOp)lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0Ê
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0(lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_cell_7/MatMulMatMullstm_cell_7/mul:z:0lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_1MatMullstm_cell_7/mul_1:z:0lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_2MatMullstm_cell_7/mul_2:z:0lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_3MatMullstm_cell_7/mul_3:z:0lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_7/split_1/ReadVariableOpReadVariableOp+lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_7/split_1Split&lstm_cell_7/split_1/split_dim:output:0*lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
lstm_cell_7/BiasAddBiasAddlstm_cell_7/MatMul:product:0lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_1BiasAddlstm_cell_7/MatMul_1:product:0lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_2BiasAddlstm_cell_7/MatMul_2:product:0lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_3BiasAddlstm_cell_7/MatMul_3:product:0lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_4Mulzeros:output:0lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_5Mulzeros:output:0lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_6Mulzeros:output:0lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_cell_7/mul_7Mulzeros:output:0lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOpReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0p
lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   r
!lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_7/strided_sliceStridedSlice"lstm_cell_7/ReadVariableOp:value:0(lstm_cell_7/strided_slice/stack:output:0*lstm_cell_7/strided_slice/stack_1:output:0*lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_4MatMullstm_cell_7/mul_4:z:0"lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/addAddV2lstm_cell_7/BiasAdd:output:0lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
lstm_cell_7/SigmoidSigmoidlstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_1ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   t
#lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_1StridedSlice$lstm_cell_7/ReadVariableOp_1:value:0*lstm_cell_7/strided_slice_1/stack:output:0,lstm_cell_7/strided_slice_1/stack_1:output:0,lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_5MatMullstm_cell_7/mul_5:z:0$lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_1AddV2lstm_cell_7/BiasAdd_1:output:0lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_cell_7/mul_8Mullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_2ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_2StridedSlice$lstm_cell_7/ReadVariableOp_2:value:0*lstm_cell_7/strided_slice_2/stack:output:0,lstm_cell_7/strided_slice_2/stack_1:output:0,lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_6MatMullstm_cell_7/mul_6:z:0$lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_2AddV2lstm_cell_7/BiasAdd_2:output:0lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
lstm_cell_7/TanhTanhlstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀz
lstm_cell_7/mul_9Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
lstm_cell_7/add_3AddV2lstm_cell_7/mul_8:z:0lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_3ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_3StridedSlice$lstm_cell_7/ReadVariableOp_3:value:0*lstm_cell_7/strided_slice_3/stack:output:0,lstm_cell_7/strided_slice_3/stack_1:output:0,lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_7MatMullstm_cell_7/mul_7:z:0$lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_4AddV2lstm_cell_7/BiasAdd_3:output:0lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀd
lstm_cell_7/Tanh_1Tanhlstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mul_10Mullstm_cell_7/Sigmoid_2:y:0lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_7_split_readvariableop_resource+lstm_cell_7_split_1_readvariableop_resource#lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113319*
condR
while_cond_113318*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^lstm_cell_7/ReadVariableOp^lstm_cell_7/ReadVariableOp_1^lstm_cell_7/ReadVariableOp_2^lstm_cell_7/ReadVariableOp_3!^lstm_cell_7/split/ReadVariableOp#^lstm_cell_7/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 28
lstm_cell_7/ReadVariableOplstm_cell_7/ReadVariableOp2<
lstm_cell_7/ReadVariableOp_1lstm_cell_7/ReadVariableOp_12<
lstm_cell_7/ReadVariableOp_2lstm_cell_7/ReadVariableOp_22<
lstm_cell_7/ReadVariableOp_3lstm_cell_7/ReadVariableOp_32D
 lstm_cell_7/split/ReadVariableOp lstm_cell_7/split/ReadVariableOp2H
"lstm_cell_7/split_1/ReadVariableOp"lstm_cell_7/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Þ
Ó
4__inference_batch_normalization_layer_call_fn_112688

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_109958}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
éj
¨
__inference__traced_save_114669
file_prefix5
1savev2_embedding_8_embeddings_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_5_lstm_cell_7_kernel_read_readvariableopB
>savev2_lstm_5_lstm_cell_7_recurrent_kernel_read_readvariableop6
2savev2_lstm_5_lstm_cell_7_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_8_embeddings_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_7_kernel_m_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_7_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_7_bias_m_read_readvariableop<
8savev2_adam_embedding_8_embeddings_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop?
;savev2_adam_lstm_5_lstm_cell_7_kernel_v_read_readvariableopI
Esavev2_adam_lstm_5_lstm_cell_7_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_5_lstm_cell_7_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¢
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ë
valueÁB¾4B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÕ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ó
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_8_embeddings_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_5_lstm_cell_7_kernel_read_readvariableop>savev2_lstm_5_lstm_cell_7_recurrent_kernel_read_readvariableop2savev2_lstm_5_lstm_cell_7_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_8_embeddings_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop;savev2_adam_lstm_5_lstm_cell_7_kernel_m_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_7_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_5_lstm_cell_7_bias_m_read_readvariableop8savev2_adam_embedding_8_embeddings_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop;savev2_adam_lstm_5_lstm_cell_7_kernel_v_read_readvariableopEsavev2_adam_lstm_5_lstm_cell_7_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_5_lstm_cell_7_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *B
dtypes8
624	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*
_input_shapesø
õ: :À¸:::::::::À:À:À:À:	À:: : : : : :
:
À:: : : : :À¸:::::À:À:	À::
:
À::À¸:::::À:À:	À::
:
À:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:'#
!
_output_shapes
:À¸:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
:À:!

_output_shapes	
:À:!

_output_shapes	
:À:!

_output_shapes	
:À:%!

_output_shapes
:	À: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
:&"
 
_output_shapes
:
À:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :'#
!
_output_shapes
:À¸:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::! 

_output_shapes	
::!!

_output_shapes	
:À:!"

_output_shapes	
:À:%#!

_output_shapes
:	À: $

_output_shapes
::&%"
 
_output_shapes
:
:&&"
 
_output_shapes
:
À:!'

_output_shapes	
::'(#
!
_output_shapes
:À¸:!)

_output_shapes	
::!*

_output_shapes	
::!+

_output_shapes	
::!,

_output_shapes	
::!-

_output_shapes	
:À:!.

_output_shapes	
:À:%/!

_output_shapes
:	À: 0

_output_shapes
::&1"
 
_output_shapes
:
:&2"
 
_output_shapes
:
À:!3

_output_shapes	
::4

_output_shapes
: 
ê
Ô
$__inference_signature_wrapper_112645
embedding_8_input
unknown:À¸
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:

	unknown_9:	

unknown_10:
À

unknown_11:	À

unknown_12:	À

unknown_13:	À

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_109887o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
+
_user_specified_nameembedding_8_input
¤

ö
D__inference_dense_15_layer_call_and_return_conditional_losses_110996

inputs1
matmul_readvariableop_resource:	À-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	À*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
£Ð
§"
"__inference__traced_restore_114832
file_prefix<
'assignvariableop_embedding_8_embeddings:À¸;
,assignvariableop_1_batch_normalization_gamma:	:
+assignvariableop_2_batch_normalization_beta:	A
2assignvariableop_3_batch_normalization_moving_mean:	E
6assignvariableop_4_batch_normalization_moving_variance:	=
.assignvariableop_5_batch_normalization_1_gamma:	<
-assignvariableop_6_batch_normalization_1_beta:	C
4assignvariableop_7_batch_normalization_1_moving_mean:	G
8assignvariableop_8_batch_normalization_1_moving_variance:	=
.assignvariableop_9_batch_normalization_2_gamma:	À=
.assignvariableop_10_batch_normalization_2_beta:	ÀD
5assignvariableop_11_batch_normalization_2_moving_mean:	ÀH
9assignvariableop_12_batch_normalization_2_moving_variance:	À6
#assignvariableop_13_dense_15_kernel:	À/
!assignvariableop_14_dense_15_bias:'
assignvariableop_15_adam_iter:	 )
assignvariableop_16_adam_beta_1: )
assignvariableop_17_adam_beta_2: (
assignvariableop_18_adam_decay: 0
&assignvariableop_19_adam_learning_rate: A
-assignvariableop_20_lstm_5_lstm_cell_7_kernel:
K
7assignvariableop_21_lstm_5_lstm_cell_7_recurrent_kernel:
À:
+assignvariableop_22_lstm_5_lstm_cell_7_bias:	#
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: F
1assignvariableop_27_adam_embedding_8_embeddings_m:À¸C
4assignvariableop_28_adam_batch_normalization_gamma_m:	B
3assignvariableop_29_adam_batch_normalization_beta_m:	E
6assignvariableop_30_adam_batch_normalization_1_gamma_m:	D
5assignvariableop_31_adam_batch_normalization_1_beta_m:	E
6assignvariableop_32_adam_batch_normalization_2_gamma_m:	ÀD
5assignvariableop_33_adam_batch_normalization_2_beta_m:	À=
*assignvariableop_34_adam_dense_15_kernel_m:	À6
(assignvariableop_35_adam_dense_15_bias_m:H
4assignvariableop_36_adam_lstm_5_lstm_cell_7_kernel_m:
R
>assignvariableop_37_adam_lstm_5_lstm_cell_7_recurrent_kernel_m:
ÀA
2assignvariableop_38_adam_lstm_5_lstm_cell_7_bias_m:	F
1assignvariableop_39_adam_embedding_8_embeddings_v:À¸C
4assignvariableop_40_adam_batch_normalization_gamma_v:	B
3assignvariableop_41_adam_batch_normalization_beta_v:	E
6assignvariableop_42_adam_batch_normalization_1_gamma_v:	D
5assignvariableop_43_adam_batch_normalization_1_beta_v:	E
6assignvariableop_44_adam_batch_normalization_2_gamma_v:	ÀD
5assignvariableop_45_adam_batch_normalization_2_beta_v:	À=
*assignvariableop_46_adam_dense_15_kernel_v:	À6
(assignvariableop_47_adam_dense_15_bias_v:H
4assignvariableop_48_adam_lstm_5_lstm_cell_7_kernel_v:
R
>assignvariableop_49_adam_lstm_5_lstm_cell_7_recurrent_kernel_v:
ÀA
2assignvariableop_50_adam_lstm_5_lstm_cell_7_bias_v:	
identity_52¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¥
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*Ë
valueÁB¾4B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHØ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:4*
dtype0*{
valuerBp4B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¥
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*æ
_output_shapesÓ
Ð::::::::::::::::::::::::::::::::::::::::::::::::::::*B
dtypes8
624	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp'assignvariableop_embedding_8_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp,assignvariableop_1_batch_normalization_gammaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp+assignvariableop_2_batch_normalization_betaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_3AssignVariableOp2assignvariableop_3_batch_normalization_moving_meanIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_4AssignVariableOp6assignvariableop_4_batch_normalization_moving_varianceIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batch_normalization_1_gammaIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp-assignvariableop_6_batch_normalization_1_betaIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_7AssignVariableOp4assignvariableop_7_batch_normalization_1_moving_meanIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_8AssignVariableOp8assignvariableop_8_batch_normalization_1_moving_varianceIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_2_gammaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp.assignvariableop_10_batch_normalization_2_betaIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_11AssignVariableOp5assignvariableop_11_batch_normalization_2_moving_meanIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_12AssignVariableOp9assignvariableop_12_batch_normalization_2_moving_varianceIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp#assignvariableop_13_dense_15_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp!assignvariableop_14_dense_15_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_iterIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_learning_rateIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp-assignvariableop_20_lstm_5_lstm_cell_7_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_21AssignVariableOp7assignvariableop_21_lstm_5_lstm_cell_7_recurrent_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp+assignvariableop_22_lstm_5_lstm_cell_7_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_27AssignVariableOp1assignvariableop_27_adam_embedding_8_embeddings_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_28AssignVariableOp4assignvariableop_28_adam_batch_normalization_gamma_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_29AssignVariableOp3assignvariableop_29_adam_batch_normalization_beta_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_batch_normalization_1_gamma_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_31AssignVariableOp5assignvariableop_31_adam_batch_normalization_1_beta_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_32AssignVariableOp6assignvariableop_32_adam_batch_normalization_2_gamma_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_33AssignVariableOp5assignvariableop_33_adam_batch_normalization_2_beta_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_15_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_15_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_5_lstm_cell_7_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_37AssignVariableOp>assignvariableop_37_adam_lstm_5_lstm_cell_7_recurrent_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_38AssignVariableOp2assignvariableop_38_adam_lstm_5_lstm_cell_7_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:¢
AssignVariableOp_39AssignVariableOp1assignvariableop_39_adam_embedding_8_embeddings_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_40AssignVariableOp4assignvariableop_40_adam_batch_normalization_gamma_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_41AssignVariableOp3assignvariableop_41_adam_batch_normalization_beta_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_batch_normalization_1_gamma_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_43AssignVariableOp5assignvariableop_43_adam_batch_normalization_1_beta_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_44AssignVariableOp6assignvariableop_44_adam_batch_normalization_2_gamma_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_45AssignVariableOp5assignvariableop_45_adam_batch_normalization_2_beta_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_dense_15_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_dense_15_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_lstm_5_lstm_cell_7_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_49AssignVariableOp>assignvariableop_49_adam_lstm_5_lstm_cell_7_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adam_lstm_5_lstm_cell_7_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ±	
Identity_51Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_52IdentityIdentity_51:output:0^NoOp_1*
T0*
_output_shapes
: 	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_52Identity_52:output:0*{
_input_shapesj
h: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
u
	
while_body_113012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_7_split_readvariableop_resource_0:
B
3while_lstm_cell_7_split_1_readvariableop_resource_0:	?
+while_lstm_cell_7_readvariableop_resource_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_7_split_readvariableop_resource:
@
1while_lstm_cell_7_split_1_readvariableop_resource:	=
)while_lstm_cell_7_readvariableop_resource:
À¢ while/lstm_cell_7/ReadVariableOp¢"while/lstm_cell_7/ReadVariableOp_1¢"while/lstm_cell_7/ReadVariableOp_2¢"while/lstm_cell_7/ReadVariableOp_3¢&while/lstm_cell_7/split/ReadVariableOp¢(while/lstm_cell_7/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!while/lstm_cell_7/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
while/lstm_cell_7/ones_likeFill*while/lstm_cell_7/ones_like/Shape:output:0*while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
#while/lstm_cell_7/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_7/ones_like_1Fill,while/lstm_cell_7/ones_like_1/Shape:output:0,while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ§
while/lstm_cell_7/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
while/lstm_cell_7/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_7/split/ReadVariableOpReadVariableOp1while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ü
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0.while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
while/lstm_cell_7/MatMulMatMulwhile/lstm_cell_7/mul:z:0 while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_1MatMulwhile/lstm_cell_7/mul_1:z:0 while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_2MatMulwhile/lstm_cell_7/mul_2:z:0 while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_3MatMulwhile/lstm_cell_7/mul_3:z:0 while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
#while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_7/split_1Split,while/lstm_cell_7/split_1/split_dim:output:00while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
while/lstm_cell_7/BiasAddBiasAdd"while/lstm_cell_7/MatMul:product:0"while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_1BiasAdd$while/lstm_cell_7/MatMul_1:product:0"while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_2BiasAdd$while/lstm_cell_7/MatMul_2:product:0"while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_3BiasAdd$while/lstm_cell_7/MatMul_3:product:0"while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_4Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_5Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_6Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_7Mulwhile_placeholder_2&while/lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/ReadVariableOpReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0v
%while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   x
'while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_7/strided_sliceStridedSlice(while/lstm_cell_7/ReadVariableOp:value:0.while/lstm_cell_7/strided_slice/stack:output:00while/lstm_cell_7/strided_slice/stack_1:output:00while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
while/lstm_cell_7/MatMul_4MatMulwhile/lstm_cell_7/mul_4:z:0(while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/BiasAdd:output:0$while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
while/lstm_cell_7/SigmoidSigmoidwhile/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_1ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   z
)while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_1StridedSlice*while/lstm_cell_7/ReadVariableOp_1:value:00while/lstm_cell_7/strided_slice_1/stack:output:02while/lstm_cell_7/strided_slice_1/stack_1:output:02while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_5MatMulwhile/lstm_cell_7/mul_5:z:0*while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_1AddV2$while/lstm_cell_7/BiasAdd_1:output:0$while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_1Sigmoidwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_8Mulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_2ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_2StridedSlice*while/lstm_cell_7/ReadVariableOp_2:value:00while/lstm_cell_7/strided_slice_2/stack:output:02while/lstm_cell_7/strided_slice_2/stack_1:output:02while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_6MatMulwhile/lstm_cell_7/mul_6:z:0*while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_2AddV2$while/lstm_cell_7/BiasAdd_2:output:0$while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
while/lstm_cell_7/TanhTanhwhile/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_9Mulwhile/lstm_cell_7/Sigmoid:y:0while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_3AddV2while/lstm_cell_7/mul_8:z:0while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_3ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_3StridedSlice*while/lstm_cell_7/ReadVariableOp_3:value:00while/lstm_cell_7/strided_slice_3/stack:output:02while/lstm_cell_7/strided_slice_3/stack_1:output:02while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_7MatMulwhile/lstm_cell_7/mul_7:z:0*while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_4AddV2$while/lstm_cell_7/BiasAdd_3:output:0$while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_2Sigmoidwhile/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
while/lstm_cell_7/Tanh_1Tanhwhile/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_10Mulwhile/lstm_cell_7/Sigmoid_2:y:0while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_7/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
while/Identity_5Identitywhile/lstm_cell_7/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ²

while/NoOpNoOp!^while/lstm_cell_7/ReadVariableOp#^while/lstm_cell_7/ReadVariableOp_1#^while/lstm_cell_7/ReadVariableOp_2#^while/lstm_cell_7/ReadVariableOp_3'^while/lstm_cell_7/split/ReadVariableOp)^while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_7_readvariableop_resource+while_lstm_cell_7_readvariableop_resource_0"h
1while_lstm_cell_7_split_1_readvariableop_resource3while_lstm_cell_7_split_1_readvariableop_resource_0"d
/while_lstm_cell_7_split_readvariableop_resource1while_lstm_cell_7_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2D
 while/lstm_cell_7/ReadVariableOp while/lstm_cell_7/ReadVariableOp2H
"while/lstm_cell_7/ReadVariableOp_1"while/lstm_cell_7/ReadVariableOp_12H
"while/lstm_cell_7/ReadVariableOp_2"while/lstm_cell_7/ReadVariableOp_22H
"while/lstm_cell_7/ReadVariableOp_3"while/lstm_cell_7/ReadVariableOp_32P
&while/lstm_cell_7/split/ReadVariableOp&while/lstm_cell_7/split/ReadVariableOp2T
(while/lstm_cell_7/split_1/ReadVariableOp(while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 

Ý
-__inference_sequential_8_layer_call_fn_111042
embedding_8_input
unknown:À¸
	unknown_0:	
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:	
	unknown_5:	
	unknown_6:	
	unknown_7:	
	unknown_8:

	unknown_9:	

unknown_10:
À

unknown_11:	À

unknown_12:	À

unknown_13:	À

unknown_14:	À

unknown_15:	À

unknown_16:
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallembedding_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_8_layer_call_and_return_conditional_losses_111003o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*J
_input_shapes9
7:ÿÿÿÿÿÿÿÿÿx: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
+
_user_specified_nameembedding_8_input
°
Õ
6__inference_batch_normalization_2_layer_call_fn_114144

inputs
unknown:	À
	unknown_0:	À
	unknown_1:	À
	unknown_2:	À
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_110628p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÀ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs
÷Â
	
while_body_113319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
1while_lstm_cell_7_split_readvariableop_resource_0:
B
3while_lstm_cell_7_split_1_readvariableop_resource_0:	?
+while_lstm_cell_7_readvariableop_resource_0:
À
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
/while_lstm_cell_7_split_readvariableop_resource:
@
1while_lstm_cell_7_split_1_readvariableop_resource:	=
)while_lstm_cell_7_readvariableop_resource:
À¢ while/lstm_cell_7/ReadVariableOp¢"while/lstm_cell_7/ReadVariableOp_1¢"while/lstm_cell_7/ReadVariableOp_2¢"while/lstm_cell_7/ReadVariableOp_3¢&while/lstm_cell_7/split/ReadVariableOp¢(while/lstm_cell_7/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
!while/lstm_cell_7/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:f
!while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?®
while/lstm_cell_7/ones_likeFill*while/lstm_cell_7/ones_like/Shape:output:0*while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
while/lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?§
while/lstm_cell_7/dropout/MulMul$while/lstm_cell_7/ones_like:output:0(while/lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_7/dropout/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:±
6while/lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0m
(while/lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>Ý
&while/lstm_cell_7/dropout/GreaterEqualGreaterEqual?while/lstm_cell_7/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_7/dropout/CastCast*while/lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
while/lstm_cell_7/dropout/Mul_1Mul!while/lstm_cell_7/dropout/Mul:z:0"while/lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_1/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_1/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_1/CastCast,while/lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_1/Mul_1Mul#while/lstm_cell_7/dropout_1/Mul:z:0$while/lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_2/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_2/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_2/CastCast,while/lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_2/Mul_1Mul#while/lstm_cell_7/dropout_2/Mul:z:0$while/lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
!while/lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?«
while/lstm_cell_7/dropout_3/MulMul$while/lstm_cell_7/ones_like:output:0*while/lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
!while/lstm_cell_7/dropout_3/ShapeShape$while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0o
*while/lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 while/lstm_cell_7/dropout_3/CastCast,while/lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
!while/lstm_cell_7/dropout_3/Mul_1Mul#while/lstm_cell_7/dropout_3/Mul:z:0$while/lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
#while/lstm_cell_7/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:h
#while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?´
while/lstm_cell_7/ones_like_1Fill,while/lstm_cell_7/ones_like_1/Shape:output:0,while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_4/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_4/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_4/CastCast,while/lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_4/Mul_1Mul#while/lstm_cell_7/dropout_4/Mul:z:0$while/lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_5/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_5/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_5/CastCast,while/lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_5/Mul_1Mul#while/lstm_cell_7/dropout_5/Mul:z:0$while/lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_6/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_6/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_6/CastCast,while/lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_6/Mul_1Mul#while/lstm_cell_7/dropout_6/Mul:z:0$while/lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
!while/lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?­
while/lstm_cell_7/dropout_7/MulMul&while/lstm_cell_7/ones_like_1:output:0*while/lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀw
!while/lstm_cell_7/dropout_7/ShapeShape&while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:µ
8while/lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0o
*while/lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ã
(while/lstm_cell_7/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/dropout_7/CastCast,while/lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
!while/lstm_cell_7/dropout_7/Mul_1Mul#while/lstm_cell_7/dropout_7/Mul:z:0$while/lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
while/lstm_cell_7/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
while/lstm_cell_7/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
&while/lstm_cell_7/split/ReadVariableOpReadVariableOp1while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ü
while/lstm_cell_7/splitSplit*while/lstm_cell_7/split/split_dim:output:0.while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
while/lstm_cell_7/MatMulMatMulwhile/lstm_cell_7/mul:z:0 while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_1MatMulwhile/lstm_cell_7/mul_1:z:0 while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_2MatMulwhile/lstm_cell_7/mul_2:z:0 while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/MatMul_3MatMulwhile/lstm_cell_7/mul_3:z:0 while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀe
#while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
(while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
while/lstm_cell_7/split_1Split,while/lstm_cell_7/split_1/split_dim:output:00while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
while/lstm_cell_7/BiasAddBiasAdd"while/lstm_cell_7/MatMul:product:0"while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_1BiasAdd$while/lstm_cell_7/MatMul_1:product:0"while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_2BiasAdd$while/lstm_cell_7/MatMul_2:product:0"while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ£
while/lstm_cell_7/BiasAdd_3BiasAdd$while/lstm_cell_7/MatMul_3:product:0"while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_4Mulwhile_placeholder_2%while/lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_5Mulwhile_placeholder_2%while/lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_6Mulwhile_placeholder_2%while/lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_7Mulwhile_placeholder_2%while/lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 while/lstm_cell_7/ReadVariableOpReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0v
%while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   x
'while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ç
while/lstm_cell_7/strided_sliceStridedSlice(while/lstm_cell_7/ReadVariableOp:value:0.while/lstm_cell_7/strided_slice/stack:output:00while/lstm_cell_7/strided_slice/stack_1:output:00while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
while/lstm_cell_7/MatMul_4MatMulwhile/lstm_cell_7/mul_4:z:0(while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/addAddV2"while/lstm_cell_7/BiasAdd:output:0$while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr
while/lstm_cell_7/SigmoidSigmoidwhile/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_1ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   z
)while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_1StridedSlice*while/lstm_cell_7/ReadVariableOp_1:value:00while/lstm_cell_7/strided_slice_1/stack:output:02while/lstm_cell_7/strided_slice_1/stack_1:output:02while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_5MatMulwhile/lstm_cell_7/mul_5:z:0*while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_1AddV2$while/lstm_cell_7/BiasAdd_1:output:0$while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_1Sigmoidwhile/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_8Mulwhile/lstm_cell_7/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_2ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      z
)while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_2StridedSlice*while/lstm_cell_7/ReadVariableOp_2:value:00while/lstm_cell_7/strided_slice_2/stack:output:02while/lstm_cell_7/strided_slice_2/stack_1:output:02while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_6MatMulwhile/lstm_cell_7/mul_6:z:0*while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_2AddV2$while/lstm_cell_7/BiasAdd_2:output:0$while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
while/lstm_cell_7/TanhTanhwhile/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_9Mulwhile/lstm_cell_7/Sigmoid:y:0while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_3AddV2while/lstm_cell_7/mul_8:z:0while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"while/lstm_cell_7/ReadVariableOp_3ReadVariableOp+while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0x
'while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  z
)while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        z
)while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
!while/lstm_cell_7/strided_slice_3StridedSlice*while/lstm_cell_7/ReadVariableOp_3:value:00while/lstm_cell_7/strided_slice_3/stack:output:02while/lstm_cell_7/strided_slice_3/stack_1:output:02while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask 
while/lstm_cell_7/MatMul_7MatMulwhile/lstm_cell_7/mul_7:z:0*while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/add_4AddV2$while/lstm_cell_7/BiasAdd_3:output:0$while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀv
while/lstm_cell_7/Sigmoid_2Sigmoidwhile/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀp
while/lstm_cell_7/Tanh_1Tanhwhile/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
while/lstm_cell_7/mul_10Mulwhile/lstm_cell_7/Sigmoid_2:y:0while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀÅ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒz
while/Identity_4Identitywhile/lstm_cell_7/mul_10:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀy
while/Identity_5Identitywhile/lstm_cell_7/add_3:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ²

while/NoOpNoOp!^while/lstm_cell_7/ReadVariableOp#^while/lstm_cell_7/ReadVariableOp_1#^while/lstm_cell_7/ReadVariableOp_2#^while/lstm_cell_7/ReadVariableOp_3'^while/lstm_cell_7/split/ReadVariableOp)^while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_7_readvariableop_resource+while_lstm_cell_7_readvariableop_resource_0"h
1while_lstm_cell_7_split_1_readvariableop_resource3while_lstm_cell_7_split_1_readvariableop_resource_0"d
/while_lstm_cell_7_split_readvariableop_resource1while_lstm_cell_7_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2D
 while/lstm_cell_7/ReadVariableOp while/lstm_cell_7/ReadVariableOp2H
"while/lstm_cell_7/ReadVariableOp_1"while/lstm_cell_7/ReadVariableOp_12H
"while/lstm_cell_7/ReadVariableOp_2"while/lstm_cell_7/ReadVariableOp_22H
"while/lstm_cell_7/ReadVariableOp_3"while/lstm_cell_7/ReadVariableOp_32P
&while/lstm_cell_7/split/ReadVariableOp&while/lstm_cell_7/split/ReadVariableOp2T
(while/lstm_cell_7/split_1/ReadVariableOp(while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
÷
÷
,__inference_lstm_cell_7_layer_call_fn_114265

inputs
states_0
states_1
unknown:

	unknown_0:	
	unknown_1:
À
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_110467p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
states/1
ý	
Ï
lstm_5_while_cond_111952*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3,
(lstm_5_while_less_lstm_5_strided_slice_1B
>lstm_5_while_lstm_5_while_cond_111952___redundant_placeholder0B
>lstm_5_while_lstm_5_while_cond_111952___redundant_placeholder1B
>lstm_5_while_lstm_5_while_cond_111952___redundant_placeholder2B
>lstm_5_while_lstm_5_while_cond_111952___redundant_placeholder3
lstm_5_while_identity
~
lstm_5/while/LessLesslstm_5_while_placeholder(lstm_5_while_less_lstm_5_strided_slice_1*
T0*
_output_shapes
: Y
lstm_5/while/IdentityIdentitylstm_5/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_5_while_identitylstm_5/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
:
ª	
§
G__inference_embedding_8_layer_call_and_return_conditional_losses_110703

inputs,
embedding_lookup_110697:À¸
identity¢embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx¼
embedding_lookupResourceGatherembedding_lookup_110697Cast:y:0*
Tindices0**
_class 
loc:@embedding_lookup/110697*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx*
dtype0£
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0**
_class 
loc:@embedding_lookup/110697*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxx
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxY
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:ÿÿÿÿÿÿÿÿÿx: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs
ÐÙ

lstm_5_while_body_112367*
&lstm_5_while_lstm_5_while_loop_counter0
,lstm_5_while_lstm_5_while_maximum_iterations
lstm_5_while_placeholder
lstm_5_while_placeholder_1
lstm_5_while_placeholder_2
lstm_5_while_placeholder_3)
%lstm_5_while_lstm_5_strided_slice_1_0e
alstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0L
8lstm_5_while_lstm_cell_7_split_readvariableop_resource_0:
I
:lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0:	F
2lstm_5_while_lstm_cell_7_readvariableop_resource_0:
À
lstm_5_while_identity
lstm_5_while_identity_1
lstm_5_while_identity_2
lstm_5_while_identity_3
lstm_5_while_identity_4
lstm_5_while_identity_5'
#lstm_5_while_lstm_5_strided_slice_1c
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensorJ
6lstm_5_while_lstm_cell_7_split_readvariableop_resource:
G
8lstm_5_while_lstm_cell_7_split_1_readvariableop_resource:	D
0lstm_5_while_lstm_cell_7_readvariableop_resource:
À¢'lstm_5/while/lstm_cell_7/ReadVariableOp¢)lstm_5/while/lstm_cell_7/ReadVariableOp_1¢)lstm_5/while/lstm_cell_7/ReadVariableOp_2¢)lstm_5/while/lstm_cell_7/ReadVariableOp_3¢-lstm_5/while/lstm_cell_7/split/ReadVariableOp¢/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp
>lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ê
0lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0lstm_5_while_placeholderGlstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
(lstm_5/while/lstm_cell_7/ones_like/ShapeShape7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:m
(lstm_5/while/lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ã
"lstm_5/while/lstm_cell_7/ones_likeFill1lstm_5/while/lstm_cell_7/ones_like/Shape:output:01lstm_5/while/lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
&lstm_5/while/lstm_cell_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?¼
$lstm_5/while/lstm_cell_7/dropout/MulMul+lstm_5/while/lstm_cell_7/ones_like:output:0/lstm_5/while/lstm_cell_7/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm_5/while/lstm_cell_7/dropout/ShapeShape+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:¿
=lstm_5/while/lstm_cell_7/dropout/random_uniform/RandomUniformRandomUniform/lstm_5/while/lstm_cell_7/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0t
/lstm_5/while/lstm_cell_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ò
-lstm_5/while/lstm_cell_7/dropout/GreaterEqualGreaterEqualFlstm_5/while/lstm_cell_7/dropout/random_uniform/RandomUniform:output:08lstm_5/while/lstm_cell_7/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
%lstm_5/while/lstm_cell_7/dropout/CastCast1lstm_5/while/lstm_cell_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
&lstm_5/while/lstm_cell_7/dropout/Mul_1Mul(lstm_5/while/lstm_cell_7/dropout/Mul:z:0)lstm_5/while/lstm_cell_7/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
(lstm_5/while/lstm_cell_7/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?À
&lstm_5/while/lstm_cell_7/dropout_1/MulMul+lstm_5/while/lstm_cell_7/ones_like:output:01lstm_5/while/lstm_cell_7/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(lstm_5/while/lstm_cell_7/dropout_1/ShapeShape+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:Ã
?lstm_5/while/lstm_cell_7/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_7/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0v
1lstm_5/while/lstm_cell_7/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ø
/lstm_5/while/lstm_cell_7/dropout_1/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_7/dropout_1/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_7/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
'lstm_5/while/lstm_cell_7/dropout_1/CastCast3lstm_5/while/lstm_cell_7/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
(lstm_5/while/lstm_cell_7/dropout_1/Mul_1Mul*lstm_5/while/lstm_cell_7/dropout_1/Mul:z:0+lstm_5/while/lstm_cell_7/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
(lstm_5/while/lstm_cell_7/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?À
&lstm_5/while/lstm_cell_7/dropout_2/MulMul+lstm_5/while/lstm_cell_7/ones_like:output:01lstm_5/while/lstm_cell_7/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(lstm_5/while/lstm_cell_7/dropout_2/ShapeShape+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:Ã
?lstm_5/while/lstm_cell_7/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_7/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0v
1lstm_5/while/lstm_cell_7/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ø
/lstm_5/while/lstm_cell_7/dropout_2/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_7/dropout_2/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_7/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
'lstm_5/while/lstm_cell_7/dropout_2/CastCast3lstm_5/while/lstm_cell_7/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
(lstm_5/while/lstm_cell_7/dropout_2/Mul_1Mul*lstm_5/while/lstm_cell_7/dropout_2/Mul:z:0+lstm_5/while/lstm_cell_7/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
(lstm_5/while/lstm_cell_7/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?À
&lstm_5/while/lstm_cell_7/dropout_3/MulMul+lstm_5/while/lstm_cell_7/ones_like:output:01lstm_5/while/lstm_cell_7/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(lstm_5/while/lstm_cell_7/dropout_3/ShapeShape+lstm_5/while/lstm_cell_7/ones_like:output:0*
T0*
_output_shapes
:Ã
?lstm_5/while/lstm_cell_7/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_7/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0v
1lstm_5/while/lstm_cell_7/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ø
/lstm_5/while/lstm_cell_7/dropout_3/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_7/dropout_3/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_7/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
'lstm_5/while/lstm_cell_7/dropout_3/CastCast3lstm_5/while/lstm_cell_7/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
(lstm_5/while/lstm_cell_7/dropout_3/Mul_1Mul*lstm_5/while/lstm_cell_7/dropout_3/Mul:z:0+lstm_5/while/lstm_cell_7/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
*lstm_5/while/lstm_cell_7/ones_like_1/ShapeShapelstm_5_while_placeholder_2*
T0*
_output_shapes
:o
*lstm_5/while/lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?É
$lstm_5/while/lstm_cell_7/ones_like_1Fill3lstm_5/while/lstm_cell_7/ones_like_1/Shape:output:03lstm_5/while/lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
(lstm_5/while/lstm_cell_7/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?Â
&lstm_5/while/lstm_cell_7/dropout_4/MulMul-lstm_5/while/lstm_cell_7/ones_like_1:output:01lstm_5/while/lstm_cell_7/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
(lstm_5/while/lstm_cell_7/dropout_4/ShapeShape-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:Ã
?lstm_5/while/lstm_cell_7/dropout_4/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_7/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0v
1lstm_5/while/lstm_cell_7/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ø
/lstm_5/while/lstm_cell_7/dropout_4/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_7/dropout_4/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_7/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
'lstm_5/while/lstm_cell_7/dropout_4/CastCast3lstm_5/while/lstm_cell_7/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ»
(lstm_5/while/lstm_cell_7/dropout_4/Mul_1Mul*lstm_5/while/lstm_cell_7/dropout_4/Mul:z:0+lstm_5/while/lstm_cell_7/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
(lstm_5/while/lstm_cell_7/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?Â
&lstm_5/while/lstm_cell_7/dropout_5/MulMul-lstm_5/while/lstm_cell_7/ones_like_1:output:01lstm_5/while/lstm_cell_7/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
(lstm_5/while/lstm_cell_7/dropout_5/ShapeShape-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:Ã
?lstm_5/while/lstm_cell_7/dropout_5/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_7/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0v
1lstm_5/while/lstm_cell_7/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ø
/lstm_5/while/lstm_cell_7/dropout_5/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_7/dropout_5/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_7/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
'lstm_5/while/lstm_cell_7/dropout_5/CastCast3lstm_5/while/lstm_cell_7/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ»
(lstm_5/while/lstm_cell_7/dropout_5/Mul_1Mul*lstm_5/while/lstm_cell_7/dropout_5/Mul:z:0+lstm_5/while/lstm_cell_7/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
(lstm_5/while/lstm_cell_7/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?Â
&lstm_5/while/lstm_cell_7/dropout_6/MulMul-lstm_5/while/lstm_cell_7/ones_like_1:output:01lstm_5/while/lstm_cell_7/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
(lstm_5/while/lstm_cell_7/dropout_6/ShapeShape-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:Ã
?lstm_5/while/lstm_cell_7/dropout_6/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_7/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0v
1lstm_5/while/lstm_cell_7/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ø
/lstm_5/while/lstm_cell_7/dropout_6/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_7/dropout_6/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_7/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
'lstm_5/while/lstm_cell_7/dropout_6/CastCast3lstm_5/while/lstm_cell_7/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ»
(lstm_5/while/lstm_cell_7/dropout_6/Mul_1Mul*lstm_5/while/lstm_cell_7/dropout_6/Mul:z:0+lstm_5/while/lstm_cell_7/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀm
(lstm_5/while/lstm_cell_7/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?Â
&lstm_5/while/lstm_cell_7/dropout_7/MulMul-lstm_5/while/lstm_cell_7/ones_like_1:output:01lstm_5/while/lstm_cell_7/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
(lstm_5/while/lstm_cell_7/dropout_7/ShapeShape-lstm_5/while/lstm_cell_7/ones_like_1:output:0*
T0*
_output_shapes
:Ã
?lstm_5/while/lstm_cell_7/dropout_7/random_uniform/RandomUniformRandomUniform1lstm_5/while/lstm_cell_7/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
dtype0v
1lstm_5/while/lstm_cell_7/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>ø
/lstm_5/while/lstm_cell_7/dropout_7/GreaterEqualGreaterEqualHlstm_5/while/lstm_cell_7/dropout_7/random_uniform/RandomUniform:output:0:lstm_5/while/lstm_cell_7/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
'lstm_5/while/lstm_cell_7/dropout_7/CastCast3lstm_5/while/lstm_cell_7/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ»
(lstm_5/while/lstm_cell_7/dropout_7/Mul_1Mul*lstm_5/while/lstm_cell_7/dropout_7/Mul:z:0+lstm_5/while/lstm_cell_7/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ»
lstm_5/while/lstm_cell_7/mulMul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_5/while/lstm_cell_7/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
lstm_5/while/lstm_cell_7/mul_1Mul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_5/while/lstm_cell_7/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
lstm_5/while/lstm_cell_7/mul_2Mul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_5/while/lstm_cell_7/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
lstm_5/while/lstm_cell_7/mul_3Mul7lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_5/while/lstm_cell_7/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm_5/while/lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¨
-lstm_5/while/lstm_cell_7/split/ReadVariableOpReadVariableOp8lstm_5_while_lstm_cell_7_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ñ
lstm_5/while/lstm_cell_7/splitSplit1lstm_5/while/lstm_cell_7/split/split_dim:output:05lstm_5/while/lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split§
lstm_5/while/lstm_cell_7/MatMulMatMul lstm_5/while/lstm_cell_7/mul:z:0'lstm_5/while/lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ«
!lstm_5/while/lstm_cell_7/MatMul_1MatMul"lstm_5/while/lstm_cell_7/mul_1:z:0'lstm_5/while/lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ«
!lstm_5/while/lstm_cell_7/MatMul_2MatMul"lstm_5/while/lstm_cell_7/mul_2:z:0'lstm_5/while/lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ«
!lstm_5/while/lstm_cell_7/MatMul_3MatMul"lstm_5/while/lstm_cell_7/mul_3:z:0'lstm_5/while/lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀl
*lstm_5/while/lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : §
/lstm_5/while/lstm_cell_7/split_1/ReadVariableOpReadVariableOp:lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0ã
 lstm_5/while/lstm_cell_7/split_1Split3lstm_5/while/lstm_cell_7/split_1/split_dim:output:07lstm_5/while/lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split´
 lstm_5/while/lstm_cell_7/BiasAddBiasAdd)lstm_5/while/lstm_cell_7/MatMul:product:0)lstm_5/while/lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
"lstm_5/while/lstm_cell_7/BiasAdd_1BiasAdd+lstm_5/while/lstm_cell_7/MatMul_1:product:0)lstm_5/while/lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
"lstm_5/while/lstm_cell_7/BiasAdd_2BiasAdd+lstm_5/while/lstm_cell_7/MatMul_2:product:0)lstm_5/while/lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¸
"lstm_5/while/lstm_cell_7/BiasAdd_3BiasAdd+lstm_5/while/lstm_cell_7/MatMul_3:product:0)lstm_5/while/lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/while/lstm_cell_7/mul_4Mullstm_5_while_placeholder_2,lstm_5/while/lstm_cell_7/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/while/lstm_cell_7/mul_5Mullstm_5_while_placeholder_2,lstm_5/while/lstm_cell_7/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/while/lstm_cell_7/mul_6Mullstm_5_while_placeholder_2,lstm_5/while/lstm_cell_7/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/while/lstm_cell_7/mul_7Mullstm_5_while_placeholder_2,lstm_5/while/lstm_cell_7/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
'lstm_5/while/lstm_cell_7/ReadVariableOpReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0}
,lstm_5/while/lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
.lstm_5/while/lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
.lstm_5/while/lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ê
&lstm_5/while/lstm_cell_7/strided_sliceStridedSlice/lstm_5/while/lstm_cell_7/ReadVariableOp:value:05lstm_5/while/lstm_cell_7/strided_slice/stack:output:07lstm_5/while/lstm_cell_7/strided_slice/stack_1:output:07lstm_5/while/lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask³
!lstm_5/while/lstm_cell_7/MatMul_4MatMul"lstm_5/while/lstm_cell_7/mul_4:z:0/lstm_5/while/lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ°
lstm_5/while/lstm_cell_7/addAddV2)lstm_5/while/lstm_cell_7/BiasAdd:output:0+lstm_5/while/lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 lstm_5/while/lstm_cell_7/SigmoidSigmoid lstm_5/while/lstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)lstm_5/while/lstm_cell_7/ReadVariableOp_1ReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
.lstm_5/while/lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
0lstm_5/while/lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      
0lstm_5/while/lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
(lstm_5/while/lstm_cell_7/strided_slice_1StridedSlice1lstm_5/while/lstm_cell_7/ReadVariableOp_1:value:07lstm_5/while/lstm_cell_7/strided_slice_1/stack:output:09lstm_5/while/lstm_cell_7/strided_slice_1/stack_1:output:09lstm_5/while/lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskµ
!lstm_5/while/lstm_cell_7/MatMul_5MatMul"lstm_5/while/lstm_cell_7/mul_5:z:01lstm_5/while/lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ´
lstm_5/while/lstm_cell_7/add_1AddV2+lstm_5/while/lstm_cell_7/BiasAdd_1:output:0+lstm_5/while/lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"lstm_5/while/lstm_cell_7/Sigmoid_1Sigmoid"lstm_5/while/lstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/while/lstm_cell_7/mul_8Mul&lstm_5/while/lstm_cell_7/Sigmoid_1:y:0lstm_5_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)lstm_5/while/lstm_cell_7/ReadVariableOp_2ReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
.lstm_5/while/lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      
0lstm_5/while/lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  
0lstm_5/while/lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
(lstm_5/while/lstm_cell_7/strided_slice_2StridedSlice1lstm_5/while/lstm_cell_7/ReadVariableOp_2:value:07lstm_5/while/lstm_cell_7/strided_slice_2/stack:output:09lstm_5/while/lstm_cell_7/strided_slice_2/stack_1:output:09lstm_5/while/lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskµ
!lstm_5/while/lstm_cell_7/MatMul_6MatMul"lstm_5/while/lstm_cell_7/mul_6:z:01lstm_5/while/lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ´
lstm_5/while/lstm_cell_7/add_2AddV2+lstm_5/while/lstm_cell_7/BiasAdd_2:output:0+lstm_5/while/lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ|
lstm_5/while/lstm_cell_7/TanhTanh"lstm_5/while/lstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¡
lstm_5/while/lstm_cell_7/mul_9Mul$lstm_5/while/lstm_cell_7/Sigmoid:y:0!lstm_5/while/lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¢
lstm_5/while/lstm_cell_7/add_3AddV2"lstm_5/while/lstm_cell_7/mul_8:z:0"lstm_5/while/lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
)lstm_5/while/lstm_cell_7/ReadVariableOp_3ReadVariableOp2lstm_5_while_lstm_cell_7_readvariableop_resource_0* 
_output_shapes
:
À*
dtype0
.lstm_5/while/lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  
0lstm_5/while/lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
0lstm_5/while/lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ô
(lstm_5/while/lstm_cell_7/strided_slice_3StridedSlice1lstm_5/while/lstm_cell_7/ReadVariableOp_3:value:07lstm_5/while/lstm_cell_7/strided_slice_3/stack:output:09lstm_5/while/lstm_cell_7/strided_slice_3/stack_1:output:09lstm_5/while/lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_maskµ
!lstm_5/while/lstm_cell_7/MatMul_7MatMul"lstm_5/while/lstm_cell_7/mul_7:z:01lstm_5/while/lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ´
lstm_5/while/lstm_cell_7/add_4AddV2+lstm_5/while/lstm_cell_7/BiasAdd_3:output:0+lstm_5/while/lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"lstm_5/while/lstm_cell_7/Sigmoid_2Sigmoid"lstm_5/while/lstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ~
lstm_5/while/lstm_cell_7/Tanh_1Tanh"lstm_5/while/lstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ¦
lstm_5/while/lstm_cell_7/mul_10Mul&lstm_5/while/lstm_cell_7/Sigmoid_2:y:0#lstm_5/while/lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀá
1lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_5_while_placeholder_1lstm_5_while_placeholder#lstm_5/while/lstm_cell_7/mul_10:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_5/while/addAddV2lstm_5_while_placeholderlstm_5/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_5/while/add_1AddV2&lstm_5_while_lstm_5_while_loop_counterlstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_5/while/IdentityIdentitylstm_5/while/add_1:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: 
lstm_5/while/Identity_1Identity,lstm_5_while_lstm_5_while_maximum_iterations^lstm_5/while/NoOp*
T0*
_output_shapes
: n
lstm_5/while/Identity_2Identitylstm_5/while/add:z:0^lstm_5/while/NoOp*
T0*
_output_shapes
: ®
lstm_5/while/Identity_3IdentityAlstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_5/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_5/while/Identity_4Identity#lstm_5/while/lstm_cell_7/mul_10:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_5/while/Identity_5Identity"lstm_5/while/lstm_cell_7/add_3:z:0^lstm_5/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀã
lstm_5/while/NoOpNoOp(^lstm_5/while/lstm_cell_7/ReadVariableOp*^lstm_5/while/lstm_cell_7/ReadVariableOp_1*^lstm_5/while/lstm_cell_7/ReadVariableOp_2*^lstm_5/while/lstm_cell_7/ReadVariableOp_3.^lstm_5/while/lstm_cell_7/split/ReadVariableOp0^lstm_5/while/lstm_cell_7/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_5_while_identitylstm_5/while/Identity:output:0";
lstm_5_while_identity_1 lstm_5/while/Identity_1:output:0";
lstm_5_while_identity_2 lstm_5/while/Identity_2:output:0";
lstm_5_while_identity_3 lstm_5/while/Identity_3:output:0";
lstm_5_while_identity_4 lstm_5/while/Identity_4:output:0";
lstm_5_while_identity_5 lstm_5/while/Identity_5:output:0"L
#lstm_5_while_lstm_5_strided_slice_1%lstm_5_while_lstm_5_strided_slice_1_0"f
0lstm_5_while_lstm_cell_7_readvariableop_resource2lstm_5_while_lstm_cell_7_readvariableop_resource_0"v
8lstm_5_while_lstm_cell_7_split_1_readvariableop_resource:lstm_5_while_lstm_cell_7_split_1_readvariableop_resource_0"r
6lstm_5_while_lstm_cell_7_split_readvariableop_resource8lstm_5_while_lstm_cell_7_split_readvariableop_resource_0"Ä
_lstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensoralstm_5_while_tensorarrayv2read_tensorlistgetitem_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : 2R
'lstm_5/while/lstm_cell_7/ReadVariableOp'lstm_5/while/lstm_cell_7/ReadVariableOp2V
)lstm_5/while/lstm_cell_7/ReadVariableOp_1)lstm_5/while/lstm_cell_7/ReadVariableOp_12V
)lstm_5/while/lstm_cell_7/ReadVariableOp_2)lstm_5/while/lstm_cell_7/ReadVariableOp_22V
)lstm_5/while/lstm_cell_7/ReadVariableOp_3)lstm_5/while/lstm_cell_7/ReadVariableOp_32^
-lstm_5/while/lstm_cell_7/split/ReadVariableOp-lstm_5/while/lstm_cell_7/split/ReadVariableOp2b
/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp/lstm_5/while/lstm_cell_7/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ:

_output_shapes
: :

_output_shapes
: 
ì
ß
B__inference_lstm_5_layer_call_and_return_conditional_losses_113760

inputs=
)lstm_cell_7_split_readvariableop_resource:
:
+lstm_cell_7_split_1_readvariableop_resource:	7
#lstm_cell_7_readvariableop_resource:
À
identity¢lstm_cell_7/ReadVariableOp¢lstm_cell_7/ReadVariableOp_1¢lstm_cell_7/ReadVariableOp_2¢lstm_cell_7/ReadVariableOp_3¢ lstm_cell_7/split/ReadVariableOp¢"lstm_cell_7/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Às
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Àw
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskc
lstm_cell_7/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:`
lstm_cell_7/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_7/ones_likeFill$lstm_cell_7/ones_like/Shape:output:0$lstm_cell_7/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell_7/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:b
lstm_cell_7/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¢
lstm_cell_7/ones_like_1Fill&lstm_cell_7/ones_like_1/Shape:output:0&lstm_cell_7/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mulMulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_1Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_2Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_7/mul_3Mulstrided_slice_2:output:0lstm_cell_7/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_7/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
 lstm_cell_7/split/ReadVariableOpReadVariableOp)lstm_cell_7_split_readvariableop_resource* 
_output_shapes
:
*
dtype0Ê
lstm_cell_7/splitSplit$lstm_cell_7/split/split_dim:output:0(lstm_cell_7/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
À:
À:
À:
À*
	num_split
lstm_cell_7/MatMulMatMullstm_cell_7/mul:z:0lstm_cell_7/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_1MatMullstm_cell_7/mul_1:z:0lstm_cell_7/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_2MatMullstm_cell_7/mul_2:z:0lstm_cell_7/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/MatMul_3MatMullstm_cell_7/mul_3:z:0lstm_cell_7/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ_
lstm_cell_7/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
"lstm_cell_7/split_1/ReadVariableOpReadVariableOp+lstm_cell_7_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0¼
lstm_cell_7/split_1Split&lstm_cell_7/split_1/split_dim:output:0*lstm_cell_7/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:À:À:À:À*
	num_split
lstm_cell_7/BiasAddBiasAddlstm_cell_7/MatMul:product:0lstm_cell_7/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_1BiasAddlstm_cell_7/MatMul_1:product:0lstm_cell_7/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_2BiasAddlstm_cell_7/MatMul_2:product:0lstm_cell_7/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/BiasAdd_3BiasAddlstm_cell_7/MatMul_3:product:0lstm_cell_7/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_4Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_5Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_6Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ}
lstm_cell_7/mul_7Mulzeros:output:0 lstm_cell_7/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOpReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0p
lstm_cell_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        r
!lstm_cell_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   r
!lstm_cell_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
lstm_cell_7/strided_sliceStridedSlice"lstm_cell_7/ReadVariableOp:value:0(lstm_cell_7/strided_slice/stack:output:0*lstm_cell_7/strided_slice/stack_1:output:0*lstm_cell_7/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_4MatMullstm_cell_7/mul_4:z:0"lstm_cell_7/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/addAddV2lstm_cell_7/BiasAdd:output:0lstm_cell_7/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀf
lstm_cell_7/SigmoidSigmoidlstm_cell_7/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_1ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   t
#lstm_cell_7/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_1StridedSlice$lstm_cell_7/ReadVariableOp_1:value:0*lstm_cell_7/strided_slice_1/stack:output:0,lstm_cell_7/strided_slice_1/stack_1:output:0,lstm_cell_7/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_5MatMullstm_cell_7/mul_5:z:0$lstm_cell_7/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_1AddV2lstm_cell_7/BiasAdd_1:output:0lstm_cell_7/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_1Sigmoidlstm_cell_7/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀx
lstm_cell_7/mul_8Mullstm_cell_7/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_2ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      t
#lstm_cell_7/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_2StridedSlice$lstm_cell_7/ReadVariableOp_2:value:0*lstm_cell_7/strided_slice_2/stack:output:0,lstm_cell_7/strided_slice_2/stack_1:output:0,lstm_cell_7/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_6MatMullstm_cell_7/mul_6:z:0$lstm_cell_7/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_2AddV2lstm_cell_7/BiasAdd_2:output:0lstm_cell_7/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀb
lstm_cell_7/TanhTanhlstm_cell_7/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀz
lstm_cell_7/mul_9Mullstm_cell_7/Sigmoid:y:0lstm_cell_7/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ{
lstm_cell_7/add_3AddV2lstm_cell_7/mul_8:z:0lstm_cell_7/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/ReadVariableOp_3ReadVariableOp#lstm_cell_7_readvariableop_resource* 
_output_shapes
:
À*
dtype0r
!lstm_cell_7/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    @  t
#lstm_cell_7/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        t
#lstm_cell_7/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ³
lstm_cell_7/strided_slice_3StridedSlice$lstm_cell_7/ReadVariableOp_3:value:0*lstm_cell_7/strided_slice_3/stack:output:0,lstm_cell_7/strided_slice_3/stack_1:output:0,lstm_cell_7/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÀÀ*

begin_mask*
end_mask
lstm_cell_7/MatMul_7MatMullstm_cell_7/mul_7:z:0$lstm_cell_7/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/add_4AddV2lstm_cell_7/BiasAdd_3:output:0lstm_cell_7/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀj
lstm_cell_7/Sigmoid_2Sigmoidlstm_cell_7/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀd
lstm_cell_7/Tanh_1Tanhlstm_cell_7/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
lstm_cell_7/mul_10Mullstm_cell_7/Sigmoid_2:y:0lstm_cell_7/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_7_split_readvariableop_resource+lstm_cell_7_split_1_readvariableop_resource#lstm_cell_7_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_113626*
condR
while_cond_113625*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:xÿÿÿÿÿÿÿÿÿÀ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿxÀ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
NoOpNoOp^lstm_cell_7/ReadVariableOp^lstm_cell_7/ReadVariableOp_1^lstm_cell_7/ReadVariableOp_2^lstm_cell_7/ReadVariableOp_3!^lstm_cell_7/split/ReadVariableOp#^lstm_cell_7/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿx: : : 28
lstm_cell_7/ReadVariableOplstm_cell_7/ReadVariableOp2<
lstm_cell_7/ReadVariableOp_1lstm_cell_7/ReadVariableOp_12<
lstm_cell_7/ReadVariableOp_2lstm_cell_7/ReadVariableOp_22<
lstm_cell_7/ReadVariableOp_3lstm_cell_7/ReadVariableOp_32D
 lstm_cell_7/split/ReadVariableOp lstm_cell_7/split/ReadVariableOp2H
"lstm_cell_7/split_1/ReadVariableOp"lstm_cell_7/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿx
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
O
embedding_8_input:
#serving_default_embedding_8_input:0ÿÿÿÿÿÿÿÿÿx<
dense_150
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ËÉ
Ý
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer_with_weights-5
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
µ

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
 	keras_api
!__call__
*"&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'_random_generator
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
*axis
	+gamma
,beta
-moving_mean
.moving_variance
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses"
_tf_keras_layer
Ú
5cell
6
state_spec
7	variables
8trainable_variables
9regularization_losses
:	keras_api
;_random_generator
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
ê
>axis
	?gamma
@beta
Amoving_mean
Bmoving_variance
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Ikernel
Jbias
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
Ã
Qiter

Rbeta_1

Sbeta_2
	Tdecay
Ulearning_ratemmm+m,m?m @m¡Im¢Jm£Vm¤Wm¥Xm¦v§v¨v©+vª,v«?v¬@v­Iv®Jv¯Vv°Wv±Xv²"
	optimizer
¦
0
1
2
3
4
+5
,6
-7
.8
V9
W10
X11
?12
@13
A14
B15
I16
J17"
trackable_list_wrapper
v
0
1
2
+3
,4
V5
W6
X7
?8
@9
I10
J11"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_8_layer_call_fn_111042
-__inference_sequential_8_layer_call_fn_111764
-__inference_sequential_8_layer_call_fn_111805
-__inference_sequential_8_layer_call_fn_111623À
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
î2ë
H__inference_sequential_8_layer_call_and_return_conditional_losses_112110
H__inference_sequential_8_layer_call_and_return_conditional_losses_112602
H__inference_sequential_8_layer_call_and_return_conditional_losses_111670
H__inference_sequential_8_layer_call_and_return_conditional_losses_111717À
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
ÖBÓ
!__inference__wrapped_model_109887embedding_8_input"
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
,
^serving_default"
signature_map
+:)À¸2embedding_8/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_embedding_8_layer_call_fn_112652¢
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
G__inference_embedding_8_layer_call_and_return_conditional_losses_112662¢
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
 "
trackable_list_wrapper
(:&2batch_normalization/gamma
':%2batch_normalization/beta
0:. (2batch_normalization/moving_mean
4:2 (2#batch_normalization/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
!__call__
*"&call_and_return_all_conditional_losses
&""call_and_return_conditional_losses"
_generic_user_object
¦2£
4__inference_batch_normalization_layer_call_fn_112675
4__inference_batch_normalization_layer_call_fn_112688´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
O__inference_batch_normalization_layer_call_and_return_conditional_losses_112708
O__inference_batch_normalization_layer_call_and_return_conditional_losses_112742´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
#	variables
$trainable_variables
%regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¦2£
4__inference_spatial_dropout1d_5_layer_call_fn_112747
4__inference_spatial_dropout1d_5_layer_call_fn_112752´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ü2Ù
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_112757
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_112779´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
*:(2batch_normalization_1/gamma
):'2batch_normalization_1/beta
2:0 (2!batch_normalization_1/moving_mean
6:4 (2%batch_normalization_1/moving_variance
<
+0
,1
-2
.3"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
ª2§
6__inference_batch_normalization_1_layer_call_fn_112792
6__inference_batch_normalization_1_layer_call_fn_112805´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112825
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112859´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ø
s
state_size

Vkernel
Wrecurrent_kernel
Xbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x_random_generator
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
º

{states
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
7	variables
8trainable_variables
9regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ÿ2ü
'__inference_lstm_5_layer_call_fn_112870
'__inference_lstm_5_layer_call_fn_112881
'__inference_lstm_5_layer_call_fn_112892
'__inference_lstm_5_layer_call_fn_112903Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_5_layer_call_and_return_conditional_losses_113146
B__inference_lstm_5_layer_call_and_return_conditional_losses_113517
B__inference_lstm_5_layer_call_and_return_conditional_losses_113760
B__inference_lstm_5_layer_call_and_return_conditional_losses_114131Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
*:(À2batch_normalization_2/gamma
):'À2batch_normalization_2/beta
2:0À (2!batch_normalization_2/moving_mean
6:4À (2%batch_normalization_2/moving_variance
<
?0
@1
A2
B3"
trackable_list_wrapper
.
?0
@1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
ª2§
6__inference_batch_normalization_2_layer_call_fn_114144
6__inference_batch_normalization_2_layer_call_fn_114157´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
à2Ý
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_114177
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_114211´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
": 	À2dense_15/kernel
:2dense_15/bias
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_15_layer_call_fn_114220¢
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
î2ë
D__inference_dense_15_layer_call_and_return_conditional_losses_114231¢
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+
2lstm_5/lstm_cell_7/kernel
7:5
À2#lstm_5/lstm_cell_7/recurrent_kernel
&:$2lstm_5/lstm_cell_7/bias
J
0
1
-2
.3
A4
B5"
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÕBÒ
$__inference_signature_wrapper_112645embedding_8_input"
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
 
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
.
0
1"
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
.
-0
.1"
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
5
V0
W1
X2"
trackable_list_wrapper
5
V0
W1
X2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
t	variables
utrainable_variables
vregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 2
,__inference_lstm_cell_7_layer_call_fn_114248
,__inference_lstm_cell_7_layer_call_fn_114265¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_114347
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_114493¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
50"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
A0
B1"
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count

_fn_kwargs
	variables
	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
0:.À¸2Adam/embedding_8/embeddings/m
-:+2 Adam/batch_normalization/gamma/m
,:*2Adam/batch_normalization/beta/m
/:-2"Adam/batch_normalization_1/gamma/m
.:,2!Adam/batch_normalization_1/beta/m
/:-À2"Adam/batch_normalization_2/gamma/m
.:,À2!Adam/batch_normalization_2/beta/m
':%	À2Adam/dense_15/kernel/m
 :2Adam/dense_15/bias/m
2:0
2 Adam/lstm_5/lstm_cell_7/kernel/m
<::
À2*Adam/lstm_5/lstm_cell_7/recurrent_kernel/m
+:)2Adam/lstm_5/lstm_cell_7/bias/m
0:.À¸2Adam/embedding_8/embeddings/v
-:+2 Adam/batch_normalization/gamma/v
,:*2Adam/batch_normalization/beta/v
/:-2"Adam/batch_normalization_1/gamma/v
.:,2!Adam/batch_normalization_1/beta/v
/:-À2"Adam/batch_normalization_2/gamma/v
.:,À2!Adam/batch_normalization_2/beta/v
':%	À2Adam/dense_15/kernel/v
 :2Adam/dense_15/bias/v
2:0
2 Adam/lstm_5/lstm_cell_7/kernel/v
<::
À2*Adam/lstm_5/lstm_cell_7/recurrent_kernel/v
+:)2Adam/lstm_5/lstm_cell_7/bias/v«
!__inference__wrapped_model_109887.+-,VXWB?A@IJ:¢7
0¢-
+(
embedding_8_inputÿÿÿÿÿÿÿÿÿx
ª "3ª0
.
dense_15"
dense_15ÿÿÿÿÿÿÿÿÿÓ
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112825~.+-,A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ó
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_112859~-.+,A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 «
6__inference_batch_normalization_1_layer_call_fn_112792q.+-,A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ«
6__inference_batch_normalization_1_layer_call_fn_112805q-.+,A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_114177dB?A@4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÀ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 ¹
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_114211dAB?@4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÀ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
6__inference_batch_normalization_2_layer_call_fn_114144WB?A@4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÀ
p 
ª "ÿÿÿÿÿÿÿÿÿÀ
6__inference_batch_normalization_2_layer_call_fn_114157WAB?@4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿÀ
p
ª "ÿÿÿÿÿÿÿÿÿÀÑ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_112708~A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ñ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_112742~A¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ©
4__inference_batch_normalization_layer_call_fn_112675qA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
4__inference_batch_normalization_layer_call_fn_112688qA¢>
7¢4
.+
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_15_layer_call_and_return_conditional_losses_114231]IJ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_15_layer_call_fn_114220PIJ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ«
G__inference_embedding_8_layer_call_and_return_conditional_losses_112662`/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿx
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿx
 
,__inference_embedding_8_layer_call_fn_112652S/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿx
ª "ÿÿÿÿÿÿÿÿÿxÅ
B__inference_lstm_5_layer_call_and_return_conditional_losses_113146VXWP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 Å
B__inference_lstm_5_layer_call_and_return_conditional_losses_113517VXWP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 µ
B__inference_lstm_5_layer_call_and_return_conditional_losses_113760oVXW@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿx

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 µ
B__inference_lstm_5_layer_call_and_return_conditional_losses_114131oVXW@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿx

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
'__inference_lstm_5_layer_call_fn_112870rVXWP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÀ
'__inference_lstm_5_layer_call_fn_112881rVXWP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÀ
'__inference_lstm_5_layer_call_fn_112892bVXW@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿx

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÀ
'__inference_lstm_5_layer_call_fn_112903bVXW@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿx

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÀÐ
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_114347VXW¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÀ
# 
states/1ÿÿÿÿÿÿÿÿÿÀ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿÀ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿÀ
 
0/1/1ÿÿÿÿÿÿÿÿÿÀ
 Ð
G__inference_lstm_cell_7_layer_call_and_return_conditional_losses_114493VXW¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÀ
# 
states/1ÿÿÿÿÿÿÿÿÿÀ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿÀ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿÀ
 
0/1/1ÿÿÿÿÿÿÿÿÿÀ
 ¥
,__inference_lstm_cell_7_layer_call_fn_114248ôVXW¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÀ
# 
states/1ÿÿÿÿÿÿÿÿÿÀ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿÀ
C@

1/0ÿÿÿÿÿÿÿÿÿÀ

1/1ÿÿÿÿÿÿÿÿÿÀ¥
,__inference_lstm_cell_7_layer_call_fn_114265ôVXW¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÀ
# 
states/1ÿÿÿÿÿÿÿÿÿÀ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿÀ
C@

1/0ÿÿÿÿÿÿÿÿÿÀ

1/1ÿÿÿÿÿÿÿÿÿÀË
H__inference_sequential_8_layer_call_and_return_conditional_losses_111670.+-,VXWB?A@IJB¢?
8¢5
+(
embedding_8_inputÿÿÿÿÿÿÿÿÿx
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ë
H__inference_sequential_8_layer_call_and_return_conditional_losses_111717-.+,VXWAB?@IJB¢?
8¢5
+(
embedding_8_inputÿÿÿÿÿÿÿÿÿx
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_8_layer_call_and_return_conditional_losses_112110t.+-,VXWB?A@IJ7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿx
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
H__inference_sequential_8_layer_call_and_return_conditional_losses_112602t-.+,VXWAB?@IJ7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿx
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 £
-__inference_sequential_8_layer_call_fn_111042r.+-,VXWB?A@IJB¢?
8¢5
+(
embedding_8_inputÿÿÿÿÿÿÿÿÿx
p 

 
ª "ÿÿÿÿÿÿÿÿÿ£
-__inference_sequential_8_layer_call_fn_111623r-.+,VXWAB?@IJB¢?
8¢5
+(
embedding_8_inputÿÿÿÿÿÿÿÿÿx
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_8_layer_call_fn_111764g.+-,VXWB?A@IJ7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿx
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_8_layer_call_fn_111805g-.+,VXWAB?@IJ7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿx
p

 
ª "ÿÿÿÿÿÿÿÿÿÃ
$__inference_signature_wrapper_112645.+-,VXWB?A@IJO¢L
¢ 
EªB
@
embedding_8_input+(
embedding_8_inputÿÿÿÿÿÿÿÿÿx"3ª0
.
dense_15"
dense_15ÿÿÿÿÿÿÿÿÿÜ
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_112757I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ü
O__inference_spatial_dropout1d_5_layer_call_and_return_conditional_losses_112779I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ³
4__inference_spatial_dropout1d_5_layer_call_fn_112747{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³
4__inference_spatial_dropout1d_5_layer_call_fn_112752{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ