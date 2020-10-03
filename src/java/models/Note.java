/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.io.*;

/**
 *
 * @author 829942
 */
public class Note {
    private String strTitle;
    private String strContent;
    
    public Note() {
        

    }
    
    public void ReadFile(String path)throws FileNotFoundException, IOException{
        try ( // to read files
                BufferedReader br = new BufferedReader(new FileReader(new File(path)))) {
            this.strTitle = br.readLine();
            this.strContent = br.readLine();
            br.close();
        }
    }
    
    public void WriteFile(String path,String title,String content) throws IOException{
        try (PrintWriter pw = new PrintWriter(new BufferedWriter(new FileWriter(path, false)))) {
            pw.write(title);
            pw.write("\n");
            pw.write(content);
            pw.close();
        }
    }
    
    public String getTitle(){
        return this.strTitle;
    }
    
//    public void setTitle(String strTitle){
//        this.strTitle = strTitle;
//    }
    
    public String getContent(){
        return this.strContent;
    }
}
