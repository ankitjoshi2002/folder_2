#include<iostream>
using namespace std;
int main()
{
int a(4);
bool myboolean=true ;
char mychar='D' ;
float myfloat=6.37f ;
double mydouble=5.99; 
wchar_t w = L'A' ;
long int mylong=1e18 ;

cout<<"-------SIZE ON OPERATOR -------"<<"\n";
cout<<"integer :"<<sizeof(int)<<endl;
cout<<"boolean :"<<sizeof(bool)<<endl;
cout<<"character :"<<sizeof(char)<<endl;
cout<<"float :"<<sizeof(float)<<endl;
cout<<"double :"<<sizeof(double)<<endl;
cout<<"wide character :"<<sizeof(wchar_t)<<endl;
cout<<"long integer :"<<sizeof(long int)<<endl;

cout<<"-------SIZE ON VARIABLES-------"<<"\n";
cout<<"integer :"<<sizeof(a)<<endl;
cout<<"boolean :"<<sizeof(myboolean)<<endl;
cout<<"character :"<<sizeof(mychar)<<endl;
cout<<"float :"<<sizeof(myfloat)<<endl;
cout<<"double :"<<sizeof(mydouble)<<endl;
cout<<"wide character :"<<sizeof(w)<<endl;
cout<<"long integer :"<<sizeof(mylong)<<endl;

return 0 ;
}
