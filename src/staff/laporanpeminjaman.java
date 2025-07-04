/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package staff;
import java.sql.*;
import javax.swing.JOptionPane;
import javax.swing.table.DefaultTableModel;
import java.awt.event.KeyEvent;
import Koneksi.koneksi;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.view.JasperViewer;
import java.util.HashMap;
/**
 *
 * @author hp
 */

public class laporanpeminjaman extends javax.swing.JFrame {
private Connection conn = new koneksi().connect();
    private DefaultTableModel tabmode;
    public String idpinjam,idstaff,idmbr, kdbk, jdlbk,jdcpinjam,jdckembali,cbkategori;
     
    /**
     * Creates new form laporanpeminjaman
     */
    public laporanpeminjaman() {
        initComponents();
        kosong();
        aktif();
        datatable();
    }
    
    protected void aktif(){
        txtcarilappinjam.requestFocus();
    }

     protected void kosong(){
        txtcarilappinjam.setText("");
    }
     
      public void cetak() {
      try{
           String path="./src/laporan/lappeminjaman.jasper";
           HashMap parameter = new HashMap();
           JasperPrint print = JasperFillManager.fillReport(path,parameter,conn);
           JasperViewer.viewReport(print,false);
       }catch(Exception ex){
           JOptionPane.showMessageDialog(rootPane,"Dokumen Tidak Ada"+ex);
       }
}
      protected void datatable(){
      Object[] Baris = {"ID Peminjaman", "ID Staff", "ID Member", "Kode Buku", "Judul Buku", "Kategori", "Tanggal Pinjam", "Tanggal Kembali"};
    tabmode = new DefaultTableModel(null, Baris);
    String cariitem = txtcarilappinjam.getText();

    try {
        String sql = "SELECT * FROM peminjaman WHERE id_peminjaman LIKE '%" + cariitem + "%' OR id_member LIKE '%" + cariitem + "%' ORDER BY id_peminjaman";
        Statement stat = conn.createStatement();
        ResultSet hasil = stat.executeQuery(sql);
        while (hasil.next()) {
            tabmode.addRow(new Object[]{
                hasil.getString("id_peminjaman"),
                hasil.getString("id_staff"),
                hasil.getString("id_member"),
                hasil.getString("kode_buku"),
                hasil.getString("judul_buku"),
                hasil.getString("kategori"),
                hasil.getString("tanggal_pinjam"),
                hasil.getString("tanggal_kembali")
            });
        }
        tbllappinjam.setModel(tabmode);
    } catch (Exception e) {
        JOptionPane.showMessageDialog(null, "Data gagal dipanggil: " + e);
    }
     }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel3 = new javax.swing.JPanel();
        jLabel6 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jScrollPane1 = new javax.swing.JScrollPane();
        tbllappinjam = new javax.swing.JTable();
        txtcarilappinjam = new javax.swing.JTextField();
        bcari = new javax.swing.JButton();
        jLabel9 = new javax.swing.JLabel();
        bcetak = new javax.swing.JButton();
        bkembali = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jPanel3.setBackground(new java.awt.Color(51, 204, 255));
        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(javax.swing.BorderFactory.createEtchedBorder(new java.awt.Color(0, 0, 0), null)));

        jLabel6.setFont(new java.awt.Font("Serif", 1, 36)); // NOI18N
        jLabel6.setForeground(new java.awt.Color(0, 0, 0));
        jLabel6.setText("LAPORAN PEMINJAMAN BUKU");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addGap(260, 260, 260)
                .addComponent(jLabel6)
                .addGap(260, 260, 260))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel3Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel6)
                .addGap(33, 33, 33))
        );

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder("Data Buku"));

        tbllappinjam.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tbllappinjam.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tbllappinjamMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(tbllappinjam);

        txtcarilappinjam.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                txtcarilappinjamKeyPressed(evt);
            }
        });

        bcari.setBackground(new java.awt.Color(51, 102, 255));
        bcari.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        bcari.setForeground(new java.awt.Color(0, 0, 0));
        bcari.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/researc.png"))); // NOI18N
        bcari.setText("CARI");
        bcari.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bcariActionPerformed(evt);
            }
        });

        jLabel9.setFont(new java.awt.Font("Verdana", 0, 12)); // NOI18N
        jLabel9.setText("Kata Kunci :");

        bcetak.setBackground(new java.awt.Color(0, 204, 153));
        bcetak.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        bcetak.setForeground(new java.awt.Color(0, 0, 0));
        bcetak.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/printer.png"))); // NOI18N
        bcetak.setText("PRINT");
        bcetak.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bcetakActionPerformed(evt);
            }
        });

        bkembali.setBackground(new java.awt.Color(255, 153, 51));
        bkembali.setFont(new java.awt.Font("Dialog", 1, 11)); // NOI18N
        bkembali.setForeground(new java.awt.Color(0, 0, 0));
        bkembali.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/arrow.png"))); // NOI18N
        bkembali.setText("BACK");
        bkembali.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bkembaliActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 1029, Short.MAX_VALUE)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel9)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtcarilappinjam, javax.swing.GroupLayout.PREFERRED_SIZE, 168, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(bcari)
                        .addGap(0, 0, Short.MAX_VALUE))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(bkembali)
                        .addGap(33, 33, 33)
                        .addComponent(bcetak)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel9)
                            .addComponent(txtcarilappinjam, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(bcari))
                        .addGap(19, 19, 19)
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 171, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(68, 68, 68))
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, jPanel1Layout.createSequentialGroup()
                        .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(bkembali)
                            .addComponent(bcetak))
                        .addContainerGap())))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 14, Short.MAX_VALUE)
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void tbllappinjamMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tbllappinjamMouseClicked
       int bar = tbllappinjam.getSelectedRow();
    String pinjam = tabmode.getValueAt(bar, 0).toString();
    String staff = tabmode.getValueAt(bar, 1).toString();
    String member = tabmode.getValueAt(bar, 2).toString();
    String kode = tabmode.getValueAt(bar, 3).toString();
    String judul = tabmode.getValueAt(bar, 4).toString();
    String tglpinjam = tabmode.getValueAt(bar, 5).toString();
    String tglkembali = tabmode.getValueAt(bar, 6).toString();
    String kategori = tabmode.getValueAt(bar,7).toString();

    // Simpan ke variabel global
    this.idpinjam = pinjam;
    this.idstaff= staff;
    this.idmbr= member;
    this.kdbk = kode;
    this.jdlbk = judul;
    this.cbkategori = kategori;    
    this.jdcpinjam = tglpinjam;
    this.jdckembali = tglkembali;
    }//GEN-LAST:event_tbllappinjamMouseClicked

    private void txtcarilappinjamKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtcarilappinjamKeyPressed
        if(evt.getKeyCode()==KeyEvent.VK_ENTER){
            datatable();
        }
    }//GEN-LAST:event_txtcarilappinjamKeyPressed

    private void bcariActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bcariActionPerformed
        datatable();
    }//GEN-LAST:event_bcariActionPerformed

    private void bcetakActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bcetakActionPerformed
        cetak();
    }//GEN-LAST:event_bcetakActionPerformed

    private void bkembaliActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bkembaliActionPerformed
        new sirkulasi().setVisible(true);
        this.dispose();
    }//GEN-LAST:event_bkembaliActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(laporanpeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(laporanpeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(laporanpeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(laporanpeminjaman.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new laporanpeminjaman().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bcari;
    private javax.swing.JButton bcetak;
    private javax.swing.JButton bkembali;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable tbllappinjam;
    private javax.swing.JTextField txtcarilappinjam;
    // End of variables declaration//GEN-END:variables
}
