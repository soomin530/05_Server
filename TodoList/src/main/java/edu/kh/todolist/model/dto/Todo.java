package edu.kh.todolist.model.dto;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data // Getter + Setter + toString 제공
@NoArgsConstructor
@AllArgsConstructor
public class Todo implements Serializable{
							// ㄴ 직렬화
	private String title; // 제목
	private String detail; // 상세 내용
	// + 완료여부
	// + 등록 날짜 

}
