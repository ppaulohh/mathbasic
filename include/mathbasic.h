#ifndef MATHBASIC_H
#define MATHBASIC_H

namespace mbasic {
	class mathbasic
	{
	public:
		static int add(int v1,int v2); // retorna soma V1 + V2
		static int dif(int v1,int v2); // retorna diferença V1 - V2
		static int mux(int v1,int v2); // retorna o produto v1*v2
		static int div(int v1,int v2); // retorna divisão V1 / V2
		mathbasic();
		~mathbasic();
	
	};
}
#endif