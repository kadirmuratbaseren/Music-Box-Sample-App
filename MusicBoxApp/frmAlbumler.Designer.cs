﻿namespace MusicBoxApp
{
    partial class frmAlbumler
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.cmbSarkicilar = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.btnGuncelle = new System.Windows.Forms.Button();
            this.btnEkle = new System.Windows.Forms.Button();
            this.btnSil = new System.Windows.Forms.Button();
            this.txtAdi = new System.Windows.Forms.TextBox();
            this.lstAlbumler = new System.Windows.Forms.ListBox();
            this.nudFiyati = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.nudFiyati)).BeginInit();
            this.SuspendLayout();
            // 
            // cmbSarkicilar
            // 
            this.cmbSarkicilar.FormattingEnabled = true;
            this.cmbSarkicilar.Location = new System.Drawing.Point(88, 303);
            this.cmbSarkicilar.Margin = new System.Windows.Forms.Padding(4);
            this.cmbSarkicilar.Name = "cmbSarkicilar";
            this.cmbSarkicilar.Size = new System.Drawing.Size(169, 26);
            this.cmbSarkicilar.TabIndex = 29;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(12, 306);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 18);
            this.label2.TabIndex = 26;
            this.label2.Text = "Şarkıcı :";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(12, 273);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 18);
            this.label1.TabIndex = 27;
            this.label1.Text = "Fiyat :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 241);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(37, 18);
            this.label5.TabIndex = 28;
            this.label5.Text = "Adı :";
            // 
            // btnGuncelle
            // 
            this.btnGuncelle.Image = global::MusicBoxApp.Properties.Resources._1468409370_EditDocument;
            this.btnGuncelle.Location = new System.Drawing.Point(88, 336);
            this.btnGuncelle.Name = "btnGuncelle";
            this.btnGuncelle.Size = new System.Drawing.Size(97, 34);
            this.btnGuncelle.TabIndex = 23;
            this.btnGuncelle.Text = "Güncelle";
            this.btnGuncelle.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnGuncelle.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGuncelle.UseVisualStyleBackColor = true;
            // 
            // btnEkle
            // 
            this.btnEkle.Image = global::MusicBoxApp.Properties.Resources._1468409366_Add;
            this.btnEkle.Location = new System.Drawing.Point(12, 336);
            this.btnEkle.Name = "btnEkle";
            this.btnEkle.Size = new System.Drawing.Size(70, 34);
            this.btnEkle.TabIndex = 24;
            this.btnEkle.Text = "Ekle";
            this.btnEkle.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnEkle.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnEkle.UseVisualStyleBackColor = true;
            // 
            // btnSil
            // 
            this.btnSil.Image = global::MusicBoxApp.Properties.Resources._1468409373_Cancel;
            this.btnSil.Location = new System.Drawing.Point(191, 336);
            this.btnSil.Name = "btnSil";
            this.btnSil.Size = new System.Drawing.Size(66, 34);
            this.btnSil.TabIndex = 25;
            this.btnSil.Text = "Sil";
            this.btnSil.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnSil.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnSil.UseVisualStyleBackColor = true;
            // 
            // txtAdi
            // 
            this.txtAdi.Location = new System.Drawing.Point(88, 238);
            this.txtAdi.MaxLength = 50;
            this.txtAdi.Name = "txtAdi";
            this.txtAdi.Size = new System.Drawing.Size(169, 26);
            this.txtAdi.TabIndex = 22;
            // 
            // lstAlbumler
            // 
            this.lstAlbumler.FormattingEnabled = true;
            this.lstAlbumler.ItemHeight = 18;
            this.lstAlbumler.Location = new System.Drawing.Point(12, 12);
            this.lstAlbumler.Name = "lstAlbumler";
            this.lstAlbumler.Size = new System.Drawing.Size(245, 220);
            this.lstAlbumler.TabIndex = 20;
            // 
            // nudFiyati
            // 
            this.nudFiyati.Location = new System.Drawing.Point(88, 270);
            this.nudFiyati.Name = "nudFiyati";
            this.nudFiyati.Size = new System.Drawing.Size(169, 26);
            this.nudFiyati.TabIndex = 30;
            // 
            // frmAlbumler
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 18F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(267, 381);
            this.Controls.Add(this.nudFiyati);
            this.Controls.Add(this.cmbSarkicilar);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnGuncelle);
            this.Controls.Add(this.btnEkle);
            this.Controls.Add(this.btnSil);
            this.Controls.Add(this.txtAdi);
            this.Controls.Add(this.lstAlbumler);
            this.Font = new System.Drawing.Font("Tahoma", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.MaximizeBox = false;
            this.Name = "frmAlbumler";
            this.Text = "Albümler";
            ((System.ComponentModel.ISupportInitialize)(this.nudFiyati)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cmbSarkicilar;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnGuncelle;
        private System.Windows.Forms.Button btnEkle;
        private System.Windows.Forms.Button btnSil;
        private System.Windows.Forms.TextBox txtAdi;
        private System.Windows.Forms.ListBox lstAlbumler;
        private System.Windows.Forms.NumericUpDown nudFiyati;
    }
}