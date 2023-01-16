package kr.go.mfds;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class JDBCConnectTest {
	private static final Logger logger = LoggerFactory.getLogger(JDBCConnectTest.class);
	
	@Inject
	DataSource dataSource;
	
	@Test
	public void test1() throws Exception {
		Connection con = dataSource.getConnection();
		logger.info(con.toString());
		con.close();
	}
}