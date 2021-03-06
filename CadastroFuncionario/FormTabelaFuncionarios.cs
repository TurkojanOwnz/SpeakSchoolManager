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
    public partial class FormTabelaFuncionarios : Form
    {
        FormFotoInscricao form;
        int Permissao;
        
        public FormTabelaFuncionarios(int TagP)
        {
            InitializeComponent();
            this.form = new FormFotoInscricao();
            Permissao = TagP;
        }

        private void FormTabelaFuncionarios_Load(object sender, EventArgs e)
        {
            dgv_Funcionarios.DataSource = GerenciaBanco.carregaDados("Funcionarios", "Id_Funcionario as 'Código do funcionário', " +
            "Id_Endereco as 'Código do endereço', Nome, DataNascimento as 'Data de nascimento', Sexo, Estado_Civil as 'Estado Civil', " +
            "RG, CPF, Status_Funcionario as 'Status', Email, Foto, DDD, Telefone, Quantidade_Filhos as 'Nº de filhos', " +
            "Historico_Escolar as 'Histórico escolar', Cargo, Salario as 'Salário', Complemento, Numero as 'Nº'").Tables[0];

            foreach (DataGridViewColumn column in dgv_Funcionarios.Columns)
            {
                if (column is DataGridViewImageColumn)
                {
                    (column as DataGridViewImageColumn).ImageLayout = DataGridViewImageCellLayout.Zoom;
                    (column as DataGridViewImageColumn).Description = "Zoomed";
                }
            }

            dgv_Funcionarios.Columns[16].DefaultCellStyle.Format = "C2";

            if (Permissao != 1)
                dgv_Funcionarios.AllowUserToDeleteRows = false;
        }

        private void dgv_Funcionarios_DataError(object sender, DataGridViewDataErrorEventArgs e)
        {
            e.Cancel = true;
            dgv_Funcionarios.RefreshEdit();
            MessageBox.Show("O valor fornecido a esta celula está invalido!");
        }

        private void dgv_Funcionarios_CellMouseEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 10 && e.RowIndex >= 0)
            {

                this.form.set_foto((Bitmap)dgv_Funcionarios.Rows[e.RowIndex].Cells[e.ColumnIndex].FormattedValue);
                form.Location = new Point(Form.MousePosition.X + 10, (Form.MousePosition.Y));
                this.form.Show();
            }
        }

        private void dgv_Funcionarios_CellMouseLeave(object sender, DataGridViewCellEventArgs e)
        {
            this.form.Hide();
        }

        private void cmb_Nome_PreviewKeyDown(object sender, PreviewKeyDownEventArgs e)
        {
            ValidaCampos.GetLista(cmb_Nome, "TOP 5 Nome", "Nome", e, "SysProtected.Funcionarios");
        }

        private void cmb_Nome_SelectedValueChanged(object sender, EventArgs e)
        {
            ValidaCampos.Deleta = true;
        }

        private void btn_FiltrarId_Click(object sender, EventArgs e)
        {
            if (msk_Id.Text.Trim().Length == 0)
            {
                MessageBox.Show("Preencha o campo de id!");
                msk_Id.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            msk_Id.BackColor = System.Drawing.Color.White;

            int Y = GerenciaBanco.getFiltro(msk_Id.Text, "Id_Funcionario", "SysProtected.Funcionarios", "Id_Funcionario");
            if (Y != 0)
            {
                int N = dgv_Funcionarios.RowCount;
                for (int I = 0; I < N; ++I)
                {
                    if (int.Parse(dgv_Funcionarios.Rows[I].Cells[0].Value.ToString()) == Y)
                    {
                        dgv_Funcionarios.Rows[I].Selected = true;
                    }
                }
            }
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

            int Y = GerenciaBanco.getFiltro(cmb_Nome.Text, "Nome", "SysProtected.Funcionarios", "Id_Funcionario");
            if (Y != 0)
            {
                int N = dgv_Funcionarios.RowCount;
                for (int I = 0; I < N; ++I)
                {
                    if (int.Parse(dgv_Funcionarios.Rows[I].Cells[0].Value.ToString()) == Y)
                    {
                        dgv_Funcionarios.Rows[I].Selected = true;
                    }
                }
            }
        }

        private void btn_FiltrarCPF_Click(object sender, EventArgs e)
        {
            if (msk_CPF.Text.Trim().Length != 14)
            {
                MessageBox.Show("Preencha o campo CPF!");
                msk_CPF.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            msk_CPF.BackColor = System.Drawing.Color.White;

            int Y = GerenciaBanco.getFiltro(msk_CPF.Text, "CPF", "SysProtected.Funcionarios", "Id_Funcionario");
            if (Y != 0)
            {
                int N = dgv_Funcionarios.RowCount;
                for (int I = 0; I < N; ++I)
                {
                    if (int.Parse(dgv_Funcionarios.Rows[I].Cells[0].Value.ToString()) == Y)
                    {
                        dgv_Funcionarios.Rows[I].Selected = true;
                    }
                }
            }
        }

        private void btn_FIltrarCargo_Click(object sender, EventArgs e)
        {
            if (!ValidaCampos.ValidaOpcoesCmb(cmb_Cargo, "cargo"))
            {
                cmb_Cargo.BackColor = System.Drawing.Color.LightGray;
                return;
            }

            cmb_Cargo.BackColor = System.Drawing.Color.White;

            int Y = GerenciaBanco.getFiltro(cmb_Cargo.Text, "Cargo", "SysProtected.Funcionarios", "Id_Funcionario");
            if (Y != 0)
            {
                int N = dgv_Funcionarios.RowCount;
                for (int I = 0; I < N; ++I)
                {
                    if (int.Parse(dgv_Funcionarios.Rows[I].Cells[0].Value.ToString()) == Y)
                    {
                        dgv_Funcionarios.Rows[I].Selected = true;
                    }
                }
            }
        }

        private void btn_SalvarAlteracoes_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Deseja salvar as alterações?", "Salvar?", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                GerenciaBanco.updateDados("Funcionarios", "Id_Funcionario as 'Código do funcionário', Id_Endereco as 'Código do endereço', " +
                "Nome, DataNascimento as 'Data de nascimento', Sexo, Estado_Civil as 'Estado Civil', " +
                "RG, CPF, Status_Funcionario as 'Status', Email, Foto, DDD, Telefone, Quantidade_Filhos as 'Nº de filhos', " +
                "Historico_Escolar as 'Histórico escolar', Cargo, Salario as 'Salário', Complemento, Numero as 'Nº'");
            }

            dgv_Funcionarios.DataSource = GerenciaBanco.carregaDados("Funcionarios", "Id_Funcionario as 'Código do funcionário', " +
            "Id_Endereco as 'Código do endereço', Nome, DataNascimento as 'Data de nascimento', Sexo, Estado_Civil as 'Estado Civil', " +
            "RG, CPF, Status_Funcionario as 'Status', Email, Foto, DDD, Telefone, Quantidade_Filhos as 'Nº de filhos', " +
            "Historico_Escolar as 'Histórico escolar', Cargo, Salario as 'Salário', Complemento, Numero as 'Nº'").Tables[0];
        }

        private void btn_Cancelar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
