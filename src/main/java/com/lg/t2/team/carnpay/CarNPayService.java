package com.lg.t2.team.carnpay;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lg.t2.team.member.TeamMemberDTO;

@Service
public class CarNPayService {
	
	@Autowired
	private CarNPayDAO carNPayDAO;
	//조회//삽입//삭제
	public List<TeamCareerDTO> getCarList(TeamMemberDTO teamMemberDTO)throws Exception {
		return carNPayDAO.getCarList(teamMemberDTO);
	}
	
	public int addCareer(TeamCareerDTO teamCareerDTO) throws Exception {
		return carNPayDAO.addCareer(teamCareerDTO);
	}
	public int deleteCareer(TeamCareerDTO teamCareerDTO) throws Exception {
		return carNPayDAO.deleteCareer(teamCareerDTO);
	}
	
	//조회//삽입//삭제
	public List<PlayerPayDTO> getPayList(TeamMemberDTO teamMemberDTO)throws Exception {
		return carNPayDAO.getPayList(teamMemberDTO);
	}
	public int addPay(PlayerPayDTO playerPayDTO) throws Exception {
		return carNPayDAO.addPay(playerPayDTO);
	}
	public int deletePay(PlayerPayDTO playerPayDTO) throws Exception {
		return carNPayDAO.deletePay(playerPayDTO);
	}
}
