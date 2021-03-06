﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CadastroFuncionario
{
    public partial class FormTabelaFinanceiros : Form
    {
        int Permissao;

        public FormTabelaFinanceiros(int TagP)
        {
            InitializeComponent();
            Permissao = TagP;
        }

        private void FormTabelaFinanceiros_Load(object sender, EventArgs e)
        {
            dgv_TabelaFinanceiros.DataSource = GerenciaBanco.carregaDados("Financeiro", "Id_Financeiro as 'Código do financeiro', Id_Funcionario as 'Código do funcionário', " +
            "Banco, Agencia, Conta, Data as 'Data para depósito'").Tables[0];

            if (Permissao != 1)
                dgv_TabelaFinanceiros.AllowUserToDeleteRows = false;
        }

        private void dgv_TabelaFinanceiros_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            e.Cancel = true;
            dgv_TabelaFinanceiros.RefreshEdit();
            MessageBox.Show("O valor fornecido a esta celula está invalido!");
        }

        private void cmb_Nome_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            ValidaCampos.GetLista(cmb_Nome, "TOP 5 Nome", "Nome", e, "SysProtected.Funcionarios");
        }

        private void cmb_Nome_SelectedValueChanged(object sender, EventArgs e)
        {
            ValidaCampos.Deleta = true;
        }

        private void btn_FiltrarNome_Click(object sender, EventArgs e)
        {
            if (cmb_Nome.Text.Trim().Length == 0)
            {
                MessageBox.Show("Preencha o campo nome!");
                cmb_Nome.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            cmb_Nome.BackColor = System.Drawing.Color.White;

            int Y = GerenciaBanco.getFiltro(cmb_Nome.Text, "Nome", "FinanceiroFuncionarioFiltro", "Id_Financeiro");
            if (Y != 0)
            {
                int N = dgv_TabelaFinanceiros.RowCount;
                for (int I = 0; I < N; ++I)
                {
                    if (int.Parse(dgv_TabelaFinanceiros.Rows[I].Cells[0].Value.ToString()) == Y)
                    {
                        dgv_TabelaFinanceiros.Rows[I].Selected = true;
                    }
                }
            }
        }

        private void btn_SalvarAlteracoes_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja salvar as alterações?", "Salvar?", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                GerenciaBanco.updateDados("Financeiro", "Id_Financeiro as 'Código do financeiro', Id_Funcionario as 'Código do funcionário', " +
                "Banco, Agencia, Conta, Data as 'Data para depósito'");
            }

            dgv_TabelaFinanceiros.DataSource = GerenciaBanco.carregaDados("Financeiro", "Id_Financeiro as 'Código do financeiro', Id_Funcionario as 'Código do funcionário', " +
            "Banco, Agencia, Conta, Data as 'Data para depósito'").Tables[0];
        }

        private void btn_Cancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
