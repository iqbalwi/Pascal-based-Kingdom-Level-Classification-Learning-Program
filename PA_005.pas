program Pembelajaran_Klasifikasi_Makhluk_Hidup_Tingkat_Kingdom;
uses crt;

type
    ciri = record
        Sel         : string;
        Membran     : string;
        kembangbiak : string;
        makanan     : string;
        end;

var i, n, a : byte;
    b : array [1..20] of ^ciri;
    c, monera, protista, fungi, plantae, animalia : string;
    
    procedure pembatas;
        begin
            writeln;
            writeln('--------------------');
            writeln;
        end;
    procedure pengertian;
        begin
            writeln('Apa Itu Klasifikasi Makhluk Hidup?');
            writeln;
            writeln('Klasifikasi makhluk hidup merupakan cara pengelompokan dan memilah makhluk hidup ke suatu unit golongan.');
            writeln('Pengelompokkan makhluk hidup berdasarkan dari persamaan struktur yang dimilikinya.');
            pembatas;
        end;
    procedure tujuan;
        begin
            writeln('Apa Tujuan Dari Klasifikasi Makhluk Hidup?');
            writeln;
            writeln('1. Membantu mengetahui hubungan kerabat');
            writeln('2. Memudahkan dalam mempelajari makhluk hidup');
            writeln('3. Menyederhanakan objek studi');
            writeln('4. Membantu membedakan antar makhluk hidup');
            writeln('5. Memberi nama');
            pembatas;
        end;
    procedure robert;
        begin
            write('Klasifikasi yang paling umum diketahui adalah klasifikasi yang dikemukakan Robert H Whittaker. ');
            writeln('Robert mengemukakan sistem klasifikasi 5 kingdom, yang meliputi: Monera, Protista, Fungi, Plantae dan Animalia');
            pembatas;
        end;
    procedure pmonera;
        begin
            writeln('Monera adalah organisme uniseluler atau organisme yang hanya memiliki satu sel dengan struktur yang masih sangat sederhana.');
            pembatas;
        end;
    procedure pprotista;
        begin
            writeln('Protista adalah kingdom yang terdiri dari satu sel atau banyak sel dan memiliki membran inti (organisme eukariot) serta bersel tunggal');
            pembatas;
        end;
    procedure pfungi;
        begin
            writeln('Fungi adalah kingdom dari organisme eukariotik bersifat heterotrof yang mendapat nutrisinya dari bahan organik');
            pembatas;
        end;
    procedure pplantae;
        begin
            writeln('Kingdom Plantae atau yang lebih dikenal dengan tumbuhan ialah salah satu organisme eukariotik multiseluler dengan dinding sel dan klorofil');
            pembatas;
        end;
    procedure panimalia;
        begin
            writeln('Kingdom animalia atau dunia hewan adalah hewan organisme eukariotik (organisme dengan sel kompleks) yang multiseluler');
            pembatas;
        end;
    procedure klasifikasi;
        begin
            writeln('Pengklasifikasian Makhluk Hidup');
            writeln;
            Writeln('(Note : Sebelum melakukan pengklasifikasian, diharapkan untuk melakukan observasi terlebih dahulu)');
            writeln;
            write('Berapa banyak makhluk hidup yang ingin diklasifikasi? ');readln(n);
            for i := 1 to n do
                begin
                    writeln;
                    writeln('Makhluk hidup ke-', i,' : ');
                    new (b[i]);
                    with b[i]^ do
                        begin
                            writeln;
                            write('Bentuk selnya (tunggal sederhana / tunggal kompleks / multiseluler / kebanyakan multiseluler) : ');
                            readln(sel); writeln;
                            write('inti selnya (prokariotik / eukariotik) : ');
                            readln(membran); writeln;
                            write('Cara berkembang biak (membelah diri / aseksual dan seksual) : ');
                            readln(kembangbiak); writeln;
                            write('Cara memperoleh makanan (menyerap makanan / hetrotof / autrotof : ');
                            readln(makanan); writeln;
                            if lowercase(sel) = 'tunggal sederhana'  then
                                begin 
                                    writeln('Makhluk hidup ke-',i, ' Termasuk kingdom MONERA');
                                    b[i] := @monera;
                                end
                            else if lowercase(sel) = 'multiseluler'  then
                                begin
                                    if lowercase(makanan) = 'autrotof' then
                                        begin
                                            writeln('Makhluk hidup ke-',i, ' Termasuk kingdom PLANTAE');
                                            b[i] := @plantae;
                                        end
                                    else if lowercase(makanan) = 'hetrotof' then
                                        begin
                                            writeln('Makhluk hidup ke-',i, ' Termasuk kingdom ANIMALIA');
                                            b[i] := @animalia;
                                        end;
                                end
                            else if lowercase(sel) = 'tunggal kompleks' then
                                begin
                                    writeln('Makhluk hidup ke-',i, ' Termasuk kingdom PROTISTA');
                                    b[i] := @protista;
                                end
                            else if lowercase(sel) = 'kebanyakan multiseluler' then
                                begin
                                    writeln('Makhluk hidup ke-',i, ' Termasuk kingdom FUNGI');
                                    b[i] := @fungi;
                                end;
                        end;
                end;
            pembatas;
        end;


label z;

begin
    clrscr;
    monera   := 'MONERA';
    protista := 'PROTISTA';
    fungi    := 'FUNGI';
    plantae  := 'PLANTAE';
    animalia := 'ANIMALIA';
    writeln('KLASIFIKASI MAKHLUK HIDUP');
    pembatas;
    writeln('Menu halaman :');
    writeln;
    writeln('1. Apa itu klasifikasi Makhluk Hidup?');
    writeln('2. Apa tujuan klasifikasi?');
    writeln('3. Klasifikasi menurut Robert H Whittaker');
    writeln('4. Kingdom Monera');
    writeln('5. Kingdom Protista');
    writeln('6. Kingdom Fungi');
    writeln('7. Kingdom Plantae');
    writeln('8. Kingdom Animalia');
    writeln('9. Mengklasifikasikan');
    writeln('10. Berhenti');
    writeln; z :
    write('Masukkan Nomor Menu Halaman : '); readln(a);
    pembatas;
    if a = 1 then
        begin
            pengertian;
            goto z;
        end
    else if a = 2 then
        begin
            tujuan;
            goto z;
        end
    else if a = 3 then
        begin
            robert;
            goto z;
        end
    else if a = 4 then
        begin
            pmonera;
            goto z;
        end
    else if a = 5 then
        begin
            pprotista;
            goto z;
        end
    else if a = 6 then
        begin
            pfungi;
            goto z;
        end
    else if a = 7 then
        begin
            pplantae;
            goto z;
        end
    else if a = 8 then
        begin  
            panimalia;
            goto z;
        end
    else if a = 9 then
        begin
            klasifikasi;
            goto z;
        end
    else
        halt;
end.