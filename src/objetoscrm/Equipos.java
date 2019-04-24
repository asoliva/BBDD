package objetoscrm;

public class Equipos {

	private String nombre;
	private int idEquipo;
	private String direccion;

	public Equipos(int idEquipo, String nombre, String direccion) {
		super();
		this.idEquipo = idEquipo;
		this.nombre = nombre;
		this.direccion = direccion;
	}

	public Equipos(String ide, String nmb, String dir) {
		super();
		int idtnum=0;
		try {
			idtnum=Integer.parseInt(ide);
		} catch (Exception e) { idtnum=-1; }
		this.idEquipo = idtnum;
		this.nombre = nmb;
		this.direccion = dir;
	}

	public int getidEquipo() {
		return idEquipo;
	}

	public void setIdEquipo(int idEquipo) {
		this.idEquipo = idEquipo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
}


