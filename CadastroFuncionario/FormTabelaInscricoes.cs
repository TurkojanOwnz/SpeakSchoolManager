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
    public partial class FormTabelaInscricoes : Form
    {
        public FormTabelaInscricoes()
        {
            InitializeComponent();
        }

        private void FormTabelaInscricoes_Load(object sender, EventArgs e)
        {
            dgv_TabelaInscricoes.DataSource = GerenciaBanco.carregaDados("Inscricao", "Id_Inscricao as 'Código da inscrição', " +
            "Id_Aluno as 'Código do aluno', Id_Negociacao as 'Código da negociação', Data, Status").Tables[0];
        }

        private void dgv_TabelaInscricoes_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            e.Cancel = true;
            dgv_TabelaInscricoes.RefreshEdit();
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

        private void btn_FiltrarAluno_Click(object sender, EventArgs e)
        {
            if (cmb_NomeAluno.Text.Trim().Length == 0)
            {
                MessageBox.Show("Preencha o campo aluno!");
                cmb_NomeAluno.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            cmb_NomeAluno.BackColor = System.Drawing.Color.White;

            if (GerenciaBanco.getFiltro(cmb_NomeAluno.Text, "Nome", "InscricaoAlunoFiltro", "Id_Inscricao") != 0)
            {
                dgv_TabelaInscricoes.Rows[GerenciaBanco.getFiltro(cmb_NomeAluno.Text, "Nome", "InscricaoAlunoFiltro", "Id_Inscricao") - 1].Selected = true;
            }
        }

        private void btn_SalvarAlteracoes_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja salvar as alterações?", "Salvar?", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                GerenciaBanco.updateDados("Inscricao", "Id_Inscricao as 'Código da inscrição', " +
            "Id_Aluno as 'Código do aluno', Id_Negociacao as 'Código da negociação', Data, Status");
            }

            dgv_TabelaInscricoes.DataSource = GerenciaBanco.carregaDados("Inscricao", "Id_Inscricao as 'Código da inscrição', " +
            "Id_Aluno as 'Código do aluno', Id_Negociacao as 'Código da negociação', Data, Status").Tables[0];
        }

        private void btn_Cancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
