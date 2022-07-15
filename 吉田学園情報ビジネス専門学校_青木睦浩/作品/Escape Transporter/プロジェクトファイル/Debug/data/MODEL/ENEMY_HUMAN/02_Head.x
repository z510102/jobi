xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 212;
 -3.99433;5.58612;-10.36408;,
 3.99433;5.58612;-10.36408;,
 3.99433;0.19934;-10.36408;,
 -3.99433;0.19934;-10.36408;,
 3.99433;5.58612;11.98095;,
 -3.99433;5.58612;11.98095;,
 -3.99433;0.19934;11.98095;,
 3.99433;0.19934;11.98095;,
 -3.99433;5.58612;11.98095;,
 3.99433;5.58612;11.98095;,
 3.99433;5.58612;-10.36408;,
 -3.99433;5.58612;-10.36408;,
 -3.99433;0.19934;-10.36408;,
 3.99433;0.19934;-10.36408;,
 3.99433;0.19934;11.98095;,
 -3.99433;0.19934;11.98095;,
 3.49729;5.58612;-10.27387;,
 11.48596;3.05063;-9.04184;,
 11.48596;0.19934;-9.04184;,
 3.49729;0.19934;-10.27387;,
 11.48596;3.05063;-9.04184;,
 11.48596;3.05063;11.98095;,
 11.48596;0.19934;11.98095;,
 11.48596;0.19934;-9.04184;,
 11.48596;3.05063;11.98095;,
 3.49729;5.58612;11.98095;,
 3.49729;0.19934;11.98095;,
 11.48596;0.19934;11.98095;,
 3.49729;5.58612;11.98095;,
 11.48596;3.05063;-9.04184;,
 3.49729;5.58612;-10.27387;,
 3.49729;0.19934;-10.27387;,
 11.48596;0.19934;-9.04184;,
 3.49729;0.19934;11.98095;,
 -3.49729;5.58612;-10.27387;,
 -3.49729;0.19934;-10.27387;,
 -11.48596;0.19934;-9.04184;,
 -11.48596;3.05063;-9.04184;,
 -11.48596;3.05063;-9.04184;,
 -11.48596;0.19934;-9.04184;,
 -11.48596;0.19934;11.98095;,
 -11.48596;3.05063;11.98095;,
 -11.48596;3.05063;11.98095;,
 -11.48596;0.19934;11.98095;,
 -3.49729;0.19934;11.98095;,
 -3.49729;5.58612;11.98095;,
 -3.49729;5.58612;11.98095;,
 -3.49729;5.58612;-10.27387;,
 -11.48596;3.05063;-9.04184;,
 -3.49729;0.19934;-10.27387;,
 -3.49729;0.19934;11.98095;,
 -11.48596;0.19934;-9.04184;,
 -8.23234;8.30571;-9.98288;,
 8.23234;8.30571;-9.98288;,
 8.23234;3.02567;-9.98288;,
 -8.23234;3.02567;-9.98288;,
 8.23234;8.30571;-9.98288;,
 8.23234;8.30571;11.34612;,
 8.23234;3.02567;11.34612;,
 8.23234;3.02567;-9.98288;,
 8.23234;8.30571;11.34612;,
 -8.23234;8.30571;11.34612;,
 -8.23234;3.02567;11.34612;,
 8.23234;3.02567;11.34612;,
 -8.23234;8.30571;11.34612;,
 -8.23234;8.30571;-9.98288;,
 -8.23234;3.02567;-9.98288;,
 -8.23234;3.02567;11.34612;,
 8.23234;8.30571;-9.98288;,
 -8.23234;8.30571;-9.98288;,
 -8.23234;3.02567;-9.98288;,
 8.23234;3.02567;-9.98288;,
 -7.71012;7.47214;-9.98831;,
 -5.41419;7.47214;-9.98831;,
 -5.41419;5.17622;-9.98832;,
 -7.71012;5.17622;-9.98832;,
 7.71012;7.47214;-9.98831;,
 7.71012;5.17622;-9.98832;,
 5.41419;5.17622;-9.98832;,
 5.41419;7.47214;-9.98831;,
 -6.44743;12.47866;-10.53286;,
 6.44743;12.47866;-10.53286;,
 6.44743;8.23781;-10.53286;,
 -6.44743;8.23781;-10.53286;,
 6.44743;12.47866;-10.53286;,
 6.44743;12.47866;-3.15691;,
 6.44743;8.23781;-3.15691;,
 6.44743;8.23781;-10.53286;,
 6.44743;12.47866;-3.15691;,
 -6.44743;12.47866;-3.15691;,
 -6.44743;8.23781;-3.15691;,
 6.44743;8.23781;-3.15691;,
 -6.44743;12.47866;-3.15691;,
 -6.44743;12.47866;-10.53286;,
 -6.44743;8.23781;-10.53286;,
 -6.44743;8.23781;-3.15691;,
 6.44743;12.47866;-10.53286;,
 -6.44743;12.47866;-10.53286;,
 5.15673;11.45181;-10.55598;,
 5.15673;9.15585;-10.55598;,
 2.86080;9.15585;-10.55598;,
 2.86080;11.45181;-10.55598;,
 -5.15673;11.45181;-10.55598;,
 -2.86080;11.45181;-10.55598;,
 -2.86080;9.15585;-10.55598;,
 -5.15673;9.15585;-10.55598;,
 -2.03716;15.88157;-10.53286;,
 2.03716;15.88157;-10.53286;,
 2.03716;12.28430;-10.53286;,
 -2.03716;12.28430;-10.53286;,
 2.03716;15.88157;-10.53286;,
 2.03716;15.88157;-3.15691;,
 2.03716;12.28430;-3.15691;,
 2.03716;12.28430;-10.53286;,
 2.03716;15.88157;-3.15691;,
 -2.03716;15.88157;-3.15691;,
 -2.03716;12.28430;-3.15691;,
 2.03716;12.28430;-3.15691;,
 -2.03716;15.88157;-3.15691;,
 -2.03716;15.88157;-10.53286;,
 -2.03716;12.28430;-10.53286;,
 -2.03716;12.28430;-3.15691;,
 2.03716;15.88157;-10.53286;,
 -2.03716;15.88157;-10.53286;,
 1.18779;15.25095;-10.55598;,
 1.18779;12.95503;-10.55598;,
 -1.10814;12.95503;-10.55598;,
 -1.10814;15.25095;-10.55598;,
 -6.22621;12.47866;3.95632;,
 6.22621;12.47866;3.95632;,
 8.11008;8.23781;3.95632;,
 -8.11008;8.23781;3.95632;,
 6.22621;12.47866;3.95632;,
 6.22621;12.47866;11.33226;,
 8.11008;8.23781;11.33226;,
 8.11008;8.23781;3.95632;,
 6.22621;12.47866;11.33226;,
 -6.22621;12.47866;11.33226;,
 -8.11008;8.23781;11.33226;,
 8.11008;8.23781;11.33226;,
 -6.22621;12.47866;11.33226;,
 -6.22621;12.47866;3.95632;,
 -8.11008;8.23781;3.95632;,
 -8.11008;8.23781;11.33226;,
 6.22621;12.47866;3.95632;,
 -6.22621;12.47866;3.95632;,
 -0.78972;77.07776;-3.37809;,
 0.78972;77.07776;-3.37809;,
 0.78972;8.06627;-3.37809;,
 -0.78972;8.06627;-3.37809;,
 0.78972;77.07776;-3.37809;,
 0.78972;77.07776;11.00022;,
 0.78972;8.06627;11.00022;,
 0.78972;8.06627;-3.37809;,
 0.78972;77.07776;11.00022;,
 -0.78972;77.07776;11.00022;,
 -0.78972;8.06627;11.00022;,
 0.78972;8.06627;11.00022;,
 -0.78972;77.07776;11.00022;,
 -0.78972;77.07776;-3.37809;,
 -0.78972;8.06627;-3.37809;,
 -0.78972;8.06627;11.00022;,
 -0.79367;43.02892;-3.42665;,
 0.79367;43.02892;-3.42665;,
 0.79367;33.79714;-3.42665;,
 -0.79367;33.79714;-3.42665;,
 0.79367;43.02892;-3.42665;,
 0.79367;43.02892;11.04666;,
 0.79367;33.79714;11.04666;,
 0.79367;33.79714;-3.42665;,
 0.79367;43.02892;11.04666;,
 -0.79367;43.02892;11.04666;,
 -0.79367;33.79714;11.04666;,
 0.79367;33.79714;11.04666;,
 -0.79367;43.02892;11.04666;,
 -0.79367;43.02892;-3.42665;,
 -0.79367;33.79714;-3.42665;,
 -0.79367;33.79714;11.04666;,
 -0.83426;61.07813;-3.51593;,
 0.83426;61.07813;-3.51593;,
 0.83426;59.22533;-3.51593;,
 -0.83426;59.22533;-3.51593;,
 0.83426;61.07813;-3.51593;,
 0.83426;61.07813;11.05512;,
 0.83426;59.22533;11.05512;,
 0.83426;59.22533;-3.51593;,
 0.83426;61.07813;11.05512;,
 -0.83426;61.07813;11.05512;,
 -0.83426;59.22533;11.05512;,
 0.83426;59.22533;11.05512;,
 -0.83426;61.07813;11.05512;,
 -0.83426;61.07813;-3.51593;,
 -0.83426;59.22533;-3.51593;,
 -0.83426;59.22533;11.05512;,
 -0.83426;83.47786;-3.51593;,
 0.83426;83.47786;-3.51593;,
 0.83426;74.24573;-3.51593;,
 -0.83426;74.24573;-3.51593;,
 0.83426;83.47786;-3.51593;,
 0.83426;83.47786;11.05512;,
 0.83426;74.24573;11.05512;,
 0.83426;74.24573;-3.51593;,
 0.83426;83.47786;11.05512;,
 -0.83426;83.47786;11.05512;,
 -0.83426;74.24573;11.05512;,
 0.83426;74.24573;11.05512;,
 -0.83426;83.47786;11.05512;,
 -0.83426;83.47786;-3.51593;,
 -0.83426;74.24573;-3.51593;,
 -0.83426;74.24573;11.05512;,
 0.83426;83.47786;-3.51593;,
 -0.83426;83.47786;-3.51593;;
 
 57;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,13,14,15;,
 4;16,17,18,19;,
 4;20,21,22,23;,
 4;24,25,26,27;,
 4;28,21,29,30;,
 4;31,32,22,33;,
 4;34,35,36,37;,
 4;38,39,40,41;,
 4;42,43,44,45;,
 4;46,47,48,41;,
 4;49,50,40,51;,
 4;52,53,54,55;,
 4;56,57,58,59;,
 4;60,61,62,63;,
 4;64,65,66,67;,
 4;64,57,68,69;,
 4;70,71,58,67;,
 4;72,73,74,75;,
 4;76,77,78,79;,
 4;80,81,82,83;,
 4;84,85,86,87;,
 4;88,89,90,91;,
 4;92,93,94,95;,
 4;92,85,96,97;,
 4;98,99,100,101;,
 4;102,103,104,105;,
 4;106,107,108,109;,
 4;110,111,112,113;,
 4;114,115,116,117;,
 4;118,119,120,121;,
 4;118,111,122,123;,
 4;124,125,126,127;,
 4;128,129,130,131;,
 4;132,133,134,135;,
 4;136,137,138,139;,
 4;140,141,142,143;,
 4;140,133,144,145;,
 4;146,147,148,149;,
 4;150,151,152,153;,
 4;154,155,156,157;,
 4;158,159,160,161;,
 4;162,163,164,165;,
 4;166,167,168,169;,
 4;170,171,172,173;,
 4;174,175,176,177;,
 4;178,179,180,181;,
 4;182,183,184,185;,
 4;186,187,188,189;,
 4;190,191,192,193;,
 4;194,195,196,197;,
 4;198,199,200,201;,
 4;202,203,204,205;,
 4;206,207,208,209;,
 4;206,199,210,211;;
 
 MeshMaterialList {
  6;
  57;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  2,
  2,
  2,
  2,
  2,
  2,
  5,
  5,
  2,
  2,
  2,
  2,
  2,
  5,
  5,
  2,
  2,
  2,
  2,
  2,
  5,
  2,
  2,
  2,
  2,
  2,
  0,
  0,
  0,
  0,
  4,
  4,
  4,
  4,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3,
  3;;
  Material {
   0.431000;0.000000;0.008000;1.000000;;
   15.000000;
   0.500000;0.500000;0.500000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.380000;0.380000;0.380000;1.000000;;
   100.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.871000;0.871000;0.871000;1.000000;;
   60.000000;
   0.200000;0.200000;0.200000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;0.502000;0.000000;1.000000;;
   100.000000;
   1.000000;1.000000;1.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;0.000000;0.000000;1.000000;;
   100.000000;
   1.000000;1.000000;1.000000;;
   1.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  13;
  0.000000;0.000000;-1.000000;,
  0.000000;0.000000;1.000000;,
  0.152420;0.000000;-0.988316;,
  1.000000;0.000000;0.000000;,
  -0.152420;0.000000;-0.988316;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000004;-1.000000;,
  0.913888;0.405967;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;,
  0.302514;0.953145;0.000000;,
  -0.302514;0.953145;0.000000;,
  -0.913888;0.405967;0.000000;;
  57;
  4;0,0,0,0;,
  4;1,1,1,1;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;2,2,2,2;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;10,10,10,10;,
  4;9,9,9,9;,
  4;4,4,4,4;,
  4;5,5,5,5;,
  4;1,1,1,1;,
  4;11,11,11,11;,
  4;9,9,9,9;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;5,5,5,5;,
  4;8,8,8,8;,
  4;9,9,9,9;,
  4;6,6,6,6;,
  4;6,6,6,6;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;5,5,5,5;,
  4;8,8,8,8;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;5,5,5,5;,
  4;8,8,8,8;,
  4;0,0,0,0;,
  4;0,0,0,0;,
  4;7,7,7,7;,
  4;1,1,1,1;,
  4;12,12,12,12;,
  4;8,8,8,8;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;5,5,5,5;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;5,5,5,5;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;5,5,5,5;,
  4;0,0,0,0;,
  4;3,3,3,3;,
  4;1,1,1,1;,
  4;5,5,5,5;,
  4;8,8,8,8;;
 }
 MeshTextureCoords {
  212;
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  1.000000;0.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  0.000000;0.000000;,
  1.000000;0.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;,
  1.000000;1.000000;,
  0.000000;1.000000;;
 }
}
