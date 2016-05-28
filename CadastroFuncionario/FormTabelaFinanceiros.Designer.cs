﻿namespace CadastroFuncionario
{
    partial class FormTabelaFinanceiros
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormTabelaFinanceiros));
            this.group_TabelaFinanceiro = new System.Windows.Forms.GroupBox();
            this.dgv_TabelaFinanceiros = new System.Windows.Forms.DataGridView();
            this.lbl_Nome = new System.Windows.Forms.Label();
            this.cmb_Nome = new System.Windows.Forms.ComboBox();
            this.btn_FiltrarNome = new System.Windows.Forms.Button();
            this.dB_EscolaDataSet13 = new CadastroFuncionario.DB_EscolaDataSet13();
            this.financeiroFuncionarioBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.financeiroFuncionarioTableAdapter = new CadastroFuncionario.DB_EscolaDataSet13TableAdapters.FinanceiroFuncionarioTableAdapter();
            this.idFinanceiroDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.idFuncionarioDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nomeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.bancoDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.agenciaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.contaDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.group_TabelaFinanceiro.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_TabelaFinanceiros)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dB_EscolaDataSet13)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.financeiroFuncionarioBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // group_TabelaFinanceiro
            // 
            this.group_TabelaFinanceiro.Controls.Add(this.btn_FiltrarNome);
            this.group_TabelaFinanceiro.Controls.Add(this.cmb_Nome);
            this.group_TabelaFinanceiro.Controls.Add(this.lbl_Nome);
            this.group_TabelaFinanceiro.Controls.Add(this.dgv_TabelaFinanceiros);
            resources.ApplyResources(this.group_TabelaFinanceiro, "group_TabelaFinanceiro");
            this.group_TabelaFinanceiro.Name = "group_TabelaFinanceiro";
            this.group_TabelaFinanceiro.TabStop = false;
            // 
            // dgv_TabelaFinanceiros
            // 
            this.dgv_TabelaFinanceiros.AllowUserToAddRows = false;
            this.dgv_TabelaFinanceiros.AutoGenerateColumns = false;
            this.dgv_TabelaFinanceiros.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_TabelaFinanceiros.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.idFinanceiroDataGridViewTextBoxColumn,
            this.idFuncionarioDataGridViewTextBoxColumn,
            this.nomeDataGridViewTextBoxColumn,
            this.bancoDataGridViewTextBoxColumn,
            this.agenciaDataGridViewTextBoxColumn,
            this.contaDataGridViewTextBoxColumn,
            this.dataDataGridViewTextBoxColumn});
            this.dgv_TabelaFinanceiros.DataSource = this.financeiroFuncionarioBindingSource;
            resources.ApplyResources(this.dgv_TabelaFinanceiros, "dgv_TabelaFinanceiros");
            this.dgv_TabelaFinanceiros.Name = "dgv_TabelaFinanceiros";
            // 
            // lbl_Nome
            // 
            resources.ApplyResources(this.lbl_Nome, "lbl_Nome");
            this.lbl_Nome.Name = "lbl_Nome";
            // 
            // cmb_Nome
            // 
            this.cmb_Nome.FormattingEnabled = true;
            resources.ApplyResources(this.cmb_Nome, "cmb_Nome");
            this.cmb_Nome.Name = "cmb_Nome";
            this.cmb_Nome.SelectedValueChanged += new System.EventHandler(this.cmb_Nome_SelectedValueChanged);
            this.cmb_Nome.PreviewKeyDown += new System.Windows.Forms.PreviewKeyDownEventHandler(this.cmb_Nome_PreviewKeyDown);
            // 
            // btn_FiltrarNome
            // 
            resources.ApplyResources(this.btn_FiltrarNome, "btn_FiltrarNome");
            this.btn_FiltrarNome.Name = "btn_FiltrarNome";
            this.btn_FiltrarNome.UseVisualStyleBackColor = true;
            this.btn_FiltrarNome.Click += new System.EventHandler(this.btn_FiltrarNome_Click);
            // 
            // dB_EscolaDataSet13
            // 
            this.dB_EscolaDataSet13.DataSetName = "DB_EscolaDataSet13";
            this.dB_EscolaDataSet13.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // financeiroFuncionarioBindingSource
            // 
            this.financeiroFuncionarioBindingSource.DataMember = "FinanceiroFuncionario";
            this.financeiroFuncionarioBindingSource.DataSource = this.dB_EscolaDataSet13;
            // 
            // financeiroFuncionarioTableAdapter
            // 
            this.financeiroFuncionarioTableAdapter.ClearBeforeFill = true;
            // 
            // idFinanceiroDataGridViewTextBoxColumn
            // 
            this.idFinanceiroDataGridViewTextBoxColumn.DataPropertyName = "Id_Financeiro";
            resources.ApplyResources(this.idFinanceiroDataGridViewTextBoxColumn, "idFinanceiroDataGridViewTextBoxColumn");
            this.idFinanceiroDataGridViewTextBoxColumn.Name = "idFinanceiroDataGridViewTextBoxColumn";
            // 
            // idFuncionarioDataGridViewTextBoxColumn
            // 
            this.idFuncionarioDataGridViewTextBoxColumn.DataPropertyName = "Id_Funcionario";
            resources.ApplyResources(this.idFuncionarioDataGridViewTextBoxColumn, "idFuncionarioDataGridViewTextBoxColumn");
            this.idFuncionarioDataGridViewTextBoxColumn.Name = "idFuncionarioDataGridViewTextBoxColumn";
            // 
            // nomeDataGridViewTextBoxColumn
            // 
            this.nomeDataGridViewTextBoxColumn.DataPropertyName = "Nome";
            resources.ApplyResources(this.nomeDataGridViewTextBoxColumn, "nomeDataGridViewTextBoxColumn");
            this.nomeDataGridViewTextBoxColumn.Name = "nomeDataGridViewTextBoxColumn";
            // 
            // bancoDataGridViewTextBoxColumn
            // 
            this.bancoDataGridViewTextBoxColumn.DataPropertyName = "Banco";
            resources.ApplyResources(this.bancoDataGridViewTextBoxColumn, "bancoDataGridViewTextBoxColumn");
            this.bancoDataGridViewTextBoxColumn.Name = "bancoDataGridViewTextBoxColumn";
            // 
            // agenciaDataGridViewTextBoxColumn
            // 
            this.agenciaDataGridViewTextBoxColumn.DataPropertyName = "Agencia";
            resources.ApplyResources(this.agenciaDataGridViewTextBoxColumn, "agenciaDataGridViewTextBoxColumn");
            this.agenciaDataGridViewTextBoxColumn.Name = "agenciaDataGridViewTextBoxColumn";
            // 
            // contaDataGridViewTextBoxColumn
            // 
            this.contaDataGridViewTextBoxColumn.DataPropertyName = "Conta";
            resources.ApplyResources(this.contaDataGridViewTextBoxColumn, "contaDataGridViewTextBoxColumn");
            this.contaDataGridViewTextBoxColumn.Name = "contaDataGridViewTextBoxColumn";
            // 
            // dataDataGridViewTextBoxColumn
            // 
            this.dataDataGridViewTextBoxColumn.DataPropertyName = "Data";
            resources.ApplyResources(this.dataDataGridViewTextBoxColumn, "dataDataGridViewTextBoxColumn");
            this.dataDataGridViewTextBoxColumn.Name = "dataDataGridViewTextBoxColumn";
            // 
            // FormTabelaFinanceiros
            // 
            resources.ApplyResources(this, "$this");
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.group_TabelaFinanceiro);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Fixed3D;
            this.MinimizeBox = false;
            this.Name = "FormTabelaFinanceiros";
            this.Load += new System.EventHandler(this.FormTabelaFinanceiros_Load);
            this.group_TabelaFinanceiro.ResumeLayout(false);
            this.group_TabelaFinanceiro.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_TabelaFinanceiros)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dB_EscolaDataSet13)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.financeiroFuncionarioBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox group_TabelaFinanceiro;
        private System.Windows.Forms.DataGridView dgv_TabelaFinanceiros;
        private System.Windows.Forms.Button btn_FiltrarNome;
        private System.Windows.Forms.ComboBox cmb_Nome;
        private System.Windows.Forms.Label lbl_Nome;
        private DB_EscolaDataSet13 dB_EscolaDataSet13;
        private System.Windows.Forms.BindingSource financeiroFuncionarioBindingSource;
        private DB_EscolaDataSet13TableAdapters.FinanceiroFuncionarioTableAdapter financeiroFuncionarioTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn idFinanceiroDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn idFuncionarioDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nomeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn bancoDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn agenciaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn contaDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataDataGridViewTextBoxColumn;
    }
}