classdef dot_on_I
	properties
		u;
		v;
		I;
		uv_C_2;
		uv_C12;
	end
	methods
		function obj = dot_on_I(u,v,I)
			if nargin == 3
				obj.u = u;
				obj.v = v;
				obj.I = I;
				obj.uv_C_2 = obj.int_uv(u,v,I);
				obj.uv_C12 = obj.int_uv(u,v,I) + obj.int_diff_uv(u,v,I);
			end
		end

		function d = int_uv(obj,u,v,I)
			d = int(u*v,I);
		end
		function d = int_diff_uv(obj,u,v,I)
			d = int(diff(u)*diff(v),I);
		end
		function i = pwr_int_root_p(obj,p,f,I)
			if nargin == 2
				f = obj.f;
				I = obj.I;
			elseif nargin ~= 4
				error('nevhodne mnozstvi vstupu')
			end

			i = int(abs(f)^p,I)^(1/p);
		end
	end
end
