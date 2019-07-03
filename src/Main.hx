package;
import a.A;
import b.B;
import c.C;


/**
 * ...
 * @author Dmitry Kuzovatkin
 */
class Main 
{
	
	static function main() 
	{
		trace('Main');
		new Main();
	}
	
	public function new() {	
		Bundle.loadLib('acontext', ['a']).then(function(_) {
			trace("A Loaded");
			//new a.A({bla: "asd"});
		});
		Bundle.loadLib('bcontext', ['b']).then(function(_) {
			trace("B Loaded");
			//new b.B({bla: "asd"});
		});
		Bundle.loadLib('ccontext', ['c']).then(function(_) {
			trace("C Loaded");
			//new c.C({bla: "asd"});
		});
	}
}