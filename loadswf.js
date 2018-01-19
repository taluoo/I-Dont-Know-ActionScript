function loadSWF(src, flashvars = '', id = 'swf') {
    let objTag = document.createElement('object');
    objTag.setAttribute('id', id);
    objTag.setAttribute('data', src);
    objTag.setAttribute('width', 500);
    objTag.setAttribute('height', 500);
    objTag.setAttribute('type', 'application/x-shockwave-flash');
    objTag.setAttribute('allowscriptaccess', 'always');

    let paramTag = document.createElement('param');
    paramTag.setAttribute('name', 'flashvars');
    paramTag.setAttribute('value', flashvars);

    objTag.appendChild(paramTag);
    document.body.appendChild(objTag);
}