††
сј
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
р
SparseCross
indices	*N
values2sparse_types
shapes	*N
dense_inputs2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("
hash_keyint"$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
Љ
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58ћь

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
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
x
Adam/v/fare/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/v/fare/bias
q
$Adam/v/fare/bias/Read/ReadVariableOpReadVariableOpAdam/v/fare/bias*
_output_shapes
:*
dtype0
x
Adam/m/fare/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameAdam/m/fare/bias
q
$Adam/m/fare/bias/Read/ReadVariableOpReadVariableOpAdam/m/fare/bias*
_output_shapes
:*
dtype0
А
Adam/v/fare/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_nameAdam/v/fare/kernel
y
&Adam/v/fare/kernel/Read/ReadVariableOpReadVariableOpAdam/v/fare/kernel*
_output_shapes

:*
dtype0
А
Adam/m/fare/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*#
shared_nameAdam/m/fare/kernel
y
&Adam/m/fare/kernel/Read/ReadVariableOpReadVariableOpAdam/m/fare/kernel*
_output_shapes

:*
dtype0
t
Adam/v/h1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/v/h1/bias
m
"Adam/v/h1/bias/Read/ReadVariableOpReadVariableOpAdam/v/h1/bias*
_output_shapes
:*
dtype0
t
Adam/m/h1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameAdam/m/h1/bias
m
"Adam/m/h1/bias/Read/ReadVariableOpReadVariableOpAdam/m/h1/bias*
_output_shapes
:*
dtype0
|
Adam/v/h1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_nameAdam/v/h1/kernel
u
$Adam/v/h1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/h1/kernel*
_output_shapes

: *
dtype0
|
Adam/m/h1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_nameAdam/m/h1/kernel
u
$Adam/m/h1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/h1/kernel*
_output_shapes

: *
dtype0
t
Adam/v/h0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/v/h0/bias
m
"Adam/v/h0/bias/Read/ReadVariableOpReadVariableOpAdam/v/h0/bias*
_output_shapes
: *
dtype0
t
Adam/m/h0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/m/h0/bias
m
"Adam/m/h0/bias/Read/ReadVariableOpReadVariableOpAdam/m/h0/bias*
_output_shapes
: *
dtype0
|
Adam/v/h0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_nameAdam/v/h0/kernel
u
$Adam/v/h0/kernel/Read/ReadVariableOpReadVariableOpAdam/v/h0/kernel*
_output_shapes

: *
dtype0
|
Adam/m/h0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *!
shared_nameAdam/m/h0/kernel
u
$Adam/m/h0/kernel/Read/ReadVariableOpReadVariableOpAdam/m/h0/kernel*
_output_shapes

: *
dtype0
С
Adam/v/pd_embed/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	РN
*+
shared_nameAdam/v/pd_embed/embeddings
К
.Adam/v/pd_embed/embeddings/Read/ReadVariableOpReadVariableOpAdam/v/pd_embed/embeddings*
_output_shapes
:	РN
*
dtype0
С
Adam/m/pd_embed/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	РN
*+
shared_nameAdam/m/pd_embed/embeddings
К
.Adam/m/pd_embed/embeddings/Read/ReadVariableOpReadVariableOpAdam/m/pd_embed/embeddings*
_output_shapes
:	РN
*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
j
	fare/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	fare/bias
c
fare/bias/Read/ReadVariableOpReadVariableOp	fare/bias*
_output_shapes
:*
dtype0
r
fare/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namefare/kernel
k
fare/kernel/Read/ReadVariableOpReadVariableOpfare/kernel*
_output_shapes

:*
dtype0
f
h1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	h1/bias
_
h1/bias/Read/ReadVariableOpReadVariableOph1/bias*
_output_shapes
:*
dtype0
n
	h1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_name	h1/kernel
g
h1/kernel/Read/ReadVariableOpReadVariableOp	h1/kernel*
_output_shapes

: *
dtype0
f
h0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	h0/bias
_
h0/bias/Read/ReadVariableOpReadVariableOph0/bias*
_output_shapes
: *
dtype0
n
	h0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_name	h0/kernel
g
h0/kernel/Read/ReadVariableOpReadVariableOp	h0/kernel*
_output_shapes

: *
dtype0
Г
pd_embed/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	РN
*$
shared_namepd_embed/embeddings
|
'pd_embed/embeddings/Read/ReadVariableOpReadVariableOppd_embed/embeddings*
_output_shapes
:	РN
*
dtype0
Г
 serving_default_dropoff_latitudePlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Д
!serving_default_dropoff_longitudePlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
В
serving_default_passenger_countPlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
В
serving_default_pickup_latitudePlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
Г
 serving_default_pickup_longitudePlaceholder*'
_output_shapes
:€€€€€€€€€*
dtype0*
shape:€€€€€€€€€
®
StatefulPartitionedCallStatefulPartitionedCall serving_default_dropoff_latitude!serving_default_dropoff_longitudeserving_default_passenger_countserving_default_pickup_latitude serving_default_pickup_longitudepd_embed/embeddings	h0/kernelh0/bias	h1/kernelh1/biasfare/kernel	fare/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_35453

NoOpNoOp
≈c
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Аc
valueцbBуb Bмb
м
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-0
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-1
layer-20
layer_with_weights-2
layer-21
layer_with_weights-3
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures*
* 
* 
* 
* 
О
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
О
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses* 
О
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
О
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses* 
?
9	keras_api
:input_bin_boundaries
;bin_boundaries* 
?
<	keras_api
=input_bin_boundaries
>bin_boundaries* 
?
?	keras_api
@input_bin_boundaries
Abin_boundaries* 
?
B	keras_api
Cinput_bin_boundaries
Dbin_boundaries* 
О
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
О
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
О
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
†
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]
embeddings*
О
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses* 
О
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses* 
* 
О
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses* 
¶
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias*
¶
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias*
Ѓ
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
Жkernel
	Зbias*
7
]0
v1
w2
~3
4
Ж5
З6*
7
]0
v1
w2
~3
4
Ж5
З6*
* 
µ
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
Нtrace_0
Оtrace_1
Пtrace_2
Рtrace_3* 
:
Сtrace_0
Тtrace_1
Уtrace_2
Фtrace_3* 
* 
И
Х
_variables
Ц_iterations
Ч_learning_rate
Ш_index_dict
Щ
_momentums
Ъ_velocities
Ы_update_step_xla*

Ьserving_default* 
* 
* 
* 
Ц
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 

Ґtrace_0
£trace_1* 

§trace_0
•trace_1* 
* 
* 
* 
Ц
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses* 

Ђtrace_0
ђtrace_1* 

≠trace_0
Ѓtrace_1* 
* 
* 
* 
Ц
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

іtrace_0
µtrace_1* 

ґtrace_0
Јtrace_1* 
* 
* 
* 
Ц
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses* 

љtrace_0
Њtrace_1* 

њtrace_0
јtrace_1* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Ц
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 

∆trace_0* 

«trace_0* 
* 
* 
* 
Ц
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

Ќtrace_0* 

ќtrace_0* 
* 
* 
* 
Ц
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 

‘trace_0* 

’trace_0* 

]0*

]0*
* 
Ш
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*

џtrace_0* 

№trace_0* 
ga
VARIABLE_VALUEpd_embed/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ц
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses* 

вtrace_0
гtrace_1* 

дtrace_0
еtrace_1* 
* 
* 
* 
Ц
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses* 

лtrace_0* 

мtrace_0* 
* 
* 
* 
Ц
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses* 

тtrace_0* 

уtrace_0* 

v0
w1*

v0
w1*
* 
Ш
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses*

щtrace_0* 

ъtrace_0* 
YS
VARIABLE_VALUE	h0/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEh0/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

~0
1*

~0
1*
* 
Ш
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

Аtrace_0* 

Бtrace_0* 
YS
VARIABLE_VALUE	h1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEh1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

Ж0
З1*

Ж0
З1*
* 
Ю
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses*

Зtrace_0* 

Иtrace_0* 
[U
VARIABLE_VALUEfare/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUE	fare/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
≤
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22*

Й0
К1
Л2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
Б
Ц0
М1
Н2
О3
П4
Р5
С6
Т7
У8
Ф9
Х10
Ц11
Ч12
Ш13
Щ14*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
М0
О1
Р2
Т3
Ф4
Ц5
Ш6*
<
Н0
П1
С2
У3
Х4
Ч5
Щ6*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
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
Ъ	variables
Ы	keras_api

Ьtotal

Эcount*
M
Ю	variables
Я	keras_api

†total

°count
Ґ
_fn_kwargs*
M
£	variables
§	keras_api

•total

¶count
І
_fn_kwargs*
e_
VARIABLE_VALUEAdam/m/pd_embed/embeddings1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEAdam/v/pd_embed/embeddings1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/h0/kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/h0/kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEAdam/m/h0/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEAdam/v/h0/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/m/h1/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEAdam/v/h1/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEAdam/m/h1/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEAdam/v/h1/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/m/fare/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/v/fare/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/m/fare/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEAdam/v/fare/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*

Ь0
Э1*

Ъ	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

†0
°1*

Ю	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

•0
¶1*

£	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
®

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename'pd_embed/embeddings/Read/ReadVariableOph0/kernel/Read/ReadVariableOph0/bias/Read/ReadVariableOph1/kernel/Read/ReadVariableOph1/bias/Read/ReadVariableOpfare/kernel/Read/ReadVariableOpfare/bias/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOp.Adam/m/pd_embed/embeddings/Read/ReadVariableOp.Adam/v/pd_embed/embeddings/Read/ReadVariableOp$Adam/m/h0/kernel/Read/ReadVariableOp$Adam/v/h0/kernel/Read/ReadVariableOp"Adam/m/h0/bias/Read/ReadVariableOp"Adam/v/h0/bias/Read/ReadVariableOp$Adam/m/h1/kernel/Read/ReadVariableOp$Adam/v/h1/kernel/Read/ReadVariableOp"Adam/m/h1/bias/Read/ReadVariableOp"Adam/v/h1/bias/Read/ReadVariableOp&Adam/m/fare/kernel/Read/ReadVariableOp&Adam/v/fare/kernel/Read/ReadVariableOp$Adam/m/fare/bias/Read/ReadVariableOp$Adam/v/fare/bias/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst**
Tin#
!2	*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_36115
я
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamepd_embed/embeddings	h0/kernelh0/bias	h1/kernelh1/biasfare/kernel	fare/bias	iterationlearning_rateAdam/m/pd_embed/embeddingsAdam/v/pd_embed/embeddingsAdam/m/h0/kernelAdam/v/h0/kernelAdam/m/h0/biasAdam/v/h0/biasAdam/m/h1/kernelAdam/v/h1/kernelAdam/m/h1/biasAdam/v/h1/biasAdam/m/fare/kernelAdam/v/fare/kernelAdam/m/fare/biasAdam/v/fare/biastotal_2count_2total_1count_1totalcount*)
Tin"
 2*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_36212≥Ћ	
√
†
C__inference_pd_embed_layer_call_and_return_conditional_losses_35866

inputs	)
embedding_lookup_35860:	РN

identityИҐembedding_lookupЈ
embedding_lookupResourceGatherembedding_lookup_35860inputs*
Tindices0	*)
_class
loc:@embedding_lookup/35860*+
_output_shapes
:€€€€€€€€€
*
dtype0°
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/35860*+
_output_shapes
:€€€€€€€€€
Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
√
†
C__inference_pd_embed_layer_call_and_return_conditional_losses_34921

inputs	)
embedding_lookup_34915:	РN

identityИҐembedding_lookupЈ
embedding_lookupResourceGatherembedding_lookup_34915inputs*
Tindices0	*)
_class
loc:@embedding_lookup/34915*+
_output_shapes
:€€€€€€€€€
*
dtype0°
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*)
_class
loc:@embedding_lookup/34915*+
_output_shapes
:€€€€€€€€€
Б
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
Y
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
a
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35785

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Є
С
$__inference_fare_layer_call_fn_35991

inputs
unknown:
	unknown_0:
identityИҐStatefulPartitionedCall‘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fare_layer_call_and_return_conditional_losses_35006o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Я
F
*__inference_scale_plat_layer_call_fn_35746

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plat_layer_call_and_return_conditional_losses_34843`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
З
э
%__inference_model_layer_call_fn_35330
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
unknown:	РN

	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3:
	unknown_4:
	unknown_5:
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_35290o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:€€€€€€€€€
+
_user_specified_namedropoff_longitude:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namepickup_longitude
р
†
%__inference_model_layer_call_fn_35476
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude
unknown:	РN

	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3:
	unknown_4:
	unknown_5:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_35013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_dropoff_latitude:a]
'
_output_shapes
:€€€€€€€€€
2
_user_specified_nameinputs_dropoff_longitude:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_passenger_count:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_pickup_latitude:`\
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_pickup_longitude
ѕ
a
E__inference_scale_plat_layer_call_and_return_conditional_losses_35759

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Я
F
*__inference_scale_dlat_layer_call_fn_35777

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35153`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
a
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35733

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Я
F
*__inference_scale_dlon_layer_call_fn_35725

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35191`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
 

m
?__inference_p_fc_layer_call_and_return_conditional_losses_35812
inputs_0	
inputs_1	

identity_1	В
SparseCrossSparseCrossinputs_0inputs_1*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 G
zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R –
SparseToDenseSparseToDenseSparseCross:output_indices:0SparseCross:output_shape:0SparseCross:output_values:0zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   s
ReshapeReshapeSparseToDense:dense:0Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€X
IdentityIdentityReshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
ѕ
a
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35153

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
a
E__inference_scale_plon_layer_call_and_return_conditional_losses_35707

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µB
€
@__inference_model_layer_call_and_return_conditional_losses_35426
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude!
pd_embed_35404:	РN

h0_35410: 
h0_35412: 
h1_35415: 
h1_35417:

fare_35420:

fare_35422:
identityИҐfare/StatefulPartitionedCallҐh0/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ pd_embed/StatefulPartitionedCall≈
scale_plon/PartitionedCallPartitionedCallpickup_longitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plon_layer_call_and_return_conditional_losses_35210∆
scale_dlon/PartitionedCallPartitionedCalldropoff_longitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35191ƒ
scale_plat/PartitionedCallPartitionedCallpickup_latitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plat_layer_call_and_return_conditional_losses_35172≈
scale_dlat/PartitionedCallPartitionedCalldropoff_latitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35153≤
dlon_bkt/Bucketize	Bucketize#scale_dlon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlon_bkt/CastCastdlon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlon_bkt/IdentityIdentitydlon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
dlat_bkt/Bucketize	Bucketize#scale_dlat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlat_bkt/CastCastdlat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlat_bkt/IdentityIdentitydlat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plon_bkt/Bucketize	Bucketize#scale_plon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plon_bkt/CastCastplon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plon_bkt/IdentityIdentityplon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plat_bkt/Bucketize	Bucketize#scale_plat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plat_bkt/CastCastplat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plat_bkt/IdentityIdentityplat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€а
p_fc/PartitionedCallPartitionedCallplon_bkt/Identity:output:0plat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_p_fc_layer_call_and_return_conditional_losses_34880а
d_fc/PartitionedCallPartitionedCalldlon_bkt/Identity:output:0dlat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_d_fc_layer_call_and_return_conditional_losses_34895и
pd_fc/PartitionedCallPartitionedCallp_fc/PartitionedCall:output:0d_fc/PartitionedCall:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_pd_fc_layer_call_and_return_conditional_losses_34910ч
 pd_embed/StatefulPartitionedCallStatefulPartitionedCallpd_fc/PartitionedCall:output:0pd_embed_35404*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pd_embed_layer_call_and_return_conditional_losses_34921ь
euclidean/PartitionedCallPartitionedCallpickup_longitudepickup_latitudedropoff_longitudedropoff_latitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_euclidean_layer_call_and_return_conditional_losses_35105Ў
flatten/PartitionedCallPartitionedCall)pd_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_34946¶
concatenate/PartitionedCallPartitionedCall#scale_plon/PartitionedCall:output:0#scale_dlon/PartitionedCall:output:0#scale_plat/PartitionedCall:output:0#scale_dlat/PartitionedCall:output:0"euclidean/PartitionedCall:output:0 flatten/PartitionedCall:output:0passenger_count*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_34960у
h0/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0h0_35410h0_35412*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h0_layer_call_and_return_conditional_losses_34973т
h1/StatefulPartitionedCallStatefulPartitionedCall#h0/StatefulPartitionedCall:output:0h1_35415h1_35417*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h1_layer_call_and_return_conditional_losses_34990ъ
fare/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0
fare_35420
fare_35422*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fare_layer_call_and_return_conditional_losses_35006t
IdentityIdentity%fare/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€¬
NoOpNoOp^fare/StatefulPartitionedCall^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall!^pd_embed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 2<
fare/StatefulPartitionedCallfare/StatefulPartitionedCall28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2D
 pd_embed/StatefulPartitionedCall pd_embed/StatefulPartitionedCall:Y U
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:€€€€€€€€€
+
_user_specified_namedropoff_longitude:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namepickup_longitude
†
q
)__inference_euclidean_layer_call_fn_35882
inputs_0
inputs_1
inputs_2
inputs_3
identity“
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_euclidean_layer_call_and_return_conditional_losses_35105`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3
 

m
?__inference_d_fc_layer_call_and_return_conditional_losses_35831
inputs_0	
inputs_1	

identity_1	В
SparseCrossSparseCrossinputs_0inputs_1*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 G
zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R –
SparseToDenseSparseToDenseSparseCross:output_indices:0SparseCross:output_shape:0SparseCross:output_values:0zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   s
ReshapeReshapeSparseToDense:dense:0Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€X
IdentityIdentityReshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
ѕ
a
E__inference_scale_dlat_layer_call_and_return_conditional_losses_34853

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ѕ
a
E__inference_scale_plat_layer_call_and_return_conditional_losses_34843

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
a
E__inference_scale_dlon_layer_call_and_return_conditional_losses_34833

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ф

о
=__inference_h0_layer_call_and_return_conditional_losses_35962

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ї

Є
F__inference_concatenate_layer_call_and_return_conditional_losses_35942
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :©
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ъ
_input_shapesИ
Е:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_4:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
inputs_5:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_6
¬

k
?__inference_p_fc_layer_call_and_return_conditional_losses_34880

inputs	
inputs_1	

identity_1	А
SparseCrossSparseCrossinputsinputs_1*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 G
zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R –
SparseToDenseSparseToDenseSparseCross:output_indices:0SparseCross:output_shape:0SparseCross:output_values:0zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   s
ReshapeReshapeSparseToDense:dense:0Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€X
IdentityIdentityReshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
р
†
%__inference_model_layer_call_fn_35499
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude
unknown:	РN

	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3:
	unknown_4:
	unknown_5:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_35290o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:` \
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_dropoff_latitude:a]
'
_output_shapes
:€€€€€€€€€
2
_user_specified_nameinputs_dropoff_longitude:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_passenger_count:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_pickup_latitude:`\
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_pickup_longitude
Ф

о
=__inference_h1_layer_call_and_return_conditional_losses_34990

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѕ
a
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35793

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ф

о
=__inference_h0_layer_call_and_return_conditional_losses_34973

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
†
q
)__inference_euclidean_layer_call_fn_35874
inputs_0
inputs_1
inputs_2
inputs_3
identity“
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_euclidean_layer_call_and_return_conditional_losses_34938`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3
ƒ

l
@__inference_pd_fc_layer_call_and_return_conditional_losses_34910

inputs	
inputs_1	

identity_1	Б
SparseCrossSparseCrossinputsinputs_1*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsРN*
out_type0	*
sparse_types
 G
zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R –
SparseToDenseSparseToDenseSparseCross:output_indices:0SparseCross:output_shape:0SparseCross:output_values:0zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   s
ReshapeReshapeSparseToDense:dense:0Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€X
IdentityIdentityReshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ш
P
$__inference_p_fc_layer_call_fn_35799
inputs_0	
inputs_1	
identity	Ј
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_p_fc_layer_call_and_return_conditional_losses_34880`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
ћ

n
@__inference_pd_fc_layer_call_and_return_conditional_losses_35850
inputs_0	
inputs_1	

identity_1	Г
SparseCrossSparseCrossinputs_0inputs_1*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsРN*
out_type0	*
sparse_types
 G
zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R –
SparseToDenseSparseToDenseSparseCross:output_indices:0SparseCross:output_shape:0SparseCross:output_values:0zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   s
ReshapeReshapeSparseToDense:dense:0Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€X
IdentityIdentityReshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
†
}
(__inference_pd_embed_layer_call_fn_35857

inputs	
unknown:	РN

identityИҐStatefulPartitionedCallѕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pd_embed_layer_call_and_return_conditional_losses_34921s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:€€€€€€€€€: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
°
C
'__inference_flatten_layer_call_fn_35913

inputs
identity≠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_34946`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
®

ґ
F__inference_concatenate_layer_call_and_return_conditional_losses_34960

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :І
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€W
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ъ
_input_shapesИ
Е:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ї
^
B__inference_flatten_layer_call_and_return_conditional_losses_34946

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€
X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Ш
P
$__inference_d_fc_layer_call_fn_35818
inputs_0	
inputs_1	
identity	Ј
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_d_fc_layer_call_and_return_conditional_losses_34895`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
ѕ
a
E__inference_scale_plat_layer_call_and_return_conditional_losses_35172

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
РA
÷
@__inference_model_layer_call_and_return_conditional_losses_35290

inputs
inputs_1
inputs_2
inputs_3
inputs_4!
pd_embed_35268:	РN

h0_35274: 
h0_35276: 
h1_35279: 
h1_35281:

fare_35284:

fare_35286:
identityИҐfare/StatefulPartitionedCallҐh0/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ pd_embed/StatefulPartitionedCallљ
scale_plon/PartitionedCallPartitionedCallinputs_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plon_layer_call_and_return_conditional_losses_35210љ
scale_dlon/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35191љ
scale_plat/PartitionedCallPartitionedCallinputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plat_layer_call_and_return_conditional_losses_35172ї
scale_dlat/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35153≤
dlon_bkt/Bucketize	Bucketize#scale_dlon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlon_bkt/CastCastdlon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlon_bkt/IdentityIdentitydlon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
dlat_bkt/Bucketize	Bucketize#scale_dlat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlat_bkt/CastCastdlat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlat_bkt/IdentityIdentitydlat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plon_bkt/Bucketize	Bucketize#scale_plon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plon_bkt/CastCastplon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plon_bkt/IdentityIdentityplon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plat_bkt/Bucketize	Bucketize#scale_plat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plat_bkt/CastCastplat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plat_bkt/IdentityIdentityplat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€а
p_fc/PartitionedCallPartitionedCallplon_bkt/Identity:output:0plat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_p_fc_layer_call_and_return_conditional_losses_34880а
d_fc/PartitionedCallPartitionedCalldlon_bkt/Identity:output:0dlat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_d_fc_layer_call_and_return_conditional_losses_34895и
pd_fc/PartitionedCallPartitionedCallp_fc/PartitionedCall:output:0d_fc/PartitionedCall:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_pd_fc_layer_call_and_return_conditional_losses_34910ч
 pd_embed/StatefulPartitionedCallStatefulPartitionedCallpd_fc/PartitionedCall:output:0pd_embed_35268*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pd_embed_layer_call_and_return_conditional_losses_34921Џ
euclidean/PartitionedCallPartitionedCallinputs_4inputs_3inputs_1inputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_euclidean_layer_call_and_return_conditional_losses_35105Ў
flatten/PartitionedCallPartitionedCall)pd_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_34946Я
concatenate/PartitionedCallPartitionedCall#scale_plon/PartitionedCall:output:0#scale_dlon/PartitionedCall:output:0#scale_plat/PartitionedCall:output:0#scale_dlat/PartitionedCall:output:0"euclidean/PartitionedCall:output:0 flatten/PartitionedCall:output:0inputs_2*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_34960у
h0/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0h0_35274h0_35276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h0_layer_call_and_return_conditional_losses_34973т
h1/StatefulPartitionedCallStatefulPartitionedCall#h0/StatefulPartitionedCall:output:0h1_35279h1_35281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h1_layer_call_and_return_conditional_losses_34990ъ
fare/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0
fare_35284
fare_35286*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fare_layer_call_and_return_conditional_losses_35006t
IdentityIdentity%fare/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€¬
NoOpNoOp^fare/StatefulPartitionedCall^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall!^pd_embed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 2<
fare/StatefulPartitionedCallfare/StatefulPartitionedCall28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2D
 pd_embed/StatefulPartitionedCall pd_embed/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬	
р
?__inference_fare_layer_call_and_return_conditional_losses_36001

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
і	
К
D__inference_euclidean_layer_call_and_return_conditional_losses_34938

inputs
inputs_1
inputs_2
inputs_3
identityN
subSubinputs_2inputs*
T0*'
_output_shapes
:€€€€€€€€€R
sub_1Subinputs_3inputs_1*
T0*'
_output_shapes
:€€€€€€€€€N
mulMulsub:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€T
mul_1Mul	sub_1:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€G
SqrtSqrtadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
a
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35191

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
З
э
%__inference_model_layer_call_fn_35030
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
unknown:	РN

	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3:
	unknown_4:
	unknown_5:
identityИҐStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_35013o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:€€€€€€€€€
+
_user_specified_namedropoff_longitude:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namepickup_longitude
Я
F
*__inference_scale_dlon_layer_call_fn_35720

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlon_layer_call_and_return_conditional_losses_34833`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
е
ы
#__inference_signature_wrapper_35453
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude
unknown:	РN

	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3:
	unknown_4:
	unknown_5:
identityИҐStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCalldropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitudeunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
		
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_34800o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:€€€€€€€€€
+
_user_specified_namedropoff_longitude:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namepickup_longitude
ј	
М
D__inference_euclidean_layer_call_and_return_conditional_losses_35895
inputs_0
inputs_1
inputs_2
inputs_3
identityP
subSubinputs_2inputs_0*
T0*'
_output_shapes
:€€€€€€€€€R
sub_1Subinputs_3inputs_1*
T0*'
_output_shapes
:€€€€€€€€€N
mulMulsub:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€T
mul_1Mul	sub_1:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€G
SqrtSqrtadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3
“]
Х
@__inference_model_layer_call_and_return_conditional_losses_35689
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude2
pd_embed_embedding_lookup_35653:	РN
3
!h0_matmul_readvariableop_resource: 0
"h0_biasadd_readvariableop_resource: 3
!h1_matmul_readvariableop_resource: 0
"h1_biasadd_readvariableop_resource:5
#fare_matmul_readvariableop_resource:2
$fare_biasadd_readvariableop_resource:
identityИҐfare/BiasAdd/ReadVariableOpҐfare/MatMul/ReadVariableOpҐh0/BiasAdd/ReadVariableOpҐh0/MatMul/ReadVariableOpҐh1/BiasAdd/ReadVariableOpҐh1/MatMul/ReadVariableOpҐpd_embed/embedding_lookupU
scale_plon/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬB}
scale_plon/addAddV2inputs_pickup_longitudescale_plon/add/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_plon/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_plon/truedivRealDivscale_plon/add:z:0scale_plon/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€U
scale_dlon/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬB~
scale_dlon/addAddV2inputs_dropoff_longitudescale_dlon/add/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_dlon/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_dlon/truedivRealDivscale_dlon/add:z:0scale_dlon/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€U
scale_plat/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Bz
scale_plat/subSubinputs_pickup_latitudescale_plat/sub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_plat/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_plat/truedivRealDivscale_plat/sub:z:0scale_plat/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€U
scale_dlat/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  B{
scale_dlat/subSubinputs_dropoff_latitudescale_dlat/sub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_dlat/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_dlat/truedivRealDivscale_dlat/sub:z:0scale_dlat/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€•
dlon_bkt/Bucketize	Bucketizescale_dlon/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlon_bkt/CastCastdlon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlon_bkt/IdentityIdentitydlon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€•
dlat_bkt/Bucketize	Bucketizescale_dlat/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlat_bkt/CastCastdlat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlat_bkt/IdentityIdentitydlat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€•
plon_bkt/Bucketize	Bucketizescale_plon/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plon_bkt/CastCastplon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plon_bkt/IdentityIdentityplon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€•
plat_bkt/Bucketize	Bucketizescale_plat/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plat_bkt/CastCastplat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plat_bkt/IdentityIdentityplat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€Ђ
p_fc/SparseCrossSparseCrossplon_bkt/Identity:output:0plat_bkt/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 L

p_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R й
p_fc/SparseToDenseSparseToDense!p_fc/SparseCross:output_indices:0p_fc/SparseCross:output_shape:0 p_fc/SparseCross:output_values:0p_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€c
p_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   В
p_fc/ReshapeReshapep_fc/SparseToDense:dense:0p_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€b
p_fc/IdentityIdentityp_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€Ђ
d_fc/SparseCrossSparseCrossdlon_bkt/Identity:output:0dlat_bkt/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 L

d_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R й
d_fc/SparseToDenseSparseToDense!d_fc/SparseCross:output_indices:0d_fc/SparseCross:output_shape:0 d_fc/SparseCross:output_values:0d_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€c
d_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   В
d_fc/ReshapeReshaped_fc/SparseToDense:dense:0d_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€b
d_fc/IdentityIdentityd_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€•
pd_fc/SparseCrossSparseCrossp_fc/Identity:output:0d_fc/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsРN*
out_type0	*
sparse_types
 M
pd_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R о
pd_fc/SparseToDenseSparseToDense"pd_fc/SparseCross:output_indices:0 pd_fc/SparseCross:output_shape:0!pd_fc/SparseCross:output_values:0pd_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€d
pd_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Е
pd_fc/ReshapeReshapepd_fc/SparseToDense:dense:0pd_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€d
pd_fc/IdentityIdentitypd_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€г
pd_embed/embedding_lookupResourceGatherpd_embed_embedding_lookup_35653pd_fc/Identity:output:0*
Tindices0	*2
_class(
&$loc:@pd_embed/embedding_lookup/35653*+
_output_shapes
:€€€€€€€€€
*
dtype0Љ
"pd_embed/embedding_lookup/IdentityIdentity"pd_embed/embedding_lookup:output:0*
T0*2
_class(
&$loc:@pd_embed/embedding_lookup/35653*+
_output_shapes
:€€€€€€€€€
У
$pd_embed/embedding_lookup/Identity_1Identity+pd_embed/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
y
euclidean/subSubinputs_dropoff_longitudeinputs_pickup_longitude*
T0*'
_output_shapes
:€€€€€€€€€y
euclidean/sub_1Subinputs_dropoff_latitudeinputs_pickup_latitude*
T0*'
_output_shapes
:€€€€€€€€€l
euclidean/mulMuleuclidean/sub:z:0euclidean/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
euclidean/mul_1Muleuclidean/sub_1:z:0euclidean/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
euclidean/addAddV2euclidean/mul:z:0euclidean/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€[
euclidean/SqrtSqrteuclidean/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   У
flatten/ReshapeReshape-pd_embed/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
concatenate/concatConcatV2scale_plon/truediv:z:0scale_dlon/truediv:z:0scale_plat/truediv:z:0scale_dlat/truediv:z:0euclidean/Sqrt:y:0flatten/Reshape:output:0inputs_passenger_count concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€z
h0/MatMul/ReadVariableOpReadVariableOp!h0_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Д
	h0/MatMulMatMulconcatenate/concat:output:0 h0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ x
h0/BiasAdd/ReadVariableOpReadVariableOp"h0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0

h0/BiasAddBiasAddh0/MatMul:product:0!h0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ V
h0/ReluReluh0/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ z
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0~
	h1/MatMulMatMulh0/Relu:activations:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
fare/MatMul/ReadVariableOpReadVariableOp#fare_matmul_readvariableop_resource*
_output_shapes

:*
dtype0В
fare/MatMulMatMulh1/Relu:activations:0"fare/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
fare/BiasAdd/ReadVariableOpReadVariableOp$fare_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
fare/BiasAddBiasAddfare/MatMul:product:0#fare/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
IdentityIdentityfare/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Л
NoOpNoOp^fare/BiasAdd/ReadVariableOp^fare/MatMul/ReadVariableOp^h0/BiasAdd/ReadVariableOp^h0/MatMul/ReadVariableOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^pd_embed/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 2:
fare/BiasAdd/ReadVariableOpfare/BiasAdd/ReadVariableOp28
fare/MatMul/ReadVariableOpfare/MatMul/ReadVariableOp26
h0/BiasAdd/ReadVariableOph0/BiasAdd/ReadVariableOp24
h0/MatMul/ReadVariableOph0/MatMul/ReadVariableOp26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
pd_embed/embedding_lookuppd_embed/embedding_lookup:` \
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_dropoff_latitude:a]
'
_output_shapes
:€€€€€€€€€
2
_user_specified_nameinputs_dropoff_longitude:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_passenger_count:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_pickup_latitude:`\
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_pickup_longitude
і
П
"__inference_h0_layer_call_fn_35951

inputs
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h0_layer_call_and_return_conditional_losses_34973o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
a
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35741

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
µB
€
@__inference_model_layer_call_and_return_conditional_losses_35378
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude!
pd_embed_35356:	РN

h0_35362: 
h0_35364: 
h1_35367: 
h1_35369:

fare_35372:

fare_35374:
identityИҐfare/StatefulPartitionedCallҐh0/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ pd_embed/StatefulPartitionedCall≈
scale_plon/PartitionedCallPartitionedCallpickup_longitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plon_layer_call_and_return_conditional_losses_34823∆
scale_dlon/PartitionedCallPartitionedCalldropoff_longitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlon_layer_call_and_return_conditional_losses_34833ƒ
scale_plat/PartitionedCallPartitionedCallpickup_latitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plat_layer_call_and_return_conditional_losses_34843≈
scale_dlat/PartitionedCallPartitionedCalldropoff_latitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlat_layer_call_and_return_conditional_losses_34853≤
dlon_bkt/Bucketize	Bucketize#scale_dlon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlon_bkt/CastCastdlon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlon_bkt/IdentityIdentitydlon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
dlat_bkt/Bucketize	Bucketize#scale_dlat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlat_bkt/CastCastdlat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlat_bkt/IdentityIdentitydlat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plon_bkt/Bucketize	Bucketize#scale_plon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plon_bkt/CastCastplon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plon_bkt/IdentityIdentityplon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plat_bkt/Bucketize	Bucketize#scale_plat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plat_bkt/CastCastplat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plat_bkt/IdentityIdentityplat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€а
p_fc/PartitionedCallPartitionedCallplon_bkt/Identity:output:0plat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_p_fc_layer_call_and_return_conditional_losses_34880а
d_fc/PartitionedCallPartitionedCalldlon_bkt/Identity:output:0dlat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_d_fc_layer_call_and_return_conditional_losses_34895и
pd_fc/PartitionedCallPartitionedCallp_fc/PartitionedCall:output:0d_fc/PartitionedCall:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_pd_fc_layer_call_and_return_conditional_losses_34910ч
 pd_embed/StatefulPartitionedCallStatefulPartitionedCallpd_fc/PartitionedCall:output:0pd_embed_35356*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pd_embed_layer_call_and_return_conditional_losses_34921ь
euclidean/PartitionedCallPartitionedCallpickup_longitudepickup_latitudedropoff_longitudedropoff_latitude*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_euclidean_layer_call_and_return_conditional_losses_34938Ў
flatten/PartitionedCallPartitionedCall)pd_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_34946¶
concatenate/PartitionedCallPartitionedCall#scale_plon/PartitionedCall:output:0#scale_dlon/PartitionedCall:output:0#scale_plat/PartitionedCall:output:0#scale_dlat/PartitionedCall:output:0"euclidean/PartitionedCall:output:0 flatten/PartitionedCall:output:0passenger_count*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_34960у
h0/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0h0_35362h0_35364*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h0_layer_call_and_return_conditional_losses_34973т
h1/StatefulPartitionedCallStatefulPartitionedCall#h0/StatefulPartitionedCall:output:0h1_35367h1_35369*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h1_layer_call_and_return_conditional_losses_34990ъ
fare/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0
fare_35372
fare_35374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fare_layer_call_and_return_conditional_losses_35006t
IdentityIdentity%fare/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€¬
NoOpNoOp^fare/StatefulPartitionedCall^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall!^pd_embed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 2<
fare/StatefulPartitionedCallfare/StatefulPartitionedCall28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2D
 pd_embed/StatefulPartitionedCall pd_embed/StatefulPartitionedCall:Y U
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:€€€€€€€€€
+
_user_specified_namedropoff_longitude:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namepickup_longitude
Я
F
*__inference_scale_dlat_layer_call_fn_35772

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlat_layer_call_and_return_conditional_losses_34853`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
—
a
E__inference_scale_plon_layer_call_and_return_conditional_losses_35715

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Я
F
*__inference_scale_plat_layer_call_fn_35751

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plat_layer_call_and_return_conditional_losses_35172`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬

k
?__inference_d_fc_layer_call_and_return_conditional_losses_34895

inputs	
inputs_1	

identity_1	А
SparseCrossSparseCrossinputsinputs_1*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 G
zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R –
SparseToDenseSparseToDenseSparseCross:output_indices:0SparseCross:output_shape:0SparseCross:output_values:0zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€^
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   s
ReshapeReshapeSparseToDense:dense:0Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€X
IdentityIdentityReshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€[

Identity_1IdentityIdentity:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
÷;
Ы
__inference__traced_save_36115
file_prefix2
.savev2_pd_embed_embeddings_read_readvariableop(
$savev2_h0_kernel_read_readvariableop&
"savev2_h0_bias_read_readvariableop(
$savev2_h1_kernel_read_readvariableop&
"savev2_h1_bias_read_readvariableop*
&savev2_fare_kernel_read_readvariableop(
$savev2_fare_bias_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop9
5savev2_adam_m_pd_embed_embeddings_read_readvariableop9
5savev2_adam_v_pd_embed_embeddings_read_readvariableop/
+savev2_adam_m_h0_kernel_read_readvariableop/
+savev2_adam_v_h0_kernel_read_readvariableop-
)savev2_adam_m_h0_bias_read_readvariableop-
)savev2_adam_v_h0_bias_read_readvariableop/
+savev2_adam_m_h1_kernel_read_readvariableop/
+savev2_adam_v_h1_kernel_read_readvariableop-
)savev2_adam_m_h1_bias_read_readvariableop-
)savev2_adam_v_h1_bias_read_readvariableop1
-savev2_adam_m_fare_kernel_read_readvariableop1
-savev2_adam_v_fare_kernel_read_readvariableop/
+savev2_adam_m_fare_bias_read_readvariableop/
+savev2_adam_v_fare_bias_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: К
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*≥
value©B¶B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH©
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ±
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0.savev2_pd_embed_embeddings_read_readvariableop$savev2_h0_kernel_read_readvariableop"savev2_h0_bias_read_readvariableop$savev2_h1_kernel_read_readvariableop"savev2_h1_bias_read_readvariableop&savev2_fare_kernel_read_readvariableop$savev2_fare_bias_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop5savev2_adam_m_pd_embed_embeddings_read_readvariableop5savev2_adam_v_pd_embed_embeddings_read_readvariableop+savev2_adam_m_h0_kernel_read_readvariableop+savev2_adam_v_h0_kernel_read_readvariableop)savev2_adam_m_h0_bias_read_readvariableop)savev2_adam_v_h0_bias_read_readvariableop+savev2_adam_m_h1_kernel_read_readvariableop+savev2_adam_v_h1_kernel_read_readvariableop)savev2_adam_m_h1_bias_read_readvariableop)savev2_adam_v_h1_bias_read_readvariableop-savev2_adam_m_fare_kernel_read_readvariableop-savev2_adam_v_fare_kernel_read_readvariableop+savev2_adam_m_fare_bias_read_readvariableop+savev2_adam_v_fare_bias_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *,
dtypes"
 2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
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

identity_1Identity_1:output:0*Џ
_input_shapes»
≈: :	РN
: : : :::: : :	РN
:	РN
: : : : : : ::::::: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	РN
:$ 

_output_shapes

: : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :	

_output_shapes
: :%
!

_output_shapes
:	РN
:%!

_output_shapes
:	РN
:$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: :$ 

_output_shapes

: : 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Я
F
*__inference_scale_plon_layer_call_fn_35699

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plon_layer_call_and_return_conditional_losses_35210`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
і	
К
D__inference_euclidean_layer_call_and_return_conditional_losses_35105

inputs
inputs_1
inputs_2
inputs_3
identityN
subSubinputs_2inputs*
T0*'
_output_shapes
:€€€€€€€€€R
sub_1Subinputs_3inputs_1*
T0*'
_output_shapes
:€€€€€€€€€N
mulMulsub:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€T
mul_1Mul	sub_1:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€G
SqrtSqrtadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
»y
»
!__inference__traced_restore_36212
file_prefix7
$assignvariableop_pd_embed_embeddings:	РN
.
assignvariableop_1_h0_kernel: (
assignvariableop_2_h0_bias: .
assignvariableop_3_h1_kernel: (
assignvariableop_4_h1_bias:0
assignvariableop_5_fare_kernel:*
assignvariableop_6_fare_bias:&
assignvariableop_7_iteration:	 *
 assignvariableop_8_learning_rate: @
-assignvariableop_9_adam_m_pd_embed_embeddings:	РN
A
.assignvariableop_10_adam_v_pd_embed_embeddings:	РN
6
$assignvariableop_11_adam_m_h0_kernel: 6
$assignvariableop_12_adam_v_h0_kernel: 0
"assignvariableop_13_adam_m_h0_bias: 0
"assignvariableop_14_adam_v_h0_bias: 6
$assignvariableop_15_adam_m_h1_kernel: 6
$assignvariableop_16_adam_v_h1_kernel: 0
"assignvariableop_17_adam_m_h1_bias:0
"assignvariableop_18_adam_v_h1_bias:8
&assignvariableop_19_adam_m_fare_kernel:8
&assignvariableop_20_adam_v_fare_kernel:2
$assignvariableop_21_adam_m_fare_bias:2
$assignvariableop_22_adam_v_fare_bias:%
assignvariableop_23_total_2: %
assignvariableop_24_count_2: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: #
assignvariableop_27_total: #
assignvariableop_28_count: 
identity_30ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Н
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*≥
value©B¶B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHђ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*O
valueFBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B µ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*М
_output_shapesz
x::::::::::::::::::::::::::::::*,
dtypes"
 2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOpAssignVariableOp$assignvariableop_pd_embed_embeddingsIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_1AssignVariableOpassignvariableop_1_h0_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_2AssignVariableOpassignvariableop_2_h0_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_3AssignVariableOpassignvariableop_3_h1_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_4AssignVariableOpassignvariableop_4_h1_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_5AssignVariableOpassignvariableop_5_fare_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOp_6AssignVariableOpassignvariableop_6_fare_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_7AssignVariableOpassignvariableop_7_iterationIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_8AssignVariableOp assignvariableop_8_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ƒ
AssignVariableOp_9AssignVariableOp-assignvariableop_9_adam_m_pd_embed_embeddingsIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_10AssignVariableOp.assignvariableop_10_adam_v_pd_embed_embeddingsIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_11AssignVariableOp$assignvariableop_11_adam_m_h0_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_12AssignVariableOp$assignvariableop_12_adam_v_h0_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_13AssignVariableOp"assignvariableop_13_adam_m_h0_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_14AssignVariableOp"assignvariableop_14_adam_v_h0_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_15AssignVariableOp$assignvariableop_15_adam_m_h1_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_16AssignVariableOp$assignvariableop_16_adam_v_h1_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_17AssignVariableOp"assignvariableop_17_adam_m_h1_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_18AssignVariableOp"assignvariableop_18_adam_v_h1_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_19AssignVariableOp&assignvariableop_19_adam_m_fare_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_20AssignVariableOp&assignvariableop_20_adam_v_fare_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_21AssignVariableOp$assignvariableop_21_adam_m_fare_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:љ
AssignVariableOp_22AssignVariableOp$assignvariableop_22_adam_v_fare_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_2Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_2Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Ќ
Identity_29Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_30IdentityIdentity_29:output:0^NoOp_1*
T0*
_output_shapes
: Ї
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_30Identity_30:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_28AssignVariableOp_282(
AssignVariableOp_3AssignVariableOp_32(
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
Ї
^
B__inference_flatten_layer_call_and_return_conditional_losses_35919

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:€€€€€€€€€
X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:€€€€€€€€€
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€
:S O
+
_output_shapes
:€€€€€€€€€

 
_user_specified_nameinputs
Я
F
*__inference_scale_plon_layer_call_fn_35694

inputs
identity∞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plon_layer_call_and_return_conditional_losses_34823`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
РA
÷
@__inference_model_layer_call_and_return_conditional_losses_35013

inputs
inputs_1
inputs_2
inputs_3
inputs_4!
pd_embed_34922:	РN

h0_34974: 
h0_34976: 
h1_34991: 
h1_34993:

fare_35007:

fare_35009:
identityИҐfare/StatefulPartitionedCallҐh0/StatefulPartitionedCallҐh1/StatefulPartitionedCallҐ pd_embed/StatefulPartitionedCallљ
scale_plon/PartitionedCallPartitionedCallinputs_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plon_layer_call_and_return_conditional_losses_34823љ
scale_dlon/PartitionedCallPartitionedCallinputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlon_layer_call_and_return_conditional_losses_34833љ
scale_plat/PartitionedCallPartitionedCallinputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_plat_layer_call_and_return_conditional_losses_34843ї
scale_dlat/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_scale_dlat_layer_call_and_return_conditional_losses_34853≤
dlon_bkt/Bucketize	Bucketize#scale_dlon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlon_bkt/CastCastdlon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlon_bkt/IdentityIdentitydlon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
dlat_bkt/Bucketize	Bucketize#scale_dlat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlat_bkt/CastCastdlat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlat_bkt/IdentityIdentitydlat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plon_bkt/Bucketize	Bucketize#scale_plon/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plon_bkt/CastCastplon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plon_bkt/IdentityIdentityplon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€≤
plat_bkt/Bucketize	Bucketize#scale_plat/PartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plat_bkt/CastCastplat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plat_bkt/IdentityIdentityplat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€а
p_fc/PartitionedCallPartitionedCallplon_bkt/Identity:output:0plat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_p_fc_layer_call_and_return_conditional_losses_34880а
d_fc/PartitionedCallPartitionedCalldlon_bkt/Identity:output:0dlat_bkt/Identity:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_d_fc_layer_call_and_return_conditional_losses_34895и
pd_fc/PartitionedCallPartitionedCallp_fc/PartitionedCall:output:0d_fc/PartitionedCall:output:0*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_pd_fc_layer_call_and_return_conditional_losses_34910ч
 pd_embed/StatefulPartitionedCallStatefulPartitionedCallpd_fc/PartitionedCall:output:0pd_embed_34922*
Tin
2	*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_pd_embed_layer_call_and_return_conditional_losses_34921Џ
euclidean/PartitionedCallPartitionedCallinputs_4inputs_3inputs_1inputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_euclidean_layer_call_and_return_conditional_losses_34938Ў
flatten/PartitionedCallPartitionedCall)pd_embed/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_34946Я
concatenate/PartitionedCallPartitionedCall#scale_plon/PartitionedCall:output:0#scale_dlon/PartitionedCall:output:0#scale_plat/PartitionedCall:output:0#scale_dlat/PartitionedCall:output:0"euclidean/PartitionedCall:output:0 flatten/PartitionedCall:output:0inputs_2*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_34960у
h0/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0h0_34974h0_34976*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h0_layer_call_and_return_conditional_losses_34973т
h1/StatefulPartitionedCallStatefulPartitionedCall#h0/StatefulPartitionedCall:output:0h1_34991h1_34993*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h1_layer_call_and_return_conditional_losses_34990ъ
fare/StatefulPartitionedCallStatefulPartitionedCall#h1/StatefulPartitionedCall:output:0
fare_35007
fare_35009*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_fare_layer_call_and_return_conditional_losses_35006t
IdentityIdentity%fare/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€¬
NoOpNoOp^fare/StatefulPartitionedCall^h0/StatefulPartitionedCall^h1/StatefulPartitionedCall!^pd_embed/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 2<
fare/StatefulPartitionedCallfare/StatefulPartitionedCall28
h0/StatefulPartitionedCallh0/StatefulPartitionedCall28
h1/StatefulPartitionedCallh1/StatefulPartitionedCall2D
 pd_embed/StatefulPartitionedCall pd_embed/StatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:OK
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
¬	
р
?__inference_fare_layer_call_and_return_conditional_losses_35006

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
ј	
М
D__inference_euclidean_layer_call_and_return_conditional_losses_35908
inputs_0
inputs_1
inputs_2
inputs_3
identityP
subSubinputs_2inputs_0*
T0*'
_output_shapes
:€€€€€€€€€R
sub_1Subinputs_3inputs_1*
T0*'
_output_shapes
:€€€€€€€€€N
mulMulsub:z:0sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€T
mul_1Mul	sub_1:z:0	sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€R
addAddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€G
SqrtSqrtadd:z:0*
T0*'
_output_shapes
:€€€€€€€€€P
IdentityIdentitySqrt:y:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3
“]
Х
@__inference_model_layer_call_and_return_conditional_losses_35594
inputs_dropoff_latitude
inputs_dropoff_longitude
inputs_passenger_count
inputs_pickup_latitude
inputs_pickup_longitude2
pd_embed_embedding_lookup_35558:	РN
3
!h0_matmul_readvariableop_resource: 0
"h0_biasadd_readvariableop_resource: 3
!h1_matmul_readvariableop_resource: 0
"h1_biasadd_readvariableop_resource:5
#fare_matmul_readvariableop_resource:2
$fare_biasadd_readvariableop_resource:
identityИҐfare/BiasAdd/ReadVariableOpҐfare/MatMul/ReadVariableOpҐh0/BiasAdd/ReadVariableOpҐh0/MatMul/ReadVariableOpҐh1/BiasAdd/ReadVariableOpҐh1/MatMul/ReadVariableOpҐpd_embed/embedding_lookupU
scale_plon/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬB}
scale_plon/addAddV2inputs_pickup_longitudescale_plon/add/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_plon/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_plon/truedivRealDivscale_plon/add:z:0scale_plon/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€U
scale_dlon/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬB~
scale_dlon/addAddV2inputs_dropoff_longitudescale_dlon/add/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_dlon/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_dlon/truedivRealDivscale_dlon/add:z:0scale_dlon/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€U
scale_plat/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  Bz
scale_plat/subSubinputs_pickup_latitudescale_plat/sub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_plat/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_plat/truedivRealDivscale_plat/sub:z:0scale_plat/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€U
scale_dlat/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  B{
scale_dlat/subSubinputs_dropoff_latitudescale_dlat/sub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
scale_dlat/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AВ
scale_dlat/truedivRealDivscale_dlat/sub:z:0scale_dlat/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€•
dlon_bkt/Bucketize	Bucketizescale_dlon/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlon_bkt/CastCastdlon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlon_bkt/IdentityIdentitydlon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€•
dlat_bkt/Bucketize	Bucketizescale_dlat/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
dlat_bkt/CastCastdlat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
dlat_bkt/IdentityIdentitydlat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€•
plon_bkt/Bucketize	Bucketizescale_plon/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plon_bkt/CastCastplon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plon_bkt/IdentityIdentityplon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€•
plat_bkt/Bucketize	Bucketizescale_plat/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?s
plat_bkt/CastCastplat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€b
plat_bkt/IdentityIdentityplat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€Ђ
p_fc/SparseCrossSparseCrossplon_bkt/Identity:output:0plat_bkt/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 L

p_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R й
p_fc/SparseToDenseSparseToDense!p_fc/SparseCross:output_indices:0p_fc/SparseCross:output_shape:0 p_fc/SparseCross:output_values:0p_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€c
p_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   В
p_fc/ReshapeReshapep_fc/SparseToDense:dense:0p_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€b
p_fc/IdentityIdentityp_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€Ђ
d_fc/SparseCrossSparseCrossdlon_bkt/Identity:output:0dlat_bkt/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 L

d_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R й
d_fc/SparseToDenseSparseToDense!d_fc/SparseCross:output_indices:0d_fc/SparseCross:output_shape:0 d_fc/SparseCross:output_values:0d_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€c
d_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   В
d_fc/ReshapeReshaped_fc/SparseToDense:dense:0d_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€b
d_fc/IdentityIdentityd_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€•
pd_fc/SparseCrossSparseCrossp_fc/Identity:output:0d_fc/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsРN*
out_type0	*
sparse_types
 M
pd_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R о
pd_fc/SparseToDenseSparseToDense"pd_fc/SparseCross:output_indices:0 pd_fc/SparseCross:output_shape:0!pd_fc/SparseCross:output_values:0pd_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€d
pd_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Е
pd_fc/ReshapeReshapepd_fc/SparseToDense:dense:0pd_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€d
pd_fc/IdentityIdentitypd_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€г
pd_embed/embedding_lookupResourceGatherpd_embed_embedding_lookup_35558pd_fc/Identity:output:0*
Tindices0	*2
_class(
&$loc:@pd_embed/embedding_lookup/35558*+
_output_shapes
:€€€€€€€€€
*
dtype0Љ
"pd_embed/embedding_lookup/IdentityIdentity"pd_embed/embedding_lookup:output:0*
T0*2
_class(
&$loc:@pd_embed/embedding_lookup/35558*+
_output_shapes
:€€€€€€€€€
У
$pd_embed/embedding_lookup/Identity_1Identity+pd_embed/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
y
euclidean/subSubinputs_dropoff_longitudeinputs_pickup_longitude*
T0*'
_output_shapes
:€€€€€€€€€y
euclidean/sub_1Subinputs_dropoff_latitudeinputs_pickup_latitude*
T0*'
_output_shapes
:€€€€€€€€€l
euclidean/mulMuleuclidean/sub:z:0euclidean/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€r
euclidean/mul_1Muleuclidean/sub_1:z:0euclidean/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€p
euclidean/addAddV2euclidean/mul:z:0euclidean/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€[
euclidean/SqrtSqrteuclidean/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   У
flatten/ReshapeReshape-pd_embed/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
Y
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
concatenate/concatConcatV2scale_plon/truediv:z:0scale_dlon/truediv:z:0scale_plat/truediv:z:0scale_dlat/truediv:z:0euclidean/Sqrt:y:0flatten/Reshape:output:0inputs_passenger_count concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€z
h0/MatMul/ReadVariableOpReadVariableOp!h0_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Д
	h0/MatMulMatMulconcatenate/concat:output:0 h0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ x
h0/BiasAdd/ReadVariableOpReadVariableOp"h0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0

h0/BiasAddBiasAddh0/MatMul:product:0!h0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ V
h0/ReluReluh0/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ z
h1/MatMul/ReadVariableOpReadVariableOp!h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0~
	h1/MatMulMatMulh0/Relu:activations:0 h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
h1/BiasAdd/ReadVariableOpReadVariableOp"h1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0

h1/BiasAddBiasAddh1/MatMul:product:0!h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
h1/ReluReluh1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
fare/MatMul/ReadVariableOpReadVariableOp#fare_matmul_readvariableop_resource*
_output_shapes

:*
dtype0В
fare/MatMulMatMulh1/Relu:activations:0"fare/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€|
fare/BiasAdd/ReadVariableOpReadVariableOp$fare_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Е
fare/BiasAddBiasAddfare/MatMul:product:0#fare/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€d
IdentityIdentityfare/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Л
NoOpNoOp^fare/BiasAdd/ReadVariableOp^fare/MatMul/ReadVariableOp^h0/BiasAdd/ReadVariableOp^h0/MatMul/ReadVariableOp^h1/BiasAdd/ReadVariableOp^h1/MatMul/ReadVariableOp^pd_embed/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 2:
fare/BiasAdd/ReadVariableOpfare/BiasAdd/ReadVariableOp28
fare/MatMul/ReadVariableOpfare/MatMul/ReadVariableOp26
h0/BiasAdd/ReadVariableOph0/BiasAdd/ReadVariableOp24
h0/MatMul/ReadVariableOph0/MatMul/ReadVariableOp26
h1/BiasAdd/ReadVariableOph1/BiasAdd/ReadVariableOp24
h1/MatMul/ReadVariableOph1/MatMul/ReadVariableOp26
pd_embed/embedding_lookuppd_embed/embedding_lookup:` \
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_dropoff_latitude:a]
'
_output_shapes
:€€€€€€€€€
2
_user_specified_nameinputs_dropoff_longitude:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_passenger_count:_[
'
_output_shapes
:€€€€€€€€€
0
_user_specified_nameinputs_pickup_latitude:`\
'
_output_shapes
:€€€€€€€€€
1
_user_specified_nameinputs_pickup_longitude
Ъ
Q
%__inference_pd_fc_layer_call_fn_35837
inputs_0	
inputs_1	
identity	Є
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2		*
Tout
2	*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *I
fDRB
@__inference_pd_fc_layer_call_and_return_conditional_losses_34910`
IdentityIdentityPartitionedCall:output:0*
T0	*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1
чe
¶
 __inference__wrapped_model_34800
dropoff_latitude
dropoff_longitude
passenger_count
pickup_latitude
pickup_longitude8
%model_pd_embed_embedding_lookup_34764:	РN
9
'model_h0_matmul_readvariableop_resource: 6
(model_h0_biasadd_readvariableop_resource: 9
'model_h1_matmul_readvariableop_resource: 6
(model_h1_biasadd_readvariableop_resource:;
)model_fare_matmul_readvariableop_resource:8
*model_fare_biasadd_readvariableop_resource:
identityИҐ!model/fare/BiasAdd/ReadVariableOpҐ model/fare/MatMul/ReadVariableOpҐmodel/h0/BiasAdd/ReadVariableOpҐmodel/h0/MatMul/ReadVariableOpҐmodel/h1/BiasAdd/ReadVariableOpҐmodel/h1/MatMul/ReadVariableOpҐmodel/pd_embed/embedding_lookup[
model/scale_plon/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBВ
model/scale_plon/addAddV2pickup_longitudemodel/scale_plon/add/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
model/scale_plon/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AФ
model/scale_plon/truedivRealDivmodel/scale_plon/add:z:0#model/scale_plon/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
model/scale_dlon/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBГ
model/scale_dlon/addAddV2dropoff_longitudemodel/scale_dlon/add/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
model/scale_dlon/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AФ
model/scale_dlon/truedivRealDivmodel/scale_dlon/add:z:0#model/scale_dlon/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
model/scale_plat/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  B
model/scale_plat/subSubpickup_latitudemodel/scale_plat/sub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
model/scale_plat/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AФ
model/scale_plat/truedivRealDivmodel/scale_plat/sub:z:0#model/scale_plat/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
model/scale_dlat/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BА
model/scale_dlat/subSubdropoff_latitudemodel/scale_dlat/sub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€_
model/scale_dlat/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   AФ
model/scale_dlat/truedivRealDivmodel/scale_dlat/sub:z:0#model/scale_dlat/truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€±
model/dlon_bkt/Bucketize	Bucketizemodel/scale_dlon/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?
model/dlon_bkt/CastCast!model/dlon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€n
model/dlon_bkt/IdentityIdentitymodel/dlon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€±
model/dlat_bkt/Bucketize	Bucketizemodel/scale_dlat/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?
model/dlat_bkt/CastCast!model/dlat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€n
model/dlat_bkt/IdentityIdentitymodel/dlat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€±
model/plon_bkt/Bucketize	Bucketizemodel/scale_plon/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?
model/plon_bkt/CastCast!model/plon_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€n
model/plon_bkt/IdentityIdentitymodel/plon_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€±
model/plat_bkt/Bucketize	Bucketizemodel/scale_plat/truediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€*:

boundaries,
*"(    9Ог=9Оc>Ђ™™>9Ог>д8?Ђ™*?rG?9Оc?  А?
model/plat_bkt/CastCast!model/plat_bkt/Bucketize:output:0*

DstT0	*

SrcT0*'
_output_shapes
:€€€€€€€€€n
model/plat_bkt/IdentityIdentitymodel/plat_bkt/Cast:y:0*
T0	*'
_output_shapes
:€€€€€€€€€љ
model/p_fc/SparseCrossSparseCross model/plon_bkt/Identity:output:0 model/plat_bkt/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 R
model/p_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R З
model/p_fc/SparseToDenseSparseToDense'model/p_fc/SparseCross:output_indices:0%model/p_fc/SparseCross:output_shape:0&model/p_fc/SparseCross:output_values:0model/p_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€i
model/p_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ф
model/p_fc/ReshapeReshape model/p_fc/SparseToDense:dense:0!model/p_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€n
model/p_fc/IdentityIdentitymodel/p_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€љ
model/d_fc/SparseCrossSparseCross model/dlon_bkt/Identity:output:0 model/dlat_bkt/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsd*
out_type0	*
sparse_types
 R
model/d_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R З
model/d_fc/SparseToDenseSparseToDense'model/d_fc/SparseCross:output_indices:0%model/d_fc/SparseCross:output_shape:0&model/d_fc/SparseCross:output_values:0model/d_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€i
model/d_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ф
model/d_fc/ReshapeReshape model/d_fc/SparseToDense:dense:0!model/d_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€n
model/d_fc/IdentityIdentitymodel/d_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€Ј
model/pd_fc/SparseCrossSparseCrossmodel/p_fc/Identity:output:0model/d_fc/Identity:output:0*
N *<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
dense_types
2		*
hash_keyюят„м*
hashed_output(*
internal_type0	*
num_bucketsРN*
out_type0	*
sparse_types
 S
model/pd_fc/zerosConst*
_output_shapes
: *
dtype0	*
value	B	 R М
model/pd_fc/SparseToDenseSparseToDense(model/pd_fc/SparseCross:output_indices:0&model/pd_fc/SparseCross:output_shape:0'model/pd_fc/SparseCross:output_values:0model/pd_fc/zeros:output:0*
T0	*
Tindices0	*0
_output_shapes
:€€€€€€€€€€€€€€€€€€j
model/pd_fc/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ч
model/pd_fc/ReshapeReshape!model/pd_fc/SparseToDense:dense:0"model/pd_fc/Reshape/shape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€p
model/pd_fc/IdentityIdentitymodel/pd_fc/Reshape:output:0*
T0	*'
_output_shapes
:€€€€€€€€€ы
model/pd_embed/embedding_lookupResourceGather%model_pd_embed_embedding_lookup_34764model/pd_fc/Identity:output:0*
Tindices0	*8
_class.
,*loc:@model/pd_embed/embedding_lookup/34764*+
_output_shapes
:€€€€€€€€€
*
dtype0ќ
(model/pd_embed/embedding_lookup/IdentityIdentity(model/pd_embed/embedding_lookup:output:0*
T0*8
_class.
,*loc:@model/pd_embed/embedding_lookup/34764*+
_output_shapes
:€€€€€€€€€
Я
*model/pd_embed/embedding_lookup/Identity_1Identity1model/pd_embed/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:€€€€€€€€€
q
model/euclidean/subSubdropoff_longitudepickup_longitude*
T0*'
_output_shapes
:€€€€€€€€€q
model/euclidean/sub_1Subdropoff_latitudepickup_latitude*
T0*'
_output_shapes
:€€€€€€€€€~
model/euclidean/mulMulmodel/euclidean/sub:z:0model/euclidean/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
model/euclidean/mul_1Mulmodel/euclidean/sub_1:z:0model/euclidean/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€В
model/euclidean/addAddV2model/euclidean/mul:z:0model/euclidean/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€g
model/euclidean/SqrtSqrtmodel/euclidean/add:z:0*
T0*'
_output_shapes
:€€€€€€€€€d
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€
   •
model/flatten/ReshapeReshape3model/pd_embed/embedding_lookup/Identity_1:output:0model/flatten/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€
_
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
model/concatenate/concatConcatV2model/scale_plon/truediv:z:0model/scale_dlon/truediv:z:0model/scale_plat/truediv:z:0model/scale_dlat/truediv:z:0model/euclidean/Sqrt:y:0model/flatten/Reshape:output:0passenger_count&model/concatenate/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Ж
model/h0/MatMul/ReadVariableOpReadVariableOp'model_h0_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Ц
model/h0/MatMulMatMul!model/concatenate/concat:output:0&model/h0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
model/h0/BiasAdd/ReadVariableOpReadVariableOp(model_h0_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0С
model/h0/BiasAddBiasAddmodel/h0/MatMul:product:0'model/h0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€ b
model/h0/ReluRelumodel/h0/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
model/h1/MatMul/ReadVariableOpReadVariableOp'model_h1_matmul_readvariableop_resource*
_output_shapes

: *
dtype0Р
model/h1/MatMulMatMulmodel/h0/Relu:activations:0&model/h1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
model/h1/BiasAdd/ReadVariableOpReadVariableOp(model_h1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
model/h1/BiasAddBiasAddmodel/h1/MatMul:product:0'model/h1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€b
model/h1/ReluRelumodel/h1/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€К
 model/fare/MatMul/ReadVariableOpReadVariableOp)model_fare_matmul_readvariableop_resource*
_output_shapes

:*
dtype0Ф
model/fare/MatMulMatMulmodel/h1/Relu:activations:0(model/fare/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€И
!model/fare/BiasAdd/ReadVariableOpReadVariableOp*model_fare_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ч
model/fare/BiasAddBiasAddmodel/fare/MatMul:product:0)model/fare/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€j
IdentityIdentitymodel/fare/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€µ
NoOpNoOp"^model/fare/BiasAdd/ReadVariableOp!^model/fare/MatMul/ReadVariableOp ^model/h0/BiasAdd/ReadVariableOp^model/h0/MatMul/ReadVariableOp ^model/h1/BiasAdd/ReadVariableOp^model/h1/MatMul/ReadVariableOp ^model/pd_embed/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*А
_input_shapeso
m:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€: : : : : : : 2F
!model/fare/BiasAdd/ReadVariableOp!model/fare/BiasAdd/ReadVariableOp2D
 model/fare/MatMul/ReadVariableOp model/fare/MatMul/ReadVariableOp2B
model/h0/BiasAdd/ReadVariableOpmodel/h0/BiasAdd/ReadVariableOp2@
model/h0/MatMul/ReadVariableOpmodel/h0/MatMul/ReadVariableOp2B
model/h1/BiasAdd/ReadVariableOpmodel/h1/BiasAdd/ReadVariableOp2@
model/h1/MatMul/ReadVariableOpmodel/h1/MatMul/ReadVariableOp2B
model/pd_embed/embedding_lookupmodel/pd_embed/embedding_lookup:Y U
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namedropoff_latitude:ZV
'
_output_shapes
:€€€€€€€€€
+
_user_specified_namedropoff_longitude:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepassenger_count:XT
'
_output_shapes
:€€€€€€€€€
)
_user_specified_namepickup_latitude:YU
'
_output_shapes
:€€€€€€€€€
*
_user_specified_namepickup_longitude
і
П
"__inference_h1_layer_call_fn_35971

inputs
unknown: 
	unknown_0:
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *F
fAR?
=__inference_h1_layer_call_and_return_conditional_losses_34990o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ѕ
a
E__inference_scale_plat_layer_call_and_return_conditional_losses_35767

inputs
identityJ
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  BT
subSubinputssub/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivsub:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
Ф

о
=__inference_h1_layer_call_and_return_conditional_losses_35982

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
—
a
E__inference_scale_plon_layer_call_and_return_conditional_losses_34823

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs
•
Э
+__inference_concatenate_layer_call_fn_35930
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
identityх
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_34960`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Ъ
_input_shapesИ
Е:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€:€€€€€€€€€
:€€€€€€€€€:Q M
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_0:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_1:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_2:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_3:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_4:QM
'
_output_shapes
:€€€€€€€€€

"
_user_specified_name
inputs_5:QM
'
_output_shapes
:€€€€€€€€€
"
_user_specified_name
inputs_6
—
a
E__inference_scale_plon_layer_call_and_return_conditional_losses_35210

inputs
identityJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ЬBV
addAddV2inputsadd/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   Aa
truedivRealDivadd:z:0truediv/y:output:0*
T0*'
_output_shapes
:€€€€€€€€€S
IdentityIdentitytruediv:z:0*
T0*'
_output_shapes
:€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:€€€€€€€€€:O K
'
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs"Ж
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*у
serving_defaultя
M
dropoff_latitude9
"serving_default_dropoff_latitude:0€€€€€€€€€
O
dropoff_longitude:
#serving_default_dropoff_longitude:0€€€€€€€€€
K
passenger_count8
!serving_default_passenger_count:0€€€€€€€€€
K
pickup_latitude8
!serving_default_pickup_latitude:0€€€€€€€€€
M
pickup_longitude9
"serving_default_pickup_longitude:0€€€€€€€€€8
fare0
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:≥Е
Г
layer-0
layer-1
layer-2
layer-3
layer-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer_with_weights-0
layer-15
layer-16
layer-17
layer-18
layer-19
layer_with_weights-1
layer-20
layer_with_weights-2
layer-21
layer_with_weights-3
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
•
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
•
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses"
_tf_keras_layer
•
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
•
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
V
9	keras_api
:input_bin_boundaries
;bin_boundaries"
_tf_keras_layer
V
<	keras_api
=input_bin_boundaries
>bin_boundaries"
_tf_keras_layer
V
?	keras_api
@input_bin_boundaries
Abin_boundaries"
_tf_keras_layer
V
B	keras_api
Cinput_bin_boundaries
Dbin_boundaries"
_tf_keras_layer
•
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
•
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
•
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
µ
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses
]
embeddings"
_tf_keras_layer
•
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses"
_tf_keras_layer
•
d	variables
etrainable_variables
fregularization_losses
g	keras_api
h__call__
*i&call_and_return_all_conditional_losses"
_tf_keras_layer
"
_tf_keras_input_layer
•
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses"
_tf_keras_layer
ї
p	variables
qtrainable_variables
rregularization_losses
s	keras_api
t__call__
*u&call_and_return_all_conditional_losses

vkernel
wbias"
_tf_keras_layer
ї
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias"
_tf_keras_layer
√
А	variables
Бtrainable_variables
Вregularization_losses
Г	keras_api
Д__call__
+Е&call_and_return_all_conditional_losses
Жkernel
	Зbias"
_tf_keras_layer
S
]0
v1
w2
~3
4
Ж5
З6"
trackable_list_wrapper
S
]0
v1
w2
~3
4
Ж5
З6"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
—
Нtrace_0
Оtrace_1
Пtrace_2
Рtrace_32ё
%__inference_model_layer_call_fn_35030
%__inference_model_layer_call_fn_35476
%__inference_model_layer_call_fn_35499
%__inference_model_layer_call_fn_35330њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0zОtrace_1zПtrace_2zРtrace_3
љ
Сtrace_0
Тtrace_1
Уtrace_2
Фtrace_32 
@__inference_model_layer_call_and_return_conditional_losses_35594
@__inference_model_layer_call_and_return_conditional_losses_35689
@__inference_model_layer_call_and_return_conditional_losses_35378
@__inference_model_layer_call_and_return_conditional_losses_35426њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zСtrace_0zТtrace_1zУtrace_2zФtrace_3
ЫBШ
 __inference__wrapped_model_34800dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
£
Х
_variables
Ц_iterations
Ч_learning_rate
Ш_index_dict
Щ
_momentums
Ъ_velocities
Ы_update_step_xla"
experimentalOptimizer
-
Ьserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
’
Ґtrace_0
£trace_12Ъ
*__inference_scale_plon_layer_call_fn_35694
*__inference_scale_plon_layer_call_fn_35699њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0z£trace_1
Л
§trace_0
•trace_12–
E__inference_scale_plon_layer_call_and_return_conditional_losses_35707
E__inference_scale_plon_layer_call_and_return_conditional_losses_35715њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z§trace_0z•trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
¶non_trainable_variables
Іlayers
®metrics
 ©layer_regularization_losses
™layer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
’
Ђtrace_0
ђtrace_12Ъ
*__inference_scale_dlon_layer_call_fn_35720
*__inference_scale_dlon_layer_call_fn_35725њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЂtrace_0zђtrace_1
Л
≠trace_0
Ѓtrace_12–
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35733
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35741њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≠trace_0zЃtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
’
іtrace_0
µtrace_12Ъ
*__inference_scale_plat_layer_call_fn_35746
*__inference_scale_plat_layer_call_fn_35751њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zіtrace_0zµtrace_1
Л
ґtrace_0
Јtrace_12–
E__inference_scale_plat_layer_call_and_return_conditional_losses_35759
E__inference_scale_plat_layer_call_and_return_conditional_losses_35767њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zґtrace_0zЈtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Љlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
’
љtrace_0
Њtrace_12Ъ
*__inference_scale_dlat_layer_call_fn_35772
*__inference_scale_dlat_layer_call_fn_35777њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zљtrace_0zЊtrace_1
Л
њtrace_0
јtrace_12–
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35785
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35793њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zњtrace_0zјtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
к
∆trace_02Ћ
$__inference_p_fc_layer_call_fn_35799Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0
Е
«trace_02ж
?__inference_p_fc_layer_call_and_return_conditional_losses_35812Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z«trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
»non_trainable_variables
…layers
 metrics
 Ћlayer_regularization_losses
ћlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
к
Ќtrace_02Ћ
$__inference_d_fc_layer_call_fn_35818Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0
Е
ќtrace_02ж
?__inference_d_fc_layer_call_and_return_conditional_losses_35831Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zќtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ѕnon_trainable_variables
–layers
—metrics
 “layer_regularization_losses
”layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
л
‘trace_02ћ
%__inference_pd_fc_layer_call_fn_35837Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z‘trace_0
Ж
’trace_02з
@__inference_pd_fc_layer_call_and_return_conditional_losses_35850Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z’trace_0
'
]0"
trackable_list_wrapper
'
]0"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
÷non_trainable_variables
„layers
Ўmetrics
 ўlayer_regularization_losses
Џlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
о
џtrace_02ѕ
(__inference_pd_embed_layer_call_fn_35857Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zџtrace_0
Й
№trace_02к
C__inference_pd_embed_layer_call_and_return_conditional_losses_35866Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z№trace_0
&:$	РN
2pd_embed/embeddings
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ёnon_trainable_variables
ёlayers
яmetrics
 аlayer_regularization_losses
бlayer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
”
вtrace_0
гtrace_12Ш
)__inference_euclidean_layer_call_fn_35874
)__inference_euclidean_layer_call_fn_35882њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zвtrace_0zгtrace_1
Й
дtrace_0
еtrace_12ќ
D__inference_euclidean_layer_call_and_return_conditional_losses_35895
D__inference_euclidean_layer_call_and_return_conditional_losses_35908њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zдtrace_0zеtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
жnon_trainable_variables
зlayers
иmetrics
 йlayer_regularization_losses
кlayer_metrics
d	variables
etrainable_variables
fregularization_losses
h__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
н
лtrace_02ќ
'__inference_flatten_layer_call_fn_35913Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zлtrace_0
И
мtrace_02й
B__inference_flatten_layer_call_and_return_conditional_losses_35919Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zмtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
нnon_trainable_variables
оlayers
пmetrics
 рlayer_regularization_losses
сlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
с
тtrace_02“
+__inference_concatenate_layer_call_fn_35930Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zтtrace_0
М
уtrace_02н
F__inference_concatenate_layer_call_and_return_conditional_losses_35942Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zуtrace_0
.
v0
w1"
trackable_list_wrapper
.
v0
w1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
p	variables
qtrainable_variables
rregularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
и
щtrace_02…
"__inference_h0_layer_call_fn_35951Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zщtrace_0
Г
ъtrace_02д
=__inference_h0_layer_call_and_return_conditional_losses_35962Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zъtrace_0
: 2	h0/kernel
: 2h0/bias
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
и
Аtrace_02…
"__inference_h1_layer_call_fn_35971Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zАtrace_0
Г
Бtrace_02д
=__inference_h1_layer_call_and_return_conditional_losses_35982Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zБtrace_0
: 2	h1/kernel
:2h1/bias
0
Ж0
З1"
trackable_list_wrapper
0
Ж0
З1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Вnon_trainable_variables
Гlayers
Дmetrics
 Еlayer_regularization_losses
Жlayer_metrics
А	variables
Бtrainable_variables
Вregularization_losses
Д__call__
+Е&call_and_return_all_conditional_losses
'Е"call_and_return_conditional_losses"
_generic_user_object
к
Зtrace_02Ћ
$__inference_fare_layer_call_fn_35991Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0
Е
Иtrace_02ж
?__inference_fare_layer_call_and_return_conditional_losses_36001Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zИtrace_0
:2fare/kernel
:2	fare/bias
 "
trackable_list_wrapper
ќ
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
8
Й0
К1
Л2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
«Bƒ
%__inference_model_layer_call_fn_35030dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
кBз
%__inference_model_layer_call_fn_35476inputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
кBз
%__inference_model_layer_call_fn_35499inputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
«Bƒ
%__inference_model_layer_call_fn_35330dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
@__inference_model_layer_call_and_return_conditional_losses_35594inputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЕBВ
@__inference_model_layer_call_and_return_conditional_losses_35689inputs_dropoff_latitudeinputs_dropoff_longitudeinputs_passenger_countinputs_pickup_latitudeinputs_pickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
вBя
@__inference_model_layer_call_and_return_conditional_losses_35378dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
вBя
@__inference_model_layer_call_and_return_conditional_losses_35426dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Э
Ц0
М1
Н2
О3
П4
Р5
С6
Т7
У8
Ф9
Х10
Ц11
Ч12
Ш13
Щ14"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
X
М0
О1
Р2
Т3
Ф4
Ц5
Ш6"
trackable_list_wrapper
X
Н0
П1
С2
У3
Х4
Ч5
Щ6"
trackable_list_wrapper
њ2Љє
Ѓ≤™
FullArgSpec2
args*Ъ'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
ШBХ
#__inference_signature_wrapper_35453dropoff_latitudedropoff_longitudepassenger_countpickup_latitudepickup_longitude"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ыBш
*__inference_scale_plon_layer_call_fn_35694inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
*__inference_scale_plon_layer_call_fn_35699inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_plon_layer_call_and_return_conditional_losses_35707inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_plon_layer_call_and_return_conditional_losses_35715inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ыBш
*__inference_scale_dlon_layer_call_fn_35720inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
*__inference_scale_dlon_layer_call_fn_35725inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35733inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35741inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ыBш
*__inference_scale_plat_layer_call_fn_35746inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
*__inference_scale_plat_layer_call_fn_35751inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_plat_layer_call_and_return_conditional_losses_35759inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_plat_layer_call_and_return_conditional_losses_35767inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ыBш
*__inference_scale_dlat_layer_call_fn_35772inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ыBш
*__inference_scale_dlat_layer_call_fn_35777inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35785inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЦBУ
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35793inputs"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
$__inference_p_fc_layer_call_fn_35799inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
?__inference_p_fc_layer_call_and_return_conditional_losses_35812inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
дBб
$__inference_d_fc_layer_call_fn_35818inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
?__inference_d_fc_layer_call_and_return_conditional_losses_35831inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
еBв
%__inference_pd_fc_layer_call_fn_35837inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
@__inference_pd_fc_layer_call_and_return_conditional_losses_35850inputs_0inputs_1"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
№Bў
(__inference_pd_embed_layer_call_fn_35857inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
C__inference_pd_embed_layer_call_and_return_conditional_losses_35866inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЪBЧ
)__inference_euclidean_layer_call_fn_35874inputs_0inputs_1inputs_2inputs_3"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЪBЧ
)__inference_euclidean_layer_call_fn_35882inputs_0inputs_1inputs_2inputs_3"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µB≤
D__inference_euclidean_layer_call_and_return_conditional_losses_35895inputs_0inputs_1inputs_2inputs_3"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µB≤
D__inference_euclidean_layer_call_and_return_conditional_losses_35908inputs_0inputs_1inputs_2inputs_3"њ
ґ≤≤
FullArgSpec1
args)Ъ&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЪ

 
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
џBЎ
'__inference_flatten_layer_call_fn_35913inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_flatten_layer_call_and_return_conditional_losses_35919inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЭBЪ
+__inference_concatenate_layer_call_fn_35930inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЄBµ
F__inference_concatenate_layer_call_and_return_conditional_losses_35942inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
÷B”
"__inference_h0_layer_call_fn_35951inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
=__inference_h0_layer_call_and_return_conditional_losses_35962inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
÷B”
"__inference_h1_layer_call_fn_35971inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
сBо
=__inference_h1_layer_call_and_return_conditional_losses_35982inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЎB’
$__inference_fare_layer_call_fn_35991inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
уBр
?__inference_fare_layer_call_and_return_conditional_losses_36001inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
Ъ	variables
Ы	keras_api

Ьtotal

Эcount"
_tf_keras_metric
c
Ю	variables
Я	keras_api

†total

°count
Ґ
_fn_kwargs"
_tf_keras_metric
c
£	variables
§	keras_api

•total

¶count
І
_fn_kwargs"
_tf_keras_metric
+:)	РN
2Adam/m/pd_embed/embeddings
+:)	РN
2Adam/v/pd_embed/embeddings
 : 2Adam/m/h0/kernel
 : 2Adam/v/h0/kernel
: 2Adam/m/h0/bias
: 2Adam/v/h0/bias
 : 2Adam/m/h1/kernel
 : 2Adam/v/h1/kernel
:2Adam/m/h1/bias
:2Adam/v/h1/bias
": 2Adam/m/fare/kernel
": 2Adam/v/fare/kernel
:2Adam/m/fare/bias
:2Adam/v/fare/bias
0
Ь0
Э1"
trackable_list_wrapper
.
Ъ	variables"
_generic_user_object
:  (2total
:  (2count
0
†0
°1"
trackable_list_wrapper
.
Ю	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
•0
¶1"
trackable_list_wrapper
.
£	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperµ
 __inference__wrapped_model_34800Р	]vw~ЖЗ’Ґ—
…Ґ≈
¬™Њ
>
dropoff_latitude*К'
dropoff_latitude€€€€€€€€€
@
dropoff_longitude+К(
dropoff_longitude€€€€€€€€€
<
passenger_count)К&
passenger_count€€€€€€€€€
<
pickup_latitude)К&
pickup_latitude€€€€€€€€€
>
pickup_longitude*К'
pickup_longitude€€€€€€€€€
™ "+™(
&
fareК
fare€€€€€€€€€П
F__inference_concatenate_layer_call_and_return_conditional_losses_35942ƒУҐП
ЗҐГ
АЪь
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€
"К
inputs_4€€€€€€€€€
"К
inputs_5€€€€€€€€€

"К
inputs_6€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ й
+__inference_concatenate_layer_call_fn_35930єУҐП
ЗҐГ
АЪь
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€
"К
inputs_4€€€€€€€€€
"К
inputs_5€€€€€€€€€

"К
inputs_6€€€€€€€€€
™ "!К
unknown€€€€€€€€€ќ
?__inference_d_fc_layer_call_and_return_conditional_losses_35831КZҐW
PҐM
KҐH
"К
inputs_0€€€€€€€€€	
"К
inputs_1€€€€€€€€€	
™ ",Ґ)
"К
tensor_0€€€€€€€€€	
Ъ І
$__inference_d_fc_layer_call_fn_35818ZҐW
PҐM
KҐH
"К
inputs_0€€€€€€€€€	
"К
inputs_1€€€€€€€€€	
™ "!К
unknown€€€€€€€€€	©
D__inference_euclidean_layer_call_and_return_conditional_losses_35895аѓҐЂ
£ҐЯ
ФЪР
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€

 
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ©
D__inference_euclidean_layer_call_and_return_conditional_losses_35908аѓҐЂ
£ҐЯ
ФЪР
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€

 
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Г
)__inference_euclidean_layer_call_fn_35874’ѓҐЂ
£ҐЯ
ФЪР
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€

 
p 
™ "!К
unknown€€€€€€€€€Г
)__inference_euclidean_layer_call_fn_35882’ѓҐЂ
£ҐЯ
ФЪР
"К
inputs_0€€€€€€€€€
"К
inputs_1€€€€€€€€€
"К
inputs_2€€€€€€€€€
"К
inputs_3€€€€€€€€€

 
p
™ "!К
unknown€€€€€€€€€®
?__inference_fare_layer_call_and_return_conditional_losses_36001eЖЗ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ В
$__inference_fare_layer_call_fn_35991ZЖЗ/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€©
B__inference_flatten_layer_call_and_return_conditional_losses_35919c3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€

™ ",Ґ)
"К
tensor_0€€€€€€€€€

Ъ Г
'__inference_flatten_layer_call_fn_35913X3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€

™ "!К
unknown€€€€€€€€€
§
=__inference_h0_layer_call_and_return_conditional_losses_35962cvw/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ ",Ґ)
"К
tensor_0€€€€€€€€€ 
Ъ ~
"__inference_h0_layer_call_fn_35951Xvw/Ґ,
%Ґ"
 К
inputs€€€€€€€€€
™ "!К
unknown€€€€€€€€€ §
=__inference_h1_layer_call_and_return_conditional_losses_35982c~/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ~
"__inference_h1_layer_call_fn_35971X~/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "!К
unknown€€€€€€€€€ё
@__inference_model_layer_call_and_return_conditional_losses_35378Щ	]vw~ЖЗЁҐў
—ҐЌ
¬™Њ
>
dropoff_latitude*К'
dropoff_latitude€€€€€€€€€
@
dropoff_longitude+К(
dropoff_longitude€€€€€€€€€
<
passenger_count)К&
passenger_count€€€€€€€€€
<
pickup_latitude)К&
pickup_latitude€€€€€€€€€
>
pickup_longitude*К'
pickup_longitude€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ё
@__inference_model_layer_call_and_return_conditional_losses_35426Щ	]vw~ЖЗЁҐў
—ҐЌ
¬™Њ
>
dropoff_latitude*К'
dropoff_latitude€€€€€€€€€
@
dropoff_longitude+К(
dropoff_longitude€€€€€€€€€
<
passenger_count)К&
passenger_count€€€€€€€€€
<
pickup_latitude)К&
pickup_latitude€€€€€€€€€
>
pickup_longitude*К'
pickup_longitude€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Б
@__inference_model_layer_call_and_return_conditional_losses_35594Љ	]vw~ЖЗАҐь
фҐр
е™б
E
dropoff_latitude1К.
inputs_dropoff_latitude€€€€€€€€€
G
dropoff_longitude2К/
inputs_dropoff_longitude€€€€€€€€€
C
passenger_count0К-
inputs_passenger_count€€€€€€€€€
C
pickup_latitude0К-
inputs_pickup_latitude€€€€€€€€€
E
pickup_longitude1К.
inputs_pickup_longitude€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Б
@__inference_model_layer_call_and_return_conditional_losses_35689Љ	]vw~ЖЗАҐь
фҐр
е™б
E
dropoff_latitude1К.
inputs_dropoff_latitude€€€€€€€€€
G
dropoff_longitude2К/
inputs_dropoff_longitude€€€€€€€€€
C
passenger_count0К-
inputs_passenger_count€€€€€€€€€
C
pickup_latitude0К-
inputs_pickup_latitude€€€€€€€€€
E
pickup_longitude1К.
inputs_pickup_longitude€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Є
%__inference_model_layer_call_fn_35030О	]vw~ЖЗЁҐў
—ҐЌ
¬™Њ
>
dropoff_latitude*К'
dropoff_latitude€€€€€€€€€
@
dropoff_longitude+К(
dropoff_longitude€€€€€€€€€
<
passenger_count)К&
passenger_count€€€€€€€€€
<
pickup_latitude)К&
pickup_latitude€€€€€€€€€
>
pickup_longitude*К'
pickup_longitude€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€Є
%__inference_model_layer_call_fn_35330О	]vw~ЖЗЁҐў
—ҐЌ
¬™Њ
>
dropoff_latitude*К'
dropoff_latitude€€€€€€€€€
@
dropoff_longitude+К(
dropoff_longitude€€€€€€€€€
<
passenger_count)К&
passenger_count€€€€€€€€€
<
pickup_latitude)К&
pickup_latitude€€€€€€€€€
>
pickup_longitude*К'
pickup_longitude€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€џ
%__inference_model_layer_call_fn_35476±	]vw~ЖЗАҐь
фҐр
е™б
E
dropoff_latitude1К.
inputs_dropoff_latitude€€€€€€€€€
G
dropoff_longitude2К/
inputs_dropoff_longitude€€€€€€€€€
C
passenger_count0К-
inputs_passenger_count€€€€€€€€€
C
pickup_latitude0К-
inputs_pickup_latitude€€€€€€€€€
E
pickup_longitude1К.
inputs_pickup_longitude€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€џ
%__inference_model_layer_call_fn_35499±	]vw~ЖЗАҐь
фҐр
е™б
E
dropoff_latitude1К.
inputs_dropoff_latitude€€€€€€€€€
G
dropoff_longitude2К/
inputs_dropoff_longitude€€€€€€€€€
C
passenger_count0К-
inputs_passenger_count€€€€€€€€€
C
pickup_latitude0К-
inputs_pickup_latitude€€€€€€€€€
E
pickup_longitude1К.
inputs_pickup_longitude€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€ќ
?__inference_p_fc_layer_call_and_return_conditional_losses_35812КZҐW
PҐM
KҐH
"К
inputs_0€€€€€€€€€	
"К
inputs_1€€€€€€€€€	
™ ",Ґ)
"К
tensor_0€€€€€€€€€	
Ъ І
$__inference_p_fc_layer_call_fn_35799ZҐW
PҐM
KҐH
"К
inputs_0€€€€€€€€€	
"К
inputs_1€€€€€€€€€	
™ "!К
unknown€€€€€€€€€	≠
C__inference_pd_embed_layer_call_and_return_conditional_losses_35866f]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€	
™ "0Ґ-
&К#
tensor_0€€€€€€€€€

Ъ З
(__inference_pd_embed_layer_call_fn_35857[]/Ґ,
%Ґ"
 К
inputs€€€€€€€€€	
™ "%К"
unknown€€€€€€€€€
ѕ
@__inference_pd_fc_layer_call_and_return_conditional_losses_35850КZҐW
PҐM
KҐH
"К
inputs_0€€€€€€€€€	
"К
inputs_1€€€€€€€€€	
™ ",Ґ)
"К
tensor_0€€€€€€€€€	
Ъ ®
%__inference_pd_fc_layer_call_fn_35837ZҐW
PҐM
KҐH
"К
inputs_0€€€€€€€€€	
"К
inputs_1€€€€€€€€€	
™ "!К
unknown€€€€€€€€€	∞
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35785g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
E__inference_scale_dlat_layer_call_and_return_conditional_losses_35793g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ К
*__inference_scale_dlat_layer_call_fn_35772\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "!К
unknown€€€€€€€€€К
*__inference_scale_dlat_layer_call_fn_35777\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "!К
unknown€€€€€€€€€∞
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35733g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
E__inference_scale_dlon_layer_call_and_return_conditional_losses_35741g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ К
*__inference_scale_dlon_layer_call_fn_35720\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "!К
unknown€€€€€€€€€К
*__inference_scale_dlon_layer_call_fn_35725\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "!К
unknown€€€€€€€€€∞
E__inference_scale_plat_layer_call_and_return_conditional_losses_35759g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
E__inference_scale_plat_layer_call_and_return_conditional_losses_35767g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ К
*__inference_scale_plat_layer_call_fn_35746\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "!К
unknown€€€€€€€€€К
*__inference_scale_plat_layer_call_fn_35751\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "!К
unknown€€€€€€€€€∞
E__inference_scale_plon_layer_call_and_return_conditional_losses_35707g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ∞
E__inference_scale_plon_layer_call_and_return_conditional_losses_35715g7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ К
*__inference_scale_plon_layer_call_fn_35694\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p 
™ "!К
unknown€€€€€€€€€К
*__inference_scale_plon_layer_call_fn_35699\7Ґ4
-Ґ*
 К
inputs€€€€€€€€€

 
p
™ "!К
unknown€€€€€€€€€±
#__inference_signature_wrapper_35453Й	]vw~ЖЗќҐ 
Ґ 
¬™Њ
>
dropoff_latitude*К'
dropoff_latitude€€€€€€€€€
@
dropoff_longitude+К(
dropoff_longitude€€€€€€€€€
<
passenger_count)К&
passenger_count€€€€€€€€€
<
pickup_latitude)К&
pickup_latitude€€€€€€€€€
>
pickup_longitude*К'
pickup_longitude€€€€€€€€€"+™(
&
fareК
fare€€€€€€€€€