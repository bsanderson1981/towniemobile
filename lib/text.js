var t_str;
	switch( _catname )
	{
		case 'BAGELS':
			var ec = cnt % 13;
			var bd = Math.floor( cnt / 13 );
			if (bd == 0 )
				t_str = ' Each: '+cnt;
			else
				t_str = ' B-Doz:<B>'+bd + '</b>  Each:<B>' + ec + '</b>  Total:<B>'+cnt + '</b>';
			
		break;
		default:
			t_str = 'Total => <B>'+cnt + '</b>';
		break;
	}
	$('#t-'+_catname).html(t_str);
	