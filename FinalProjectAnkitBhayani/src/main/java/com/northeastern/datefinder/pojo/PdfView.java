package com.northeastern.datefinder.pojo;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.pdf.PdfWriter;

import java.awt.Color;
import com.lowagie.text.Chunk;
import com.lowagie.text.Font;
import com.lowagie.text.Paragraph;
import com.lowagie.text.Phrase;



public class PdfView extends AbstractPdfView{

	@Override
	protected void buildPdfDocument(Map<String, Object> model, Document document, PdfWriter writer,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
			     
	        Font font_helvetica_16_normal_blue = new Font(Font.HELVETICA, 16, Font.NORMAL, Color.BLUE); 
	        Font font_courier_16_italic_red = new Font(Font.COURIER, 16, Font.ITALIC, Color.RED);
	        Font font_times_16_bold_green = new Font(Font.TIMES_ROMAN, 18, Font.BOLD, Color.GREEN);
	        System.out.println("inside pdf class");
	       
	        User user = (User)model.get("userList");
	        
	        document.open();
	        
	        
	        document.addTitle(" "+user.getUserName()+" Profile");
	        Paragraph ph = new Paragraph("Name: ",font_helvetica_16_normal_blue);
	       	        
	        Paragraph personal = new Paragraph("Email ID: ",font_courier_16_italic_red);
	            personal.add(user.getEmail());
	            personal.add("\nLives in "+user.getCity());
	            personal.add("/"+user.getState());
	            personal.add("\n BirthDate: "+user.getDOBday()+"/"+user.getDOBmonth()+"/"+user.getDOByear()+"");
	        
	        ph.add(user.getUserName());
	        Paragraph edu = new Paragraph("Education",font_times_16_bold_green);
	        
	        /*for(Education e:user.getEducations()){
	            
	            edu.add(e.getCourseName());
	            edu.add(e.getUniversityName());
	            edu.add(String.valueOf(e.getGpa()));
	            edu.add(String.valueOf(e.getEndDate()));
	            
	        }
	        
	        Paragraph skillPh = new Paragraph("Skills",font_times_16_bold_green);
	        
	        for(Skill s:user.getSkills()){
	            
	            skillPh.add(s.getSkillName());
	            
	        }
	        
	        Paragraph exp = new Paragraph("Experience",font_times_16_bold_green);
	        
	            for(Experience ex:user.getExperiences()){
	            
	                exp.add(ex.getEmployerName());
	                exp.add(String.valueOf(ex.getStartDate()));
	                exp.add(String.valueOf(ex.getEndDate()));
	            
	        }*/
	        
	            
	            document.add(ph);
	            document.add(personal);
	            /*document.add(edu);
	            document.add(skillPh);
	            document.add(exp);
	            document.close();*/
	        
			/*Chunk c1 = new Chunk("Chunk 1", font_courier_16_italic_red);
			Chunk c2 = new Chunk("Chunk 2", font_courier_16_italic_red);
			
			Phrase phr1 = new Phrase("Phrase 1", font_helvetica_16_normal_blue);
			Phrase phr2 = new Phrase("Phrase 2", font_helvetica_16_normal_blue);
			
			Paragraph prg1 = new Paragraph("Paragraph 1", font_times_16_bold_green);
			Paragraph prg2 = new Paragraph("Paragraph 2", font_times_16_bold_green);
			
			document.add(c1);
			document.add(c2);
			
			document.add(phr1);
			document.add(phr2);
			
			document.add(prg1);
			document.add(prg2);
			document.close();*/
			System.out.println("After creating PDF...");
	        
	    }
		
		
		
	

}
