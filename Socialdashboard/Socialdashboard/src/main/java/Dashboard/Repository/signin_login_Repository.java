package Dashboard.Repository;
import org.springframework.data.jpa.repository.JpaRepository;
import Dashboard.Entity.Signin_login;

public interface signin_login_Repository extends JpaRepository<Signin_login, Long> {
	
	public Signin_login findByEmail(String email);

}
