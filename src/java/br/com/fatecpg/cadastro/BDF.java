/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.cadastro;

import java.util.ArrayList;

/**
 *
 * @author marcos
 */
public class BDF {
    private static ArrayList<Fornecedores> fornecedor;
    public static ArrayList<Fornecedores> getFornecedores() {
        if(fornecedor==null){
            fornecedor = new ArrayList<>();
            Fornecedores c1 = new Fornecedores();
            c1.setNome("Ciclano de SOUZA");
            c1.setCnpj("213144234");
            c1.setRazaosocial("Ciclano Comércio de Peças");
            c1.setEmail("ciclano@hotmail.com");
            c1.setTelefone("1334890078");
            c1.setEndereco("Travessa Jacinto Rego Pinto 69");
            fornecedor.add(c1);
            
            
        }
        return fornecedor;
    }
           
    
}
