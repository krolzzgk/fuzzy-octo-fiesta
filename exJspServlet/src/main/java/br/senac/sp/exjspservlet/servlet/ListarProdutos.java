/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.senac.sp.exjspservlet.servlet;

import br.senac.sp.exjspservlet.model.Produto;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Karol
 */
@WebServlet(name = "ListarProdutos", urlPatterns = {"/index.html","/lista-produtos"})
public class ListarProdutos extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Produto p1 = new Produto(1, "Produto 1", "elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue", 29.90);
        Produto p2 = new Produto(2, "Produto 2", "sed libero enim sed faucibus turpis in eu mi bibendum", 69.90);
        Produto p3 = new Produto(3, "Produto 3", "venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non", 32.90);
        Produto p4 = new Produto(4, "Produto 4", "sit amet nisl suscipit adipiscing bibendum est ultricies integer quis", 289.90);
        Produto p5 = new Produto(5, "Produto 5", "laoreet sit amet cursus sit amet dictum sit amet justo", 15.90);
        Produto p6 = new Produto(6, "Produto 6", "vel facilisis volutpat est velit egestas dui id ornare arcu", 99.90);

        ArrayList<Produto> produtos = new ArrayList<>();

        produtos.add(p1);
        produtos.add(p2);
        produtos.add(p3);
        produtos.add(p4);
        produtos.add(p5);
        produtos.add(p6);

        request.setAttribute("listaProdutos", produtos);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/produto/listagem.jsp");

        dispatcher.forward(request, response);
    }

}
