import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Movie;
import model.dao.dbManager;
import org.junit.*;
import static org.junit.Assert.assertEquals;

/**
 *
 * @author jbrien
 */
public class testDBManager {
    
   private Statement st; 
   private dbManager manager;
    
   public testDBManager(Connection conn) throws SQLException {
        st = conn.createStatement();
    }
    
   @Test
    public void testAddMovie() throws SQLException{
        manager.addMovie("999", "Test", "Test", "Test", "Test", "Test", "Test");
        Movie m = (Movie) manager.findMovie("999");
        assertEquals("999",m.getID());
    }
    
   @Test
    public void testFindMovie() throws SQLException{
        ResultSet rs = manager.findMovie("Captain America: The First Avenger");
        assertEquals("Captain America: The First Avenger",rs.getString(6));
    }
    
    @Test
    public void testFindMovieID() throws SQLException{
        Movie m = (Movie) manager.findMovie("1");
        assertEquals("Captain America: The First Avenger",m.getID());
    }
    
    @Test
    public void testUpdateMovie() throws SQLException{
        manager.updateMovie("999", "Test1", "Test", "Test", "Test", "Test", "Test");
        Movie m = (Movie) manager.findMovie("999");
        assertEquals("Test1",m.getGenre());
    }
    
    @Test
    public void testDeleteMovie() throws SQLException{
        manager.deleteMovie("999");
        boolean noMovie = false;
        ResultSet rs = manager.findMovie("Test");
        if (rs.next() == false) noMovie = true;
        assertEquals(true,noMovie);
    }
}
