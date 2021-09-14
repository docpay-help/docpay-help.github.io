---
layout: page
title: Status de Ordem de Pagamento
---

#### Status de Ordem de Pagamento

<br>

As ordens de pagamento possuem os seguintes status:

- [Pré-cadastro](#pré-cadastro)
- [Aberta](#aberta)
- [Em remessa](#em-remessa)
- [Enviada](#enviada)
- [Agendada](#agendada)
- [Fechada](#fechada)
- [Rejeitada](#rejeitada)
- [Cancelada](#cancelada)
- [Em cancelamento](#em-cancelamento)

Os status seguem o fluxograma:

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Fluxograma" src="/pages/web/payment_order_status/fluxograma_status.png" style="width: 80%;">
</div>

<br>

<hr>

##### Pré-cadastro
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Pré-Cadastro" src="/pages/web/payment_order_status/status_pre_cadastro.png">
</div>

No status **Pré-cadastro** são identificadas as ordens de pagamento que foram integradas pelo sistema ERP e que não possuem todas as informações necessárias para transmissão ao banco.

Este status é inicial e utilizado somente quando possui uma integração entre o sistema ERP e o DocPay. Não é possível atualizar a ordem de pagamento para este status.

**Fluxo possível de status**
<br>
Pré-cadastro =\> Aberta
<br>
Pré-cadastro =\> Cancelada

<br>

<hr>

##### Aberta
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_aberta.png">
</div>

No status **Aberta** são identificadas as ordens de pagamento que possuem todas as informações necessárias para transmissão ao banco, porém não foram alocadas em um arquivo de remessa.

Este status é inicial quando é efetuado uma ordem de pagamento manual ou quando a ordem de pagamento integrada pelo sistema ERP possuir todas as informações necessárias para transmissão ao banco.

**Fluxo de status**
<br>
Aberta =\> Em remessa
<br>
Aberta =\> Cancelada

<br>

<hr>

##### Em remessa
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_em_remessa.png">
</div>

No status **Em remessa** são identificadas as ordens de pagamento que estão alocadas em um arquivo de remessa, porém o arquivo não foi gerado para transmissão ao banco.

A ordem de pagamento neste status permite a atualização para o status Aberta ao remover do arquivo de remessa.

**Fluxo de status**
<br>
Em remessa =\> Enviada
<br>
Em remessa =\> Aberta
<br>
Em remessa =\> Cancelada

<br>

<hr>

##### Enviada
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_enviada.png">
</div>

No status **Enviada** são identificadas as ordens de pagamento que estão em um arquivo de remessa gerado para transmissão ao banco, porém ainda não houve retorno.

A partir deste status não é permitido retornar manualmente para o status Aberta, necessitando de um retorno do banco para atualização do status.

**Fluxo de status**
<br>
Enviada =\> Agendada
<br>
Enviada =\> Rejeitada

<br>

<hr>

##### Agendada
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_agendada.png">
</div>

No status **Agendada** são identificadas as ordens de pagamento que o banco retornou com a inclusão.

No status Agendada, a ordem de pagamento fica ao aguardo da confirmação da operação pelo banco.

**Fluxo de status**
<br>
Enviada =\> Fechada
<br>
Enviada =\> Cancelada

<br>

<hr>

##### Fechada
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_fechada.png">
</div>

No status **Fechada** são identificadas as ordens de pagamento que o banco confirmou a operação bancária.

No status Fechada não é possível alterar o status da ordem de pagamento, e o comprovante de pagamento é habilitado.

<br>

<hr>

##### Rejeitada
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_rejeitada.png">
</div>

No status **Rejeitada** são identificadas as ordens de pagamento que o banco retornou com rejeição.

Este status é demonstrado ao clicar na seta "Ver mais situações" no canto superior esquerdo da barra de status.

No status Rejeitada, a ordem de pagamento precisa ser corrigida para retornar ao status Aberta ou deve ser cancelada.

**Fluxo de status**
<br>
Rejeitada =\> Aberta
<br>
Rejeitada =\> Cancelada

<br>

<hr>

##### Cancelada
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_cancelada.png">
</div>

No status **Cancelada** são identificadas as ordens de pagamento que foram canceladas.

Este status é demonstrado ao clicar na seta "Ver mais situações" no canto superior esquerdo da barra de status.

No status Cancelada não é possível alterar o status da ordem de pagamento, porém é habilitado o botão Duplicar para duplicar a ordem cancelada para uma nova ordem de pagamento.

<br>

<hr>

##### Em cancelamento
<div class="text-left" style="margin-bottom: 20px;"> 
  <img alt="Aberta" src="/pages/web/payment_order_status/status_em_cancelamento.png">
</div>

No status **Em cancelamento** são identificadas as ordens de pagamento que foram canceladas no ERP, porém estão com o status Enviada no DocPay.

Este status é demonstrado ao clicar na seta "Ver mais situações" no canto superior esquerdo da barra de status.

No status Em cancelamento, o DocPay irá aguardar o retorno bancário para identificar qual tratativa seguir com a ordem de pagamento, conforme fluxo abaixo:

<div class="text-center" style="margin-bottom: 20px;"> 
  <img alt="Fluxograma" src="/pages/web/payment_order_status/fluxograma_aguardando_cancelamento.png" style="width: 80%;">
</div>