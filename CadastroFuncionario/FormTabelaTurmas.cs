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
    public partial class FormTabelaTurmas : Form
    {
        int Permissao;

        public FormTabelaTurmas(int TagP)
        {
            InitializeComponent();
            Permissao = TagP;
        }

        private void FormTabelaTurmas_Load(object sender, EventArgs e)
        {
            dgv_TabelaTurmas.DataSource = GerenciaBanco.carregaDados("Turmas", "Id_Turma as 'Código da turma', Id_Plano as 'Código do plano', "+
            "Id_Escala as 'Código da escala', Sala, Data, Hora_Entrada as 'Entrada', Hora_Saida as 'Saída'").Tables[0];

            if (Permissao != 1)
                dgv_TabelaTurmas.AllowUserToDeleteRows = false;
        }

        private void dgv_TabelaTurmas_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            e.Cancel = true;
            dgv_TabelaTurmas.RefreshEdit();
            MessageBox.Show("O valor fornecido a esta célula está invalido!");
        }

        private void cmb_NomeFuncionario_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            ValidaCampos.GetLista(cmb_NomeFuncionario, "TOP 5 Nome", "Nome", e, "SysProtected.Funcionarios");
        }

        private void cmb_NomeFuncionario_SelectedValueChanged(object sender, EventArgs e)
        {
            ValidaCampos.Deleta = true;
        }

        private void cmb_NomePlano_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            ValidaCampos.GetLista(cmb_NomePlano, "DISTINCT TOP 5 Nome", "Nome", e, "SysProtected.Planos");
        }

        private void cmb_NomePlano_SelectedValueChanged(object sender, EventArgs e)
        {
            ValidaCampos.Deleta = true;
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

            int Y = GerenciaBanco.getFiltro(cmb_NomeFuncionario.Text, "[Nome do funcionário]", "TurmasFiltro", "Id_Turma");
            if (Y != 0)
            {
                int N = dgv_TabelaTurmas.RowCount;
                for (int I = 0; I < N; ++I)
                {
                    if (int.Parse(dgv_TabelaTurmas.Rows[I].Cells[0].Value.ToString()) == Y)
                    {
                        dgv_TabelaTurmas.Rows[I].Selected = true;
                    }
                }
            }
        }

        private void btn_FiltrarPlano_Click(object sender, EventArgs e)
        {
            if (cmb_NomePlano.Text.Trim().Length == 0)
            {
                MessageBox.Show("Preencha o campo plano!");
                cmb_NomePlano.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            cmb_NomePlano.BackColor = System.Drawing.Color.White;

            int Y = GerenciaBanco.getFiltro(cmb_NomePlano.Text, "[Nome do plano]", "TurmasFiltro", "Id_Turma");
            if (Y != 0)
            {
                int N = dgv_TabelaTurmas.RowCount;
                for (int I = 0; I < N; ++I)
                {
                    if (int.Parse(dgv_TabelaTurmas.Rows[I].Cells[0].Value.ToString()) == Y)
                    {
                        dgv_TabelaTurmas.Rows[I].Selected = true;
                    }
                }
            }
        }

        private void btn_SalvarAlteracoes_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja salvar as alterações?", "Salvar?", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                GerenciaBanco.updateDados("Turmas", "Id_Turma as 'Código da turma', Id_Plano as 'Código do plano', " +
            "Id_Escala as 'Código da escala', Sala, Data, Hora_Entrada as 'Entrada', Hora_Saida as 'Saída'");
            }

            dgv_TabelaTurmas.DataSource = GerenciaBanco.carregaDados("Turmas", "Id_Turma as 'Código da turma', Id_Plano as 'Código do plano', " +
            "Id_Escala as 'Código da escala', Sala, Data, Hora_Entrada as 'Entrada', Hora_Saida as 'Saída'").Tables[0];
        }

        private void btn_Cancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
