classdef func_on_I
	properties
		f
		I
		C;C1;
		C12
		C_1;C_2
	end
	methods
		function obj = func_on_I(f,I)
			if nargin == 2
				obj.f = f;
				obj.I = I;
				obj.C = obj.C_func(obj.f,obj.I);
				obj.C1 = obj.C1_func(obj.f,obj.I);
				obj.C12 = obj.C12_func(obj.f,obj.I);
				obj.C_1 = obj.C_1_func(obj.f,obj.I);
				obj.C_2 = obj.C_2_func(obj.f,obj.I);
			end
		end
		function e = global_extremes(obj,f,I)
			df = diff(f);
			if diff(df) == 0
				e = f(I);
			else	
				crit_pts = solve(df)';
				e = [f(I(1)),f(crit_pts),f(I(2))];
			end
		end
		function C = C_func(obj,f,I)
			e = obj.global_extremes(f,I);
			C = max(abs(e));
		end
		function C1 = C1_func(obj,f,I)
			e1 = obj.global_extremes(f,I);
			e2 = obj.global_extremes(diff(f),I);
			C1 = max(abs(e1)) + max(abs(e2));
		end
		function C12 = C12_func(obj,f,I)
			%C12 = (int(abs(f)^2+abs(diff(f))^2,I))^(1/2)
			C12 = (int(f^2+diff(f)^2,I))^(1/2);
		end
		function C_1 = C_1_func(obj,f,I)
			C_1 = int(abs(f),I);
		end
		function C_2 = C_2_func(obj,f,I)
			C_2 = int(f^2,I)^(1/2);
		end
		function C_p = C_p_func(obj,p,f,I)
			if nargin == 2
				f = obj.f;
				I = obj.I;
			elseif nargin ~= 4
				error('nevhodne mnozstvi vstupu')
			end
			
			C_p = int(abs(f)^p,I)^(1/p);
		end
	end
end