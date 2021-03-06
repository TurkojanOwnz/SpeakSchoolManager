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
    public partial class FormTabelaMensalidades : Form
    {
        int Permissao;

        public FormTabelaMensalidades(int TagP)
        {
            InitializeComponent();
            Permissao = TagP;
        }

        private void FormTabelaMensalidades_Load(object sender, EventArgs e)
        {
            dgv_TabelaMensalidades.DataSource = GerenciaBanco.carregaDados("Mensalidades", "Id_Mensalidade as 'Código da mensalidade', Id_Financeiro as 'Código do financeiro', " +
            "Id_Negociacao as 'Código da negociação', Numero_Parcela as 'Nº da parcela', Situacao, Data as 'Data depósito', Valor as 'Valor da parcela'").Tables[0];

            dgv_TabelaMensalidades.Columns[6].DefaultCellStyle.Format = "C2";

            if (Permissao != 1)
                dgv_TabelaMensalidades.AllowUserToDeleteRows = false;
        }

        private void dgv_TabelaMensalidades_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            e.Cancel = true;
            dgv_TabelaMensalidades.RefreshEdit();
            MessageBox.Show("O valor fornecido a esta celula está invalido!");
        }

        private void cmb_NomeAluno_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            ValidaCampos.GetLista(cmb_NomeAluno, "TOP 5 Nome", "Nome", e, "SysProtected.Alunos");
        }

        private void cmb_NomeAluno_SelectedValueChanged(object sender, EventArgs e)
        {
            ValidaCampos.Deleta = true;
        }

        private void cmb_NomeFuncionario_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            ValidaCampos.GetLista(cmb_NomeFuncionario, "TOP 5 Nome", "Nome", e, "SysProtected.Funcionarios");
        }

        private void cmb_NomeFuncionario_SelectedValueChanged(object sender, EventArgs e)
        {
            ValidaCampos.Deleta = true;
        }

        private void btn_FiltrarAluno_Click(object sender, EventArgs e)
        {
            int[] X = new int[dgv_TabelaMensalidades.RowCount];
            int N;
            int i = 0;

            if (cmb_NomeAluno.Text.Trim().Length == 0)
            {
                MessageBox.Show("Preencha o campo aluno!");
                cmb_NomeAluno.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            cmb_NomeAluno.BackColor = System.Drawing.Color.White;

            N = GerenciaBanco.getFiltro(cmb_NomeAluno.Text, "Nome", "MensalidadesAlunosFiltro", "Id_Negociacao");

            if (N > 0)
            {
                foreach (int Y in X)
                {
                    if (dgv_TabelaMensalidades.Rows[i].Cells[2].Value.ToString() == N.ToString())
                    {
                        dgv_TabelaMensalidades.Rows[i].Selected = true;
                    }
                    ++i;
                }
            }
        }

        private void btn_FiltrarFuncionario_Click(object sender, EventArgs e)
        {
            if (cmb_NomeFuncionario.Text.Trim().Length == 0)
            {
                MessageBox.Show("Preencha o campo funcionário!");
                cmb_NomeFuncionario.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            cmb_NomeFuncionario.BackColor = System.Drawing.Color.White;

            if (GerenciaBanco.getFiltro(cmb_NomeFuncionario.Text, "Nome", "MensalidadesFuncionariosFiltro", "Id_Mensalidade") != 0)
            {
                dgv_TabelaMensalidades.Rows[GerenciaBanco.getFiltro(cmb_NomeFuncionario.Text, "Nome", "MensalidadesFuncionariosFiltro", "Id_Mensalidade") - 1].Selected = true;
            }
        }

        private void btn_SalvarAlteracoes_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja salvar as alterações?", "Salvar?", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                GerenciaBanco.updateDados("Mensalidades", "Id_Mensalidade as 'Código da mensalidade', Id_Financeiro as 'Código do financeiro', " +
            "Id_Negociacao as 'Código da negociação', Numero_Parcela as 'Nº da parcela', Situacao, Data as 'Data depósito', Valor as 'Valor da parcela'");
            }

            dgv_TabelaMensalidades.DataSource = GerenciaBanco.carregaDados("Mensalidades", "Id_Mensalidade as 'Código da mensalidade', Id_Financeiro as 'Código do financeiro', " +
            "Id_Negociacao as 'Código da negociação', Numero_Parcela as 'Nº da parcela', Situacao, Data as 'Data depósito', Valor as 'Valor da parcela'").Tables[0];
        }

        private void btn_Cancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
