package Test.Entity;

public class Matched {
	private final static int MATHED_INIT = -1;
	public final static int MATHED_LOGS = 0;
	public final static int MATHED_TRANS = 1;
	private int MATHED_TYPE = MATHED_INIT;
	public int getMATHED_TYPE() {
		return MATHED_TYPE;
	}
	public void setMATHED_TYPE(int mATHED_TYPE) {
		MATHED_TYPE = mATHED_TYPE;
	}
	
}
