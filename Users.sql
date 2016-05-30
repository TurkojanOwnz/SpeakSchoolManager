USE [master]
 
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [ANA\Diretor]
 
ALTER ROLE [db_owner] ADD MEMBER [ANA\Diretor]
 
USE [master]

ALTER SERVER ROLE [bulkadmin] ADD MEMBER [ANA\Secretario]

USE [master]
  
GRANT EXECUTE ON SCHEMA::[SysProtected] TO [ANA\Professor]
 
GRANT INSERT ON SCHEMA::[SysProtected] TO [ANA\Professor]
 
GRANT SELECT ON SCHEMA::[SysProtected] TO [ANA\Professor]
 
GRANT UPDATE ON SCHEMA::[SysProtected] TO [ANA\Professor]
 
GRANT DELETE ON SCHEMA::[SysProtected] TO [ANA\Secretario]
 
GRANT EXECUTE ON SCHEMA::[SysProtected] TO [ANA\Secretario]
 
GRANT INSERT ON SCHEMA::[SysProtected] TO [ANA\Secretario]
 
GRANT SELECT ON SCHEMA::[SysProtected] TO [ANA\Secretario]
 
GRANT UPDATE ON SCHEMA::[SysProtected] TO [ANA\Secretario]
 
DENY ALTER ON [SysProtected].[Funcionarios] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Funcionarios] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Funcionarios] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Funcionarios] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Funcionarios] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Funcionarios] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Funcionarios] TO [ANA\Secretario]
 
DENY DELETE ON [SysProtected].[Funcionarios] TO [ANA\Secretario]
 
DENY INSERT ON [SysProtected].[Funcionarios] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Funcionarios] TO [ANA\Secretario]
 
DENY UPDATE ON [SysProtected].[Funcionarios] TO [ANA\Secretario]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Funcionarios] TO [ANA\Secretario]
 
DENY ALTER ON [SysProtected].[Alunos] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Alunos] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Alunos] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Alunos] TO [ANA\Professor]

DENY TAKE OWNERSHIP ON [SysProtected].[Alunos] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Alunos] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Alunos] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Endereco] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Escalas] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY CONTROL ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY DELETE ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY INSERT ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY REFERENCES ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY SELECT ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY UPDATE ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY VIEW DEFINITION ON [SysProtected].[Escalas] TO [ANA\Secretario]
 
DENY ALTER ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Financeiro] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Financeiro] TO [ANA\Secretario]
 
DENY DELETE ON [SysProtected].[Financeiro] TO [ANA\Secretario]
 
DENY INSERT ON [SysProtected].[Financeiro] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Financeiro] TO [ANA\Secretario]
 
DENY UPDATE ON [SysProtected].[Financeiro] TO [ANA\Secretario]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Financeiro] TO [ANA\Secretario]
 
DENY ALTER ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Historico_Funcionario] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Idiomas] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY CONTROL ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY DELETE ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY INSERT ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY UPDATE ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY VIEW DEFINITION ON [SysProtected].[Idiomas] TO [ANA\Secretario]
 
DENY ALTER ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Inscricao] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Inscricoes_Turmas] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Mensalidades] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Ne ciacao] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Planos] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Planos] TO [ANA\Secretario]
 
DENY DELETE ON [SysProtected].[Planos] TO [ANA\Secretario]
 
DENY INSERT ON [SysProtected].[Planos] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Planos] TO [ANA\Secretario]
 
DENY UPDATE ON [SysProtected].[Planos] TO [ANA\Secretario]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Planos] TO [ANA\Secretario]
 
DENY ALTER ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Responsavel_Aluno] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY CONTROL ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY DELETE ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY INSERT ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY REFERENCES ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY SELECT ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY UPDATE ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [SysProtected].[Turmas] TO [ANA\Professor]
 
DENY ALTER ON [SysProtected].[Turmas] TO [ANA\Secretario]
 
DENY DELETE ON [SysProtected].[Turmas] TO [ANA\Secretario]
 
DENY INSERT ON [SysProtected].[Turmas] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [SysProtected].[Turmas] TO [ANA\Secretario]
 
DENY UPDATE ON [SysProtected].[Turmas] TO [ANA\Secretario]
 
DENY VIEW CHANGE TRACKING ON [SysProtected].[Turmas] TO [ANA\Secretario]
 
DENY ALTER ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[AllInscricoes] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[AllMensalidades] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[EscalaFuncionario] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY CONTROL ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY DELETE ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY INSERT ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY REFERENCES ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY SELECT ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY UPDATE ON [dbo].[EscalaFuncionario] TO [ANA\Secretario]
 
DENY ALTER ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY CONTROL ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY DELETE ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY INSERT ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY REFERENCES ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY SELECT ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY UPDATE ON [dbo].[EscalasFuncionarioFiltro] TO [ANA\Secretario]
 
DENY ALTER ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
DENY CONTROL ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
DENY DELETE ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
DENY INSERT ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
DENY ALTER ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[IdiomasPlanosFiltro] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[PagamentoFuncionario] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[CadastroAluno] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[CadastroAluno] TO [ANA\Professor]
 
DENY EXECUTE ON [dbo].[CadastroAluno] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[CadastroAluno] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [dbo].[CadastroAluno] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[CadastroFuncionario] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[CadastroFuncionario] TO [ANA\Professor]
 
DENY EXECUTE ON [dbo].[CadastroFuncionario] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[CadastroFuncionario] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [dbo].[CadastroFuncionario] TO [ANA\Professor]
 
DENY ALTER ON [dbo].[CadastroFuncionario] TO [ANA\Secretario]
 
DENY CONTROL ON [dbo].[CadastroFuncionario] TO [ANA\Secretario]
 
DENY EXECUTE ON [dbo].[CadastroFuncionario] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [dbo].[CadastroFuncionario] TO [ANA\Secretario]
 
DENY VIEW DEFINITION ON [dbo].[CadastroFuncionario] TO [ANA\Secretario]
 
DENY ALTER ON [dbo].[CadastroResponsavel] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[CadastroResponsavel] TO [ANA\Professor]
 
DENY EXECUTE ON [dbo].[CadastroResponsavel] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[CadastroResponsavel] TO [ANA\Professor]
 
DENY VIEW DEFINITION ON [dbo].[CadastroResponsavel] TO [ANA\Professor]

DENY REFERENCES ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
DENY SELECT ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
DENY TAKE OWNERSHIP ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
DENY UPDATE ON [dbo].[FinanceiroFuncionarioFiltro] TO [ANA\Secretario]
 
GRANT SELECT ON [SysProtected].[Funcionarios] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[HistoricoFuncionario] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[HistoricoFuncionario] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[HistoricoFuncionario] TO [ANA\Secretario]
 
DENY ALTER ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
DENY CONTROL ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
DENY DELETE ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
DENY INSERT ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
DENY REFERENCES ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
DENY SELECT ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
DENY TAKE OWNERSHIP ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
DENY UPDATE ON [dbo].[HistoricoFuncionario] TO [ANA\Professor]
 
GRANT CONTROL ON [dbo].[CadastroResponsavel] TO [ANA\Secretario]
 
GRANT EXECUTE ON [dbo].[CadastroResponsavel] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[CadastroResponsavel] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[CadastroAluno] TO [ANA\Secretario]
 
GRANT EXECUTE ON [dbo].[CadastroAluno] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[CadastroAluno] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[HistoricoAluno] TO [ANA\Professor]
 
GRANT INSERT ON [dbo].[HistoricoAluno] TO [ANA\Professor]
 
GRANT SELECT ON [dbo].[HistoricoAluno] TO [ANA\Professor]
 
GRANT UPDATE ON [dbo].[HistoricoAluno] TO [ANA\Professor]
 
GRANT VIEW DEFINITION ON [dbo].[HistoricoAluno] TO [ANA\Professor]
 
GRANT CONTROL ON [dbo].[HistoricoAluno] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[HistoricoAluno] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[HistoricoAluno] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[HistoricoAluno] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[HistoricoAluno] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[InscricoesTurmas] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[InscricoesTurmas] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[InscricoesTurmas] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[InscricoesTurmas] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[InscricoesTurmas] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[InscricoesTurmas] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[AllMensalidades] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[AllMensalidades] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[AllMensalidades] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[AllMensalidades] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[AllMensalidades] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[AllMensalidades] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[AllInscricoes] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[AllInscricoes] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[AllInscricoes] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[AllInscricoes] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[AllInscricoes] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[AllInscricoes] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[AllBoletim] TO [ANA\Professor]
 
GRANT INSERT ON [dbo].[AllBoletim] TO [ANA\Professor]
 
GRANT REFERENCES ON [dbo].[AllBoletim] TO [ANA\Professor]
 
GRANT SELECT ON [dbo].[AllBoletim] TO [ANA\Professor]
 
GRANT UPDATE ON [dbo].[AllBoletim] TO [ANA\Professor]
 
GRANT VIEW DEFINITION ON [dbo].[AllBoletim] TO [ANA\Professor]
 
GRANT CONTROL ON [dbo].[AllBoletim] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[AllBoletim] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[AllBoletim] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[AllBoletim] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[AllBoletim] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[AllBoletim] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[TurmaAluno] TO [ANA\Professor]
 
GRANT INSERT ON [dbo].[TurmaAluno] TO [ANA\Professor]
 
GRANT REFERENCES ON [dbo].[TurmaAluno] TO [ANA\Professor]
 
GRANT SELECT ON [dbo].[TurmaAluno] TO [ANA\Professor]
 
GRANT UPDATE ON [dbo].[TurmaAluno] TO [ANA\Professor]
 
GRANT VIEW DEFINITION ON [dbo].[TurmaAluno] TO [ANA\Professor]
 
GRANT CONTROL ON [dbo].[TurmaAluno] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[TurmaAluno] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[TurmaAluno] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[TurmaAluno] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[TurmaAluno] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[TurmaAluno] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[ListaPresenca] TO [ANA\Professor]
 
GRANT INSERT ON [dbo].[ListaPresenca] TO [ANA\Professor]
 
GRANT REFERENCES ON [dbo].[ListaPresenca] TO [ANA\Professor]
 
GRANT SELECT ON [dbo].[ListaPresenca] TO [ANA\Professor]
 
GRANT UPDATE ON [dbo].[ListaPresenca] TO [ANA\Professor]
 
GRANT VIEW DEFINITION ON [dbo].[ListaPresenca] TO [ANA\Professor]
 
GRANT CONTROL ON [dbo].[ListaPresenca] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[ListaPresenca] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[ListaPresenca] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[ListaPresenca] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[ListaPresenca] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[ListaPresenca] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[VerificarListaPresenca] TO [ANA\Professor]
 
GRANT INSERT ON [dbo].[VerificarListaPresenca] TO [ANA\Professor]
 
GRANT REFERENCES ON [dbo].[VerificarListaPresenca] TO [ANA\Professor]
 
GRANT SELECT ON [dbo].[VerificarListaPresenca] TO [ANA\Professor]
 
GRANT UPDATE ON [dbo].[VerificarListaPresenca] TO [ANA\Professor]
 
GRANT VIEW DEFINITION ON [dbo].[VerificarListaPresenca] TO [ANA\Professor]
 
GRANT CONTROL ON [dbo].[VerificarListaPresenca] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[VerificarListaPresenca] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[VerificarListaPresenca] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[VerificarListaPresenca] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[VerificarListaPresenca] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[VerificarListaPresenca] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[Ne ciacaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[MensalidadesAlunosFiltro] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[MensalidadesFuncionariosFiltro] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[InscricaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[InscricaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[InscricaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[InscricaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[InscricaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[InscricaoAlunoFiltro] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Professor]
 
GRANT INSERT ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Professor]
 
GRANT REFERENCES ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Professor]
 
GRANT SELECT ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Professor]
  
GRANT UPDATE ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Professor]
 
GRANT VIEW DEFINITION ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Professor]
 
GRANT CONTROL ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[BoletinsAlunoFiltro] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[TurmasFiltro] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[TurmasFiltro] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[TurmasFiltro] TO [ANA\Secretario]
 
GRANT SELECT ON [dbo].[TurmasFiltro] TO [ANA\Secretario]
 
GRANT UPDATE ON [dbo].[TurmasFiltro] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[TurmasFiltro] TO [ANA\Secretario]
 
GRANT CONTROL ON [dbo].[InscricoesTurmasFiltro] TO [ANA\Secretario]
 
GRANT INSERT ON [dbo].[InscricoesTurmasFiltro] TO [ANA\Secretario]
 
GRANT REFERENCES ON [dbo].[InscricoesTurmasFiltro] TO [ANA\Secretario]

GRANT SELECT ON [dbo].[InscricoesTurmasFiltro] TO [ANA\Secretario]

GRANT UPDATE ON [dbo].[InscricoesTurmasFiltro] TO [ANA\Secretario]
 
GRANT VIEW DEFINITION ON [dbo].[InscricoesTurmasFiltro] TO [ANA\Secretario]

GRANT CONTROL ON [dbo].[ListaPresencaFiltro] TO [ANA\Professor]

GRANT INSERT ON [dbo].[ListaPresencaFiltro] TO [ANA\Professor]

GRANT REFERENCES ON [dbo].[ListaPresencaFiltro] TO [ANA\Professor]

GRANT SELECT ON [dbo].[ListaPresencaFiltro] TO [ANA\Professor]

GRANT UPDATE ON [dbo].[ListaPresencaFiltro] TO [ANA\Professor]

GRANT VIEW DEFINITION ON [dbo].[ListaPresencaFiltro] TO [ANA\Professor]

GRANT CONTROL ON [dbo].[ListaPresencaFiltro] TO [ANA\Secretario]

GRANT INSERT ON [dbo].[ListaPresencaFiltro] TO [ANA\Secretario]

GRANT REFERENCES ON [dbo].[ListaPresencaFiltro] TO [ANA\Secretario]

GRANT SELECT ON [dbo].[ListaPresencaFiltro] TO [ANA\Secretario]

GRANT UPDATE ON [dbo].[ListaPresencaFiltro] TO [ANA\Secretario]

GRANT VIEW DEFINITION ON [dbo].[ListaPresencaFiltro] TO [ANA\Secretario]