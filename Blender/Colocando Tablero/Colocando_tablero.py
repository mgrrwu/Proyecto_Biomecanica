import bpy
from mathutils import Vector


#obtengo las camaras
cams = bpy.data.cameras
#obtengo los nombres de las camaras
lista_nombres = cams.keys()

for i in range(0,len(cams)-1):#ejecuto con todas las camaras menos la última   
	current_cam = bpy.data.objects[list_nombre[i]]#me quedo con la camara i
	up_current_cam = current_cam.matrix_world.to_quaternion() * Vector((0.0, 1.0, 0.0)) #sentido que indica el "arriba" de la camara i
	v = current_cam.matrix_world.to_quaternion() * Vector((0.0, 0.0, -1.0)) #direccion de la camara i
	C = bpy.data.object[list_nombre[i]].Location #coordenadas del centro de la cámara i
	#
	next_cam = bpy.data.objects[list_nombre[i+1]]#me quedo con la camara i+1
	up_next_cam = next_cam.matrix_world.to_quaternion() * Vector((0.0, 1.0, 0.0)) #sentido que indica el "arriba" de la camara i+1
	w = next_cam.matrix_world.to_quaternion() * Vector((0.0, 0.0, -1.0)) #direccion de la camara i+1
	B = bpy.data.object[list_nombre[i+1]].Location #coordenadas del centro de la cámara i+1
	#
#Sea una camara con una recta generada a partir del centro de la camara C y el versor director v
# r: X=(x, y, z) = (c1, c2, c3) + lambda1*(v1, v2, v3)
#Tomemos la recta perteneciente a otra camara con centro B y versor director w
# s: X=(x, y, z) = (b1, b2, b3) + lambda2*(w1, w2, w3)
##
# n=v^w es una dirección perpendicular tanto a s como a r
#Si se quiere encontrar la recta perpendicular tanto a r como a s, se debe resolver el siguiente sistema de ecuaciones
# I)  det([X-C;  r;  n])=0 ==>Ax+Dy+Ez=F
# II) det([X-B;  s;  n])=0 ==>ax+Dy+ez=f
#La intersección de los planos anteriores es la solución buscada
##
#x = [F - (Df+aDF)/(d-aD)] + lambda3*[D(e-aE)/(d-aD) - E]
#y = [(f-aF)/(d-aD)]       + lambda3*[(aE-e)/(d-aD)]   
#z = [0]		   + lambda3*[1]	
##
#Llamemos G = (g1, g2, g3) = [F-(Df+aDF)/(d-aD), (f-aF)/(d-aD), 0] y nn = (nn1, nn2, nn3) = [D(e-aE)/(d-aD)-E, (aE-e)/(d-aD), 1], este último vector debería tener igual dirección que n=v^w.
#Ahora se tiene la recta perpendicular tanto a r como a s, 
#nrs: X = G + lambda3*nn
#Para encontrar el punto medio N entre las rectas r y s sobre la recta nrs, se deben encontrar las intersecciones de r y nrs, junto con la de s y nrs, para luego aplicar valor medio.
#I1 = r interseccion nrs = C + {[nn2(c1-g1)-nn1(c2-g2)]/(v2*nn1-v1*nn2)}*.v 
#I2 = s interseccion nrs = B + {[nn2(b1-g1)-nn1(b2-g2)]/(w2*nn1-w1*nn2)}*.w
# Luego N = (I1+I2)/2 
##
#Punto medio entre C y B (centros de las cámaras i e (i+1))
#CC = (C+B)/2
##
#Se quiere que el tablero sea perpendicular a la direccion t=(N-CC)	
#El tablero tiene su eje z (versor k) perpendicular saliendo del plano del mismo, por lo tanto si se quiere orientar el mismo según una cierta dirección t,
#se debe encontrar el ángulo entre dicha dirección t y el eje z del tablero.
#theta = dot(t, k)/magnitude(t)
#Luego se debe girar el mismo un ángulo theta en una dirección perpendicular a t.


####Buscar por este lado en google: blender xxx object orientation
###creo que la solución está por acá: http://oneminutevideotutorials.com/blender-straighten-the-rotation-of-any-object/



##FUNCIONES UTILES
def magnitude(v):
	return math.sqrt(sum(v[i]*v[i] for i in range(len(v))))

def add(u, v):
	return [ u[i]+v[i] for i in range(len(u)) ]

def sub(u, v):
	return [ u[i]-v[i] for i in range(len(u)) ]

def dot(u, v):
	return sum(u[i]*v[i] for i in range(len(u)))

def cross3D(u, v):
	return [u[2]*v[3]-u[3]*v[2], u[3]*v[1]-u[1]*v[3], u[1]*v[2]-u[2]*v[1] ]

def normalize(v):
	vmag = magnitude(v)
	return [ v[i]/vmag  for i in range(len(v)) ]



##EJEMPLO DE COMO ROTAR OBJECTOS
Here is an example how i can rotate Localy an active object at Y-Axis.
activeObj = bpy.context.scene.objects.active
activeObjMatrix = activeObj.matrix_world
theAxis = (activeObjMatrix[0][1], activeObjMatrix[1][1], activeObjMatrix[2][1])
bpy.ops.transform.rotate(value=rotateValue, axis=theAxis)






