/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastro;

import java.util.ArrayList;
import java.util.Set;

/**
 *
 * @author marcos
 */
public class BD {
    private static ArrayList<Clientes> cliente;
    public static ArrayList<Clientes> getClientes() {
        if(cliente==null){
            cliente = new ArrayList<>();
            Clientes c1 = new Clientes();
            c1.setNome("Fulano da Silva");
            c1.setRg("557865672");
            c1.setEmail("fulano@gmail.com");
            c1.setTelefone("1334739998");
            c1.setEndereco("Rua dos Fulanos 459 Praia Grande");
            cliente.add(c1);
            
            
        }
        return cliente;
    }
           
    
}
