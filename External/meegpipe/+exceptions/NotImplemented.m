function obj = NotImplemented(msg)

if nargin < 1 || isempty(msg),
    msg = '??';
end

[st, i] = dbstack;

if numel(st) > i,
    st   = st(i+1);
    name = strrep(st.name, '.', ':');
else
    name = 'base';
end

obj = MException([name ':NotImplemented'], ...
    'Not implemented feature: %s', msg);

end
