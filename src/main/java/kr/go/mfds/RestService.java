package kr.go.mfds;

import kr.go.mfds.dto.SampleDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RestService {

    @Autowired
    RestDAO restDao;

    public Map<String, String> getTest1(String id, String pw){
        Map<String, String> res = new HashMap<>();
        res.put(id, pw);
        return res;
    }

    public List<String> getTest2(String id){
        List<String> lst = new ArrayList<String>();
        for(int i=0;i<5;i++) {
            lst.add(id+i);
        }
        return lst;
    }

    public List<SampleDTO> sampleList() throws Exception {
        return restDao.sampleList();
    }

    public SampleDTO getSample(String id) throws Exception {
        return restDao.getSample(id);
    }

    public void addSample(SampleDTO sample) throws Exception {
        restDao.addSample(sample);
    }
    public void updateSample(SampleDTO sample) throws Exception {
        restDao.updateSample(sample);
    }
    public void deleteSample(String id) throws Exception {
        restDao.deleteSample(id);
    }
}
