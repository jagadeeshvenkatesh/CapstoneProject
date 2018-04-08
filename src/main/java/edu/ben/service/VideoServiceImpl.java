package edu.ben.service;

import edu.ben.dao.EventsDAO;
import edu.ben.dao.VideoDAO;
import edu.ben.model.Video;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class VideoServiceImpl implements VideoService{
    VideoDAO videoDAO;

    @Autowired
    public void setVideoDAO(VideoDAO videoDAO) {
        this.videoDAO = videoDAO;
}

    @Override
    public List<Video> getAllVideos() {
        return videoDAO.getAllVideos();
    }

    @Override
    public void deleteVideo(int id) {
        videoDAO.deleteVideo(id);
    }

    @Override
    public void saveOrUpdate(Video video) {
        videoDAO.saveOrUpdate(video);
    }

    @Override
    public void create(Video video) {
        videoDAO.create(video);
    }

    @Override
    public Video getNewestVideo() {
        return videoDAO.getNewestVideo();
    }
}
