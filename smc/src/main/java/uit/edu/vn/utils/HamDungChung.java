package uit.edu.vn.utils;

public final class HamDungChung {
	/**
	 * Kiem tra neu null hoac rong thi tra ve false
	 * @param string
	 * @return true khi chuoi khac rong
	 */
	public static boolean KiemTraString(String string) {
		if(string == "" || string == null) return false;
		return true;
	}
}
