import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.util.List;

public class StrukPDF {

    public void createTransactionPDF(String noTransaksi, String tanggal, String idCustomer, String namaCustomer, String total, List<Object[]> items) {
        String dest = "C:/Download/Transaction_" + noTransaksi + ".pdf";

        try {
            Document document = new Document();
            PdfWriter.getInstance(document, new FileOutputStream(dest));
            document.open();

            // Add transaction details
            document.add(new Paragraph("Transaction No: " + noTransaksi));
            document.add(new Paragraph("Date: " + tanggal));
            document.add(new Paragraph("Customer ID: " + idCustomer));
            document.add(new Paragraph("Customer Name: " + namaCustomer));
            document.add(new Paragraph("Total: " + total));
            document.add(new Paragraph(" "));

            // Add table for items
            PdfPTable table = new PdfPTable(new float[] {1, 1, 1, 1, 1, 1});
            table.setWidthPercentage(100);

            // Table headers
            table.addCell(new PdfPCell(new Paragraph("No Faktur")));
            table.addCell(new PdfPCell(new Paragraph("ID Barang")));
            table.addCell(new PdfPCell(new Paragraph("Nama Barang")));
            table.addCell(new PdfPCell(new Paragraph("Jumlah")));
            table.addCell(new PdfPCell(new Paragraph("Harga")));
            table.addCell(new PdfPCell(new Paragraph("Total")));

            // Add items to table
            for (Object[] item : items) {
                table.addCell(new PdfPCell(new Paragraph(item[0].toString())));
                table.addCell(new PdfPCell(new Paragraph(item[1].toString())));
                table.addCell(new PdfPCell(new Paragraph(item[2].toString())));
                table.addCell(new PdfPCell(new Paragraph(item[3].toString())));
                table.addCell(new PdfPCell(new Paragraph(item[4].toString())));
                table.addCell(new PdfPCell(new Paragraph(item[5].toString())));
            }

            document.add(table);
            document.close();
            
            System.out.println("PDF created: " + dest);
        } catch (FileNotFoundException | DocumentException e) {
            e.printStackTrace();
        }
    }
}
