---
layout: page
title: Configurações do módulo DocPay
---

#### Configurações do módulo DocPay  

<br>

Para efetuar a configuração do módulo DocPay, acesse o menu **Grupo Skill > DocPay > Configuração**.

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Menu Adept" src="/pages/sapb1/docpay_settings/GIF 1.gif" style="width: 80%;">
</div>

<br />

---

<br />

#### Opções de Configuração  

<br />

##### Cabeçalho

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Menu Adept" src="/pages/sapb1/docpay_settings/settings_header.png" style="width: 80%; height: 80%">
</div>

DocPay Key

    Campo para preenchimento da Hash de Configuração do DocPay 

<br />

Ambiente

    Seleção para informar se a base do SAP B1 é ambiente produtivo ou de homologação.
        Esta seleção determina para qual ambiente do DocPay será enviada a informação

<br />

Tipo de Captura

    Seleção para informar quando a informação será enviada ao DocPay
    * Não capturar dados para o DocPay
        Os dados não são enviados automaticamente para o DocPay, sendo necessário utilizar o botão Executar Ciclo
    * Após salvar dados de documentos do SAP B1
        Os dados serão enviados ao adicionar o documento/lançamento a partir do SAP B1. Esta opção não funciona com documentos/lançamentos inseridos pela DIAPI
    * Intervalos de captura de dados
        Os dados serão coletados e enviados de acordo com o tempo estipulado no campo Intervalo para Sincronismo

<br />

Intervalo para sincronismo

    Campo para selecionar o intervalo entre as capturas de dados

<br />

Conta do DocPay

    Informação da conta DocPay vinculado conforme a informação do campo DocPay Key

<br />

Database Id

    Identificação do banco de dados que é enviado ao DocPay

<br />

Botão Executar Ciclo

    Botão para iniciar manualmente o ciclo de captura e envio de informação para o DocPay

<br />

---

<br />

##### Boleto

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Boleto" src="/pages/sapb1/docpay_settings/settings_slip.png" style="width: 80%; height: 80%">
</div>

Data de Lançamento - A partir De

    Campo para informar a data de início do sincronismo
    O addon irá desconsiderar os documentos/lançamentos com data anterior ao informado.

<br />

Tipo de Data para Pagamento

    Seleção para informar qual data do arquivo de retorno será utilizada para o Contas a Receber  
    * Crédito
    * Ocorrência

<br />

Enviar apenas doctos c/ forma de pagamento boleto

    Ao ser marcado, o addon ignora os documentos onde a forma de pagamento vinculada não seja do tipo Boleto

<br />

Documentos a Capturar

    Marcação dos tipos de documentos do SAP que serão enviados para o DocPay.

<br />

---

<br />

##### Ordem de Pagamento

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Ordem Pagamento" src="/pages/sapb1/docpay_settings/settings_payment.png" style="width: 80%; height: 80%">
</div>

Data de Lançamento - A partir De

    Campo para informar a data de início do sincronismo
    O addon irá desconsiderar os documentos/lançamentos com data anterior ao informado.

<br />

Documentos a Capturar

> Marcação dos tipos de documentos do SAP que serão enviados para o DocPay.

<br />

---

<br />

##### Contas Contábeis

Para configuração das contas contábeis, clique na seta amarela do Tipo.

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Contas Contábeis" src="/pages/sapb1/docpay_settings/GIF 2.gif" style="width: 80%">
</div>

É possível parametrizar as contas contábeis utilizadas.

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Ordem Pagamento" src="/pages/sapb1/docpay_settings/settings_account.png" style="width: 50%; height: 50%">
</div>

Contas para Baixa: Conta de Desconto

    Campo para informar a conta contábil quando houver retorno na liquidação  
    O addon gerará um lançamento contábil com esta conta com o valor de desconto do arquivo de retorno.

<br />

Contas para Baixa: Conta de Juros

    Campo para informar a conta contábil quando houver retorno na liquidação  
    O addon gerará um lançamento contábil com esta conta com o valor de juros do arquivo de retorno.

<br />

Contas para Baixa: Conta de Multas

    Campo para informar a conta contábil quando houver retorno na liquidação  
    O addon gerará um lançamento contábil com esta conta com o valor de multa do arquivo de retorno.

<br />

Contas para Baixa: Conta de Tarifas

    Campo para informar a conta contábil quando houver retorno na liquidação  
    O addon gerará um lançamento contábil com esta conta com o valor de tarifa do arquivo de retorno.

<br />

Contas para Baixa: Centro de Custo

    Campo para informar o centro de custo que será utilizado  
    O addon informará o centro de custo na linha do lançamento contábil.

<br />

Contas para Baixa: Projeto

    Campo para informar o projeto que será utilizado  
    O addon informará o projeto na linha do lançamento contábil.

<br />

Contas para Renegociação: Conta de Desconto

    Campo para informar a conta contábil quando efetivar a renegociação  
    O addon gerará um lançamento contábil com esta conta com o valor de desconto preenchido na tela de renegociação.

<br />

Contas para Renegociação: Conta de Juros

    Campo para informar a conta contábil quando efetivar a renegociação  
    O addon gerará um lançamento contábil com esta conta com o valor de juros preenchido na tela de renegociação.
