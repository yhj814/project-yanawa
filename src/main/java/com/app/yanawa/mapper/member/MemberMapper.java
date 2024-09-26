package com.app.yanawa.mapper.member;

import com.app.yanawa.domain.member.MemberDTO;
import com.app.yanawa.domain.member.MemberVO;
import com.app.yanawa.domain.team.TeamDTO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.Optional;

@Mapper
public interface MemberMapper {
//    회원가입
    void insert(MemberVO memberVO);

//    이메일중복검사
    int countByEmail(String email);

//    닉네임중복검사
    int countByNickname(String nickname);

//    로그인
    Optional<MemberVO> selectByMemberEmailAndMemberPassword(@Param("memberEmail") String memberEmail, @Param("memberPassword") String memberPassword);

//    팀 생성 => 회원 이름, 이메일, 전화번호 조회
    public Optional<MemberDTO> selectMemberByMemberId(Long Id);
}
