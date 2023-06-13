import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import model.Board;
import model.BoardDTO;
import model.dao.BoardDao;
import model.dao.MatchingDAO;
import model.dao.ReservationDAO;
import model.service.MatchingManager;

public class jdbcTest {
private static BoardDao boardDao = new BoardDao();
private static MatchingDAO matchingDao = new MatchingDAO();
private static ReservationDAO reservationdao = new ReservationDAO();
	
	public static void main(String[] args) throws SQLException {
		System.out.println("CommentSessionRepositoryTest starts...");
		
		//findLocationMatchingList("구성역","수유역");
		
		//System.out.println("CommentSessionRepositoryTest ends...");
		MatchingManager manager = MatchingManager.getInstance();
		System.out.println(manager.findBasicBoardList("bin"));
		//selectBoardDetailsByBoardID(1);
		//System.out.println("test 1 :" + matchingDao.FindLocationMatching("수유역","구성역"));
		//System.out.println("test 2 :" + matchingDao.FindBasicMatching("bin"));
		//System.out.println("test2 :" + reservationdao.waitReservation(1));
		//reservationdaoSystem.out.println("test 3:" + reservationdao.confirmReservation(1));
		//reservationdao.create(11, 1);
//		findBoardByBoardId(1);
	}
}

	
//	public static void selectAll() throws SQLException {
//	
//		List<BoardDTO> list = boardDao.select(); // all - 제거해줌 오류나서
//		
//		System.out.println(list);
//	}
//	
//	public static void findBoardByBoardId(int id) {
//		BoardDTO bt = boardDao.findBoardByBoardId(id);
//		System.out.println(bt);
	
	
//	}
//	
	