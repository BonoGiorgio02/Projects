function [num_connected_components, eigenvectors, eigenvalues] = num_connect_comp(L,k)
%The number of connected components in the graph corresponds to the number of zero eigenvalues of LL.
%Number of connected components=Multiplicity of eigenvalue 0

n=20;

%we compute the n smallest eingenvalues of L

% CAMBIARE EIGS CON INV_POWER + DEFLATION
[eigenvectors, eigenvalues] = eigs(L,n, "smallestabs"); % Autovalori più piccoli
tol= 0.03*max(diag(eigenvalues));
% eigs returns a diagonal matrix of eigenvalues
num_connected_components = sum(abs(diag(eigenvalues)) < tol);
end
