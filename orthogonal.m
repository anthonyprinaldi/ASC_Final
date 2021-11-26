function orthogonal = orthogonal(matrix)
    m = size(matrix);
    m = m(1);
    orthogonal = false;
    if round(transpose(matrix) * matrix, 3) == eye(m)
        orthogonal = true;
    end