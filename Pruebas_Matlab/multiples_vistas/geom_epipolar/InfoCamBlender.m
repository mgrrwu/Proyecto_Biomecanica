%%PARAMETROS DE CAMARAS BLENDER

n_cams = 17; %Numero de camaras

%Parametros Extrinsecos
%Matriz con los centros de las camaras. T(:,i) indica las coordenadas correspondientes a camara i
T =[...
	[0.24867463111877441, -2.5, 8.0]'...
	[-0.10000000149011612, 2.5, 0.800000011920929]'...
	[3.75, 2.5, 1.0]'...
	[7.5, 2.5, 1.2000000476837158]'...
	[7.5, 0.0, 1.2000000476837158]'...
	[7.5, -2.5, 1.2000000476837158]'...
	[7.5, -5.0, 1.2000000476837158]'...
	[7.5, -7.5, 1.2000000476837158]'...
	[3.75, -7.5, 1.0]'...
	[0.20000000298023224, -7.5, 0.800000011920929]'...
	[-3.75, -7.5, 1.0]'...
	[-7.5, -7.5, 1.2000000476837158]'...
	[-7.5, -5.0, 1.2000000476837158]'...
	[-7.5, -2.5, 1.2000000476837158]'...
	[-7.5, 0.0, 1.2000000476837158]'...
	[-7.5, 2.5, 1.2000000476837158]'...
	[-3.75, 2.5, 1.0]'...
];

%Matriz con los angulos de las camaras. angles(:,i) indica los angulos correspondientes a camara i en el orden XYZ
angles =[...
	[3.141594171524048, 3.141594171524048, -1.5707975625991821]'...
	[4.6612067222595215, 1.5707969665527344, 1.6659407187091801e-10]'...
	[4.6612067222595215, 3.1492605209350586, -0.6981319785118103]'...
	[4.6612067222595215, 3.1492605209350586, -0.9982879757881165]'...
	[4.6612067222595215, 3.1492605209350586, -1.2740906476974487]'...
	[4.6612067222595215, 3.1492605209350586, -1.5707969665527344]'...
	[4.6612067222595215, 3.1492605209350586, -1.867503046989441]'...
	[4.6612067222595215, 3.1492602825164795, -2.115298271179199]'...
	[4.6612067222595215, 3.1492605209350586, 3.839725971221924]'...
	[4.6612067222595215, 1.5707969665527344, 3.1415939331054688]'...
	[4.6612067222595215, 3.1492605209350586, 2.4434618949890137]'...
	[4.6612067222595215, 3.1492607593536377, -4.139880657196045]'...
	[4.6612067222595215, 3.1492605209350586, 1.867503046989441]'...
	[4.6612067222595215, 3.1492605209350586, 1.5707969665527344]'...
	[4.6612067222595215, 3.1492605209350586, 1.2740910053253174]'...
	[4.6612067222595215, 3.1492605209350586, -5.256891250610352]'...
	[ 4.6612067222595215, 3.1492605209350586, 0.6981321573257446]'...
];

%Matrices de rotación 
R=zeros(3, 3, n_cams);% Array de matrices para guardar en tercera dimension las rotaciones de cada camara

%matriz de rotacion y cuaternion asociado a la camara 1
R(:,:,1)= [...
	1.235804234056559e-06, -1.0, 1.5179323327174643e-06;...
	1.0, 1.2358019603198045e-06, -1.5179360843831091e-06;...
	1.5179342653937056e-06, 1.5179342653937056e-06, 1.0...
];
q1 = [-0.7071072459220886, -1.0733416502262116e-06, 6.632200756466478e-13, -0.707106351852417];

%matriz de rotacion y cuaternion asociado a la camara 2
R(:,:,2)= [...
	-6.397578431460715e-07, -0.9986904859542847, -0.05115991458296776;...
	-1.0657986611707306e-16, -0.05115991458296776, 0.9986904859542847;...
	-1.0, 6.38920084838901e-07, 3.272995741099294e-08...
];
q2 = [-0.4870419502258301, 0.51263028383255, -0.48704227805137634, -0.5126306414604187];

%matriz de rotacion y cuaternion asociado a la camara 3
R(:,:,3)= [...
	-0.766021728515625, -0.027018794789910316, 0.6422466039657593;...
	0.642768919467926, -0.04411306977272034, 0.7647889256477356;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q3 = [-0.2454707771539688, -0.23818738758563995, -0.6462875008583069, -0.6821461319923401];

%matriz de rotacion y cuaternion asociado a la camara 4
R(:,:,4)= [...
	-0.5417262315750122, -0.03885367140173912, 0.8396565318107605;...
	0.8405200242996216, -0.03415216505527496, 0.5407029986381531;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q4 = [-0.3447027802467346, -0.33213984966278076, -0.6034102439880371, -0.6377767324447632];

%matriz de rotacion y cuaternion asociado a la camara 5
R(:,:,5)= [...
	-0.29236283898353577, -0.04668556526303291, 0.9551672339439392;...
	0.9562767148017883, -0.022280842065811157, 0.2916133999824524;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q5 = [-0.42910218238830566, -0.41193434596061707, -0.5520243644714355, -0.5843376517295837];

%matriz de rotacion y cuaternion asociado a la camara 6
R(:,:,6)= [...
	6.397390279744286e-07, -0.05115991830825806, 0.9986904859542847;...
	0.9999706149101257, -0.007657718379050493, -0.00039292252040468156;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q6 = [-0.5107595920562744, -0.48900407552719116, -0.4850730001926422, -0.5144938230514526];

%matriz de rotacion y cuaternion asociado a la camara 7
R(:,:,7)= [...
	0.29236382246017456, -0.05116337537765503, 0.9549375176429749;...
	0.9562764167785645, 0.007634605746716261, -0.2923646867275238;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q7 = [-0.5811963677406311, -0.5553311705589294, -0.40746545791625977, -0.4333474338054657];

%matriz de rotacion y cuaternion asociado a la camara 8
R(:,:,8)= [...
	0.5179768800735474, -0.047727975994348526, 0.854062020778656;...
	0.8553602695465088, 0.01995030790567398, -0.5176493525505066;...
	0.00766755361109972, 0.9986611008644104, 0.05115840956568718...
];
q8 = [-0.630294680595398, -0.6014291644096375, -0.33571380376815796, -0.3582007884979248];

%matriz de rotacion y cuaternion asociado a la camara 9
R(:,:,9)= [...
	0.7660208940505981, -0.03875119239091873, 0.6416465640068054;...
	0.6427699327468872, 0.034268397837877274, -0.7652924060821533;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q9 = [0.6803395748138428, 0.6481886506080627, 0.23296411335468292, 0.25043419003486633];

%matriz de rotacion y cuaternion asociado a la camara 10
R(:,:,10)= [...
	6.397578431460715e-07, 0.9986904263496399, 0.05116119235754013;...
	8.185801754316546e-13, 0.05116119235754013, -0.9986904263496399;...
	-1.0, 6.38920084838901e-07, 3.272995741099294e-08...
];
q10 = [0.5126309394836426, 0.4870419502258301, 0.5126305818557739, -0.4870416224002838];

%matriz de rotacion y cuaternion asociado a la camara 11
R(:,:,11)= [...
	0.7660225033760071, 0.02701874077320099, -0.6422456502914429;...
	-0.6427679657936096, 0.044113099575042725, -0.7647897601127625;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q11 = [0.6821462512016296, 0.6462876796722412, -0.23818698525428772, -0.24547035992145538];

%matriz de rotacion y cuaternion asociado a la camara 12
R(:,:,12)= [...
	0.5417261719703674, 0.038853541016578674, -0.8396565914154053;...
	-0.8405200242996216, 0.03415236249566078, -0.5407029390335083;...
	0.007668030448257923, 0.9986611008644104, 0.05115840956568718...
];
q12 = [-0.637776792049408, -0.6034101843833923, 0.3321399390697479, 0.34470272064208984];

%matriz de rotacion y cuaternion asociado a la camara 13
R(:,:,13)= [...
	0.29236382246017456, 0.04668554291129112, -0.9551669359207153;...
	-0.9562764167785645, 0.022280890494585037, -0.2916144132614136;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q13 = [0.5843378901481628, 0.5520246028900146, -0.4119340479373932, -0.4291018843650818];

%matriz de rotacion y cuaternion asociado a la camara 14
R(:,:,14)= [...
	6.397390279744286e-07, 0.05115991085767746, -0.9986904859542847;...
	-0.9999706149101257, 0.007657783571630716, 0.0003916446876246482;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q14 = [0.5144941210746765, 0.4850732982158661, -0.4890037775039673, -0.5107592344284058];

%matriz de rotacion y cuaternion asociado a la camara 15
R(:,:,15)= [...
	-0.2923624813556671, 0.051163382828235626, -0.9549379348754883;...
	-0.9562768340110779, -0.007634534500539303, 0.29236334562301636;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q15 = [0.4333478510379791, 0.4074658453464508, -0.5553308725357056, -0.5811960697174072];

%matriz de rotacion y cuaternion asociado a la camara 16
R(:,:,16)= [...
	-0.5179771780967712, 0.04772809147834778, -0.8540618419647217;...
	-0.8553600907325745, -0.01995011977851391, 0.5176496505737305;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q16 = [-0.3582007586956024, -0.33571362495422363, 0.601429283618927, 0.6302947402000427];

%matriz de rotacion y cuaternion asociado a la camara 17
R(:,:,17)= [...
	-0.7660216093063354, 0.03875115141272545, -0.6416457295417786;...
	-0.6427690386772156, -0.034268442541360855, 0.7652931213378906;...
	0.0076677920296788216, 0.9986611008644104, 0.05115840956568718...
];
q17 = [0.2504338026046753, 0.23296372592449188, -0.6481887698173523, -0.6803396940231323];



%Parametros Intrinsecos
t_vista ={'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  'PERSP'  };% tipo de vista utilizado en cada camara
f=[40.0, 45.0, 32.0, 50.0, 45.0, 45.0, 45.0, 50.0, 32.0, 45.0, 32.0, 50.0, 45.0, 45.0, 45.0, 50.0, 32.0];% Vector con las distancias focales unidades en (MILLIMETERS)
shift_x = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
shift_y = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];% Corrimientos horizontales y verticales del centro de la camara 
sensor_height = [18.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0, 10.0];%Largo, ancho y tipo de ajuste utilizado para el sensor
sensor_width = [32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0, 32.0];
sensor_fit = {'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  'AUTO'  };% En modo Auto ajusta la anchura o largura del sensor en función de la resolución 
%Este parametro nos dice que dimension del sensor se va a usar por completo dada la resolucion del renderizado

%Datos del renderizado Blender
resolution_x = 1600*ones(1, length(f));
resolution_y = 600*ones(1, length(f));
pixel_aspect_x = 1.0;%si estos dos valores son iguales el pixel es cuadrado
pixel_aspect_y = 1.0;
frame_start = 0;
frame_end = 321;

%Ajustes finales
sensor = [sensor_width; sensor_height]; %Agrupo el ancho y largo del sensor en un solo vector
resolution = [resolution_x; resolution_y]; %agrupo resoluciones en un solo vector
str='q=[q1';
for i=2:n_cams %genero un comando que agrupe todos los cuaterniones
    str = sprintf('%s;q%d', str, i);
end
str = [str, '];'];
eval(str);
q=quaternion(q); %transformo en tipo de dato cuaternion
Rq=RotationMatrix(q);%Obtengo las matrices de rotación a partir de los cuaterniones. R(:,:,i) es la matriz de rotación de la camara i