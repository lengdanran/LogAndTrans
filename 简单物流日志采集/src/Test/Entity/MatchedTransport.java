package Test.Entity;

import java.io.Serializable;


public class MatchedTransport extends Matched implements Serializable {
	private static final long serialVersionUID = 6669478548224518776L;
	private Transport send;
	private Transport trans;
	private Transport receive;
	
	
	public Transport getSend() {
		return send;
	}

	public void setSend(Transport send) {
		this.send = send;
	}

	public Transport getTrans() {
		return trans;
	}

	public void setTrans(Transport trans) {
		this.trans = trans;
	}

	public Transport getReceive() {
		return receive;
	}

	public void setReceive(Transport receive) {
		this.receive = receive;
	}

	public MatchedTransport() {

	}

	public MatchedTransport(Transport send, Transport trans, Transport receive) {
		this.setMATHED_TYPE(Matched.MATHED_TRANS);
		if (send.getTransportType() != Transport.SENDDING) {
			throw new RuntimeException("不是发货记录!");
		}
		if (trans.getTransportType() != Transport.TRANSPORTING) {
			throw new RuntimeException("不是送货记录!");
		}
		if (receive.getTransportType() != Transport.RECIEVED) {
			throw new RuntimeException("不是签收记录!");
		}
		this.send = send;
		this.trans = trans;
		this.receive = receive;
	}

	public String toString() {
		// TODO Auto-generated method stub
		return send.toString() + "|" + trans.toString() + "|" + receive.toString();
	}
}
