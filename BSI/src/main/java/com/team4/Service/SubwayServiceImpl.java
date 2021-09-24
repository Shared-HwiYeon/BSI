package com.team4.Service;

import java.io.FileReader;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import com.team4.dao.SubwayDao;
import com.team4.mapper.SubwayMapper;
import com.team4.vo.CustomerVO;
import com.team4.vo.SubwayVO;
import com.opencsv.CSVReader;

import lombok.Setter;

public class SubwayServiceImpl implements SubwayService{
	
	@Setter
	private SubwayDao subwaydao;
	
	@Setter
	private SubwayMapper subwayMapper;

	@Override
	public void initData(String csvPath) {
		
		List<SubwayVO> list = readbsiFromCsv(csvPath);
		
		//subwaydao.dropSubwayTable();
		
		//subwaydao.createSubwayTable();
		
		//subwaydao.deleteSubwayData();

		 subwaydao.insertSubway(list); //데이터 삽입이에요	
	}

	public List<SubwayVO> readbsiFromCsv(String csvPath) { //이게 데이터 읽어오는 부분이에요	
		FileReader fr = null;
		CSVReader csvr = null;
		ArrayList<SubwayVO> result = new ArrayList<>();
		try {
			fr = new FileReader(csvPath);
			csvr = new CSVReader(fr);
			
			csvr.readNext(); // skip header row
			
			while(true) {
				String[] row = csvr.readNext();
				if(row==null) {
					break;
				}
				SubwayVO subway = new SubwayVO(String.valueOf(row[2]),
												Integer.parseInt(row[0]),
												Integer.parseInt(row[1]));
				if(!result.contains(subway)) {//중복제거
					result.add(subway);
				}
			}
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			try { csvr.close(); } catch (Exception ex) {}
			try { fr.close(); } catch (Exception ex) {}
		}
		//System.out.println(result);
		return result;
	}

//	@Override  //나중에 MemberServicImpl로 이동 
//	public List<MemberVO> findAll() {
//		
//		List<MemberVO> members = subwayMapper.selectAll();
//		
//		return null;
//	} 


}

