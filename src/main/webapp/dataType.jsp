<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
</head>
<body>
<%
  int a=3;  //�ŧi�G�Ӿ���ܼ�
  float c=78f, b;  //�ŧi�@�ӯB�I�ܼ�
  b=c+a; //���ݭn�ഫ��ƫ��A �]��b�O�B�I�ơA����o�Ua�]��o�Uc
  out.println("b="+b); //��Xb=81.0;
  
  int d;
  d=(int)c+a;  //�Nc�ഫ����ƫ��A�A�Y���ഫ�h�|�X�{���~
  //d=c+a;  //�Nc�ഫ����ƫ��A�A�Y���ഫ�h�|�X�{���~
            //d�O��ơA���񤣤Uc �]���o��|�X��
  out.println("d="+d); //��Xb=81;
%>
</body>
</html>