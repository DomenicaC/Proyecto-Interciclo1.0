/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ec.edu.ups.controlador;

import ec.edu.ups.persona.Persona;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.Set;

/**
 *
 * @author erics
 */
public class ControladorPersona {
    private BaseDeDatos MiBaseDatos;

    public ControladorPersona(String url ,String user, String password) {
        MiBaseDatos = new BaseDeDatos(url,user,password);
    }

    public void create(Persona persona) {
        String sql = "INSERT INTO \"PERSONA\" VALUES('" + persona.getCedula() + "',"
                + "'" + persona.getNombre() + "',"
                + "'"+ persona.getApellido() + "',"
                +persona.getEdad() + ",'"               
                + persona.getDireccion() + "');";
        System.out.println(sql);
        MiBaseDatos.conectar();
        try {
            Statement sta = MiBaseDatos.getConexionBD().createStatement();
            sta.execute(sql);
            MiBaseDatos.desconectar();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    public Persona BuscaarPersona(String cedula)  {
        Persona per = new Persona();
        try {

            String sql = "SELECT * FROM \"PERSONA\"WHERE\"PER_CEDULA\"='" + cedula + "';";
            System.out.println("Base " + sql);

            MiBaseDatos.conectar();
            Statement sta = MiBaseDatos.getConexionBD().createStatement();
            ResultSet res = sta.executeQuery(sql);

            while (res.next()) {

                per.setCedula(cedula);
                per.setNombre(res.getString("PER_NOMBRE"));
                per.setApellido(res.getString("PER_APELLIDO"));
                per.setEdad(res.getInt("PER_EDAD"));
                per.setDireccion(res.getString("PER_DIRECCION"));
            }
            res.close();
            sta.close();
            MiBaseDatos.desconectar();

        } catch (SQLException error) {

            error.printStackTrace();

        }
        return per;
    }

    public void modificar(Persona p) throws SQLException {
        String sql = "UPDATE\"PERSONA\" SET \"PER_NOMBRE\" = '" 
                + p.getNombre() + "',\"PER_APELLIDO\" = '" 
                + p.getApellido() + "',\"PER_EDAD\" = " 
                + p.getEdad() + ",\"PER_DIRECCION\" = '" 
                + p.getDireccion() +"' WHERE \"PER_CEDULA\" = '" + p.getCedula()+ "';";
        
        System.out.println(sql);
        MiBaseDatos.conectar();
        try {
            Statement sta = MiBaseDatos.getConexionBD().createStatement();
            sta.execute(sql);
            MiBaseDatos.desconectar();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }
    public void deletePer(String cedula) {
        String sql = "DELETE FROM \"PERSONA\"WHERE \"PER_CEDULA\" = '" + cedula + "';";
        System.out.println("Base eliminada " + sql);

        MiBaseDatos.conectar();
        try {

            Statement sta = MiBaseDatos.getConexionBD().createStatement();
            sta.execute(sql);
            MiBaseDatos.desconectar();

        } catch (SQLException error) {

            error.printStackTrace();

        }

    } 
    public Set Listar() {

        Set<Persona> lista = new HashSet<>();
        try {
            String sql = "SELECT * FROM \"PERSONA\";";
            System.out.println(sql);

            MiBaseDatos.conectar();
            Statement sta = MiBaseDatos.getConexionBD().createStatement();
            ResultSet rs = sta.executeQuery(sql);
            while (rs.next()) {
                Persona p = new Persona();
                p.setCedula(rs.getString("PER_CEDULA"));
                p.setApellido(rs.getString("PER_APELLIDO"));
                p.setNombre(rs.getString("PER_NOMBRE"));
                p.setEdad(rs.getInt("PER_EDAD"));
                p.setDireccion(rs.getString("PER_DIRECCION"));
                
                lista.add(p);
            }

            MiBaseDatos.desconectar();

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return lista;
    }
}
