function dblLinear(n) {
    var u = [];
  
    for (var i = 0; i <= n, i++) {
        u = insertValue(u, 2 * i + 1);
        u = insertValue(u, 3 * i + 1);
    }
  
    return u[n];
}

function insertValue(u, n) {
    for (var i = 0; i < u.length; i++) {
        if (u[i] > n) {
            u.splice(i, 0, n);
        }
    }
  
    return u;
}