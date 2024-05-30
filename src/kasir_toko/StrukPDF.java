/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package kasir_toko;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPCellEvent;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

public class StrukPDF {

    public void createTransactionPDF(String noTransaksi, String tanggal, String idCustomer, String namaCustomer, String total, String pembayaran, String kembalian, List<Object[]> items) {
        String dest = "C:/Users/ACER/Downloads/Transaction_" + noTransaksi + ".pdf";

        try {
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(dest));
            document.open();

            // Menambahkan detail transaksi
            Font titleFont = new Font(Font.FontFamily.TIMES_ROMAN, 20, Font.BOLD, new BaseColor(18, 64, 118));
            Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 14, Font.BOLD);
            Font regularFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.NORMAL);

            Paragraph title = new Paragraph("------- Ilkomp Maket -------", titleFont);
            title.setAlignment(Element.ALIGN_CENTER);
            document.add(title);

            document.add(new Paragraph(" ", regularFont));

            Paragraph tanggalPara = new Paragraph("Tanggal          : " + tanggal, boldFont);
            tanggalPara.setAlignment(Element.ALIGN_RIGHT);
            document.add(tanggalPara);

            Paragraph noTransPara = new Paragraph("No Transaksi     : " + noTransaksi, boldFont);
            noTransPara.setAlignment(Element.ALIGN_LEFT);
            document.add(noTransPara);

            Paragraph namaCustPara = new Paragraph("Nama Customer   : " + namaCustomer, boldFont);
            namaCustPara.setAlignment(Element.ALIGN_LEFT);
            document.add(namaCustPara);

            Paragraph idCustPara = new Paragraph("ID Customer       : " + idCustomer, boldFont);
            idCustPara.setAlignment(Element.ALIGN_LEFT);
            document.add(idCustPara);

            document.add(new Paragraph(" ", regularFont));

            // Tabel untuk item
            PdfPTable table = new PdfPTable(new float[]{1, 1, 1, 1, 1, 1});
            table.setWidthPercentage(100);

            // Header tabel
            BaseColor borderColor = new BaseColor(127, 159, 128);
            float borderWidth = 0.5f;

            PdfPCell cell;

            String[] headers = {"No Faktur", "ID Barang", "Nama Barang", "Jumlah", "Harga", "Total"};
            for (String header : headers) {
                cell = new PdfPCell(new Paragraph(header, boldFont));
                cell.setBorderColor(borderColor);
                cell.setBorderWidth(borderWidth);
                cell.setBorderWidthBottom(borderWidth);
                cell.setBorderWidthLeft(borderWidth);
                cell.setBorderWidthRight(borderWidth);
                cell.setBorderWidthTop(borderWidth);
                cell.setBorder(PdfPCell.BOX);
                cell.setCellEvent(new DottedCell()); // Set dotted border
                table.addCell(cell);
            }

            // Tiap item dalam tabel
            for (Object[] item : items) {
                for (Object obj : item) {
                    cell = new PdfPCell(new Paragraph(obj.toString(), regularFont));
                    cell.setBorderColor(borderColor);
                    cell.setBorderWidth(borderWidth);
                    cell.setBorderWidthBottom(borderWidth);
                    cell.setBorderWidthLeft(borderWidth);
                    cell.setBorderWidthRight(borderWidth);
                    cell.setBorderWidthTop(borderWidth);
                    cell.setBorder(PdfPCell.BOX);
                    cell.setCellEvent(new DottedCell()); // Set dotted border
                    table.addCell(cell);
                }
            }

            document.add(table);
            
            document.add(new Paragraph(" ", regularFont));

            
            Paragraph totalPara = new Paragraph("Total Belanjaan        : " + total, boldFont);
            totalPara.setAlignment(Element.ALIGN_RIGHT);
            document.add(totalPara);

            Paragraph pembayaranPara = new Paragraph("Pembayaran        : " + pembayaran, boldFont);
            pembayaranPara.setAlignment(Element.ALIGN_RIGHT);
            document.add(pembayaranPara);

            Paragraph kembalianPara = new Paragraph("Kembalian          : " + kembalian, boldFont);
            kembalianPara.setAlignment(Element.ALIGN_RIGHT);
            document.add(kembalianPara);

            document.add(new Paragraph(" ", regularFont));

            
            Paragraph thankYouPara = new Paragraph("Terima kasih telah berbelanja", boldFont);
            thankYouPara.setAlignment(Element.ALIGN_CENTER);
            document.add(thankYouPara);
            
            
            document.close();
            
            System.out.println("PDF created: " + dest);
        } catch (FileNotFoundException | DocumentException e) {
            e.printStackTrace();
        }
        
    }
    
    static class DottedCell implements PdfPCellEvent {
            public void cellLayout(PdfPCell cell, com.itextpdf.text.Rectangle rect, PdfContentByte[] canvases) {
                PdfContentByte canvas = canvases[PdfPTable.LINECANVAS];
                canvas.setLineDash(3f, 3f);
                canvas.rectangle(rect.getLeft(), rect.getBottom(), rect.getWidth(), rect.getHeight());
                canvas.stroke();
        }
    }
}

