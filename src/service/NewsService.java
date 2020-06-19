package service;

import DAL.SqlHelper;
import Entity.News;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsService {
        public void AddNews(){}
        public void DeleteNews(){}
        public void UpdateNews(){}

        public List<News> QueryNews() throws SQLException, SQLException {
            String sql = "SELECT * FROM NEWS";
            ResultSet rs;
            rs = SqlHelper.executeQuery(sql);
            List<News> lstNews = new ArrayList<News>();
            while (rs.next())
            {
                News news = new News();
                news.setId(rs.getInt("ID"));
                news.setTitle(rs.getString("Title"));
                news.setContent(rs.getString("Content"));
                news.setAuthor(rs.getString("Author"));
                news.setTime(rs.getDate("Time"));
                lstNews.add(news);
            }
            return lstNews;
        }

        public void GetNews(){}
}
