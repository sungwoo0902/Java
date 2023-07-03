package sub3;

public class AddThread extends Add implements Runnable{

	private int start;
	private int end;
	
	public AddThread(int start, int end) {
		this.start = start;
		this.end = end;
	}
	
	private int num;
	
	@Override
	public void run() {
		
		for(int k=start; k<=end; k++) {
			this.num += num;
		}
		
	}
}
