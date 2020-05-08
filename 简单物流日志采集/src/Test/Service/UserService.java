package Test.Service;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import Test.Entity.User;

public class UserService {
	/**
	 *  MD5加密
	 * @param user
	 * @return Codede user
	 */
	public static User CodingUSer(User user) {
//		return new User(user.getAccountString(), CodePassword(user.getPasswordString()));
		user.setPasswordString(CodePassword(user.getPasswordString()));
		return user;
	}
	/**
	 * Encodes a string 2 MD5
	 * MD5加密
	 * @param str String to encode
	 * @return CodePassword
	 */
	private static String CodePassword(String str) {
		if (str == null || str.length() == 0) {
			throw new IllegalArgumentException("String to encript cannot be null or zero length");
		}
		StringBuffer hexString = new StringBuffer();
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			md.update(str.getBytes());
			byte[] hash = md.digest();
			for (int i = 0; i < hash.length; i++) {
				if ((0xff & hash[i]) < 0x10) {
					hexString.append("0" + Integer.toHexString((0xFF & hash[i])));
				} else {
					hexString.append(Integer.toHexString(0xFF & hash[i]));
				}
			}
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return hexString.toString();
	}
}
