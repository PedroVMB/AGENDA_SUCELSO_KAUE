/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dados;

/**
 *
 * @author sasuk
 */
public class Armazena {
    private String dia_da_semana;
    private String horario;
    private String nome_do_professor;
    private String nome_da_disciplina;
    private String turno;
    private String periodo;

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public String getDia_da_semana() {
        return dia_da_semana;
    }

    public void setDia_da_semana(String dia_da_semana) {
        this.dia_da_semana = dia_da_semana;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public String getNome_do_professor() {
        return nome_do_professor;
    }

    public void setNome_do_professor(String nome_do_professor) {
        this.nome_do_professor = nome_do_professor;
    }

    public String getNome_da_disciplina() {
        return nome_da_disciplina;
    }

    public void setNome_da_disciplina(String nome_da_disciplina) {
        this.nome_da_disciplina = nome_da_disciplina;
    }

    public String getTurno() {
        return turno;
    }

    public void setTurno(String turno) {
        this.turno = turno;
    }
    
}
