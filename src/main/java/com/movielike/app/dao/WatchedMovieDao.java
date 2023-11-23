package com.movielike.app.dao;

import com.movielike.app.domain.WatchedMovieDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class WatchedMovieDao {
    @Autowired
    SqlSession session;

    String namespace="com.movielike.app.dao.watchedMapper.";

    public List<WatchedMovieDto> WatchedMovie(WatchedMovieDto watchedMovieDto) {
        return session.selectList(namespace + "selectWatchedMovie", watchedMovieDto);
    }
}
