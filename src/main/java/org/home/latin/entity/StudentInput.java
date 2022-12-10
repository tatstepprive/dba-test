package org.home.latin.entity;


import javax.persistence.*;

@Entity
@Table(name="student_input")
public class StudentInput {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="id")
    private int id;

    @Column(name="first_column_lat")
    private String firstColumnLat;

    @Column(name="second_column_lat")
    private String secondColumnLat;

    @Column(name="gender")
    private String gender;

    public StudentInput(){

    }

    @Column(name="correct_resp_code")
    private String correctRespCode;

    public StudentInput(Word word){
         this.setFirstColumnLat(word.getFirstColumnLat());
         this.setSecondColumnLat(word.getSecondColumnLat());
         this.setGender(word.getGender());
         this.setCorrectRespCode(word.getCorrectRespCode());
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }


    public String getFirstColumnLat() {
        return firstColumnLat;
    }

    public void setFirstColumnLat(String firstColumnLat) {
        this.firstColumnLat = firstColumnLat;
    }

    public String getSecondColumnLat() {
        return secondColumnLat;
    }

    public void setSecondColumnLat(String secondColumnLat) {
        this.secondColumnLat = secondColumnLat;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getCorrectRespCode() {
        return correctRespCode;
    }

    public void setCorrectRespCode(String correctRespCode) {
        this.correctRespCode = correctRespCode;
    }

    public String getAllLat(){
        return "(".concat(getFirstColumnLat()).concat(") (").concat(getSecondColumnLat()).concat(") (").concat(getGender()).concat(") (").concat(getCorrectRespCode()).concat(") ");
    }

    @Override
    public String toString() {
        return "StudentInput{" +
                "id=" + id +
                ", firstColumnLat='" + firstColumnLat + '\'' +
                ", secondColumnLat='" + secondColumnLat + '\'' +
                ", gender='" + gender + '\'' +
                ", correctRespCode='" + correctRespCode + '\'' +
                '}';
    }
}
