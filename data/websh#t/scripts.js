async function init(a, b)
{
	let imports = {};
	let memory = null;
	let exports = null;

	let request = await fetch( 'binary.wasm' );
	let binary = await request.arrayBuffer();

	imports['memory'] = new WebAssembly['Memory']( {'initial':32} );
	memory = new Uint8Array( imports['memory']['buffer'] );
	let program = await WebAssembly['instantiate']( binary, { "env":imports } );

	let instance = program['instance'];
	exports = instance['exports'];
	result = exports.add(a, b);
	text = document.createTextNode(result);
	document.body.appendChild(text);
}

