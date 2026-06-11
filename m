Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QjkIKGUnK2pA3QMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 23:23:49 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 082616756C0
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 23:23:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=psXey6Dw;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15B8540A3E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 11 Jun 2026 21:23:48 +0000 (UTC)
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	by lists.linaro.org (Postfix) with ESMTPS id F2C6F40A0A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 21:23:35 +0000 (UTC)
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2bf2247e38eso2926695ad.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 14:23:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781213015; x=1781817815; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pf4hM3mtMXeX14ohE4XQ1BSat2dxo+IW9rTwJbBXy14=;
        b=psXey6DwHi0v19+dFbvncRC3Ok8eIH8wVa23xenMDexOJzN2R6702kAWGdX82JcccV
         k9OmX6tg8LRb0c6b0liVY1ia0q3R4dqmzCPKh2qCfq07otQpGjZWQ8+zaKegAzA6tPrM
         FO3C/4PpCPm7wO5LEX20ADo7995+Pc6ZpH+VL5IjpO1ZFuHK6ZoVrUpnTAreag68lEfF
         wknW34hCgyjPub7Kcmev43dwvxTQUTuwKt+SVT9qcQ6nKK7pS79pk5Ul7WR5MDMrcu8p
         VcrHSSHcLrpi3VtEoifPo+iwx5U91iFoumgicrebq9DSsL1ocW7f7u0NmcIaszXUZjHG
         4TJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781213015; x=1781817815;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pf4hM3mtMXeX14ohE4XQ1BSat2dxo+IW9rTwJbBXy14=;
        b=qYkHhnkrQ/b4+frFyQGIgebs0vrka9wyE967NzC2UbJuI5j+SLKNtbLmV3cutxkvB3
         55OcBQaSCzqiOkpNw7SmAGZ7nz0gCejRvOwpXXUVkGbpg4uCB/XZ89zDClDBStq8+GiH
         zEMeCcKTFzOMBQZI0Is3SBsXJHOC3iAYIldPMBQUmr5m5Dna34kCLFo26Z8G6qtNRUOx
         y4Dgh9FrdVBhCXgd3jCEU91nPWLkCN7Wvp2EQZU/VC5nEaBXp3sxrSA6/vA/JuLcAJgY
         InDa4N0wZ1cv3hX5+6k0Nvq5fJK6qn68z7blVrtA0UxUjZ8K3mHe6O+zfHNjRyQAIZxV
         gO/Q==
X-Forwarded-Encrypted: i=1; AFNElJ9LmAfLCJ/m7P1/S8geNCcRdWD1RelJhUkIFfiLb7OXN/D1k1o2hkK50qByEYjIO71xEWROPvcD9W0Q3ua3@lists.linaro.org
X-Gm-Message-State: AOJu0YzbZxAgTpeOgVcmnByESo9GKj9TDw116Zibm2HxtxGcGyS/LHGP
	jIXWs60nRN47D5cXXlFyNooD0LT3L1MOv1EWZ96ouAnk4rNhMOIpYkf6
X-Gm-Gg: Acq92OF5NjJfYGGYhvgb5ZH5nnf7aeiKVcuaAIXo+K4eiwgYylfe0kkZDCYVm5aHzwN
	IucHuBHncY5rMwrqyxQS9I4Bjj1rqkqhuwhKWBnADnBrbzZNJHIAowvGKCKUeP8awLe+JP15qiI
	tH63y/DrAaFT0tlSjKwbtE7SmWaHQp7+9qq0YO15VluSGjo9o3GJz3Pw/GcGFix2//+DVDmRAGF
	6OIgr03UJGyjkok9fzxzrw6fjKlY910BN2VW4hxl98re3NTvoHOn+nUs4jIx2jR3UU7UhxrMXw7
	pViBrPC3bW20Bpnio6+iTRGr0j7HOsXmt32uXfnhUmyGwb7Rsb2tfhEPhQ2hjOnvHzWWjT8AP9j
	tRFr71A2O3yrL1Y00KUNUVhzimsC3ov27nDzucR7iUQ+GvIkcBCFU0gXgDVUREELK+Auj98/jLY
	SOBt8MmFC5Ij+WTFCm
X-Received: by 2002:a17:903:4b47:b0:2c1:98b7:ecf3 with SMTP id d9443c01a7336-2c41235e35cmr1293665ad.23.1781213014941;
        Thu, 11 Jun 2026 14:23:34 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:74::])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2c415173581sm347535ad.79.2026.06.11.14.23.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 14:23:34 -0700 (PDT)
Date: Thu, 11 Jun 2026 14:12:07 -0700
From: Stanislav Fomichev <sdf.kernel@gmail.com>
To: Bobby Eshleman <bobbyeshleman@gmail.com>
Message-ID: <aiskekd4GCLIhC0E@devvm7509.cco0.facebook.com>
References: <20260611-tcpdm-large-niovs-v2-0-ee2bf15e7523@meta.com>
 <20260611-tcpdm-large-niovs-v2-1-ee2bf15e7523@meta.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260611-tcpdm-large-niovs-v2-1-ee2bf15e7523@meta.com>
X-Spamd-Bar: ----
Message-ID-Hash: L6VWWNFZN3UIC4PTVVXLPWURVCGBYQMG
X-Message-ID-Hash: L6VWWNFZN3UIC4PTVVXLPWURVCGBYQMG
X-MailFrom: sdf.kernel@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 1/4] net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/L6VWWNFZN3UIC4PTVVXLPWURVCGBYQMG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sdfkernel@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[27];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,davemloft.net,google.com,redhat.com,lunn.ch,intel.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,fomichev.me,blackwall.org,iogearbox.net,davidwei.uk,meta.com];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sdfkernel@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devvm7509.cco0.facebook.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 082616756C0

On 06/11, Bobby Eshleman wrote:
> From: Bobby Eshleman <bobbyeshleman@meta.com>
> 
> Every devmem dmabuf binding today hands the page_pool PAGE_SIZE niovs.
> This caps a single RX descriptor at PAGE_SIZE, burning CPU on buffer
> churn for large flows.
> 
> Add a bind-time netlink attribute, NETDEV_A_DMABUF_RX_BUF_SIZE, that
> lets userspace request a larger niov size. The value must be a power of
> two >= PAGE_SIZE.
> 
> Measurements
> ------------
> Setup: kperf in devmem RX/TX cuda mode, 4 flows, 64 MB messages, 60s,
> dctcp, num-rx-queues=4, dmabuf-rx/tx-size-mb=2048, 10 runs per niov
> size, mlx5.
> 
> CPU Util:
> 
>    niov        net sirq %        net idle %         app sys %        app idle %
>   -----  ----------------  ----------------  ----------------  ----------------
>      4K   62.38 +/-  8.27   33.40 +/-  7.51   54.15 +/- 10.23   43.67 +/- 10.53
>     16K   58.91 +/-  5.35   35.23 +/-  5.88   41.05 +/-  8.87   56.42 +/-  9.24
>     32K   64.12 +/-  0.68   31.09 +/-  1.48   44.54 +/-  3.51   52.63 +/-  3.65
>     64K   54.69 +/-  5.54   39.67 +/-  5.81   35.47 +/-  3.11   61.97 +/-  3.27
> 
> RX app sys % drops ~19% from 4K to 64K.
> 
> Throughput:
> 
>    niov       RX dev Gbps   RX flow avg Gbps
>   -----  ----------------  -----------------
>      4K  300.63 +/- 53.21    75.16 +/- 13.30
>     16K  321.35 +/- 28.20    80.34 +/-  7.05
>     32K  347.63 +/-  2.20    86.91 +/-  0.55
>     64K  332.11 +/- 14.26    83.03 +/-  3.56
> 
> Throughput seems to increase, but the stdev is pretty wide so could just
> be noise.
> 
> kperf support (not yet merged):
> https://github.com/facebookexperimental/kperf/commit/8837577f920876bce6986ec18869ac04439ebcd2
> 
> Signed-off-by: Bobby Eshleman <bobbyeshleman@meta.com>
> ---
>  Documentation/netlink/specs/netdev.yaml |  8 ++++++
>  include/uapi/linux/netdev.h             |  1 +
>  net/core/devmem.c                       | 51 +++++++++++++++++++--------------
>  net/core/devmem.h                       | 13 ++++++---
>  net/core/netdev-genl-gen.c              |  5 ++--
>  net/core/netdev-genl.c                  | 19 ++++++++++--
>  tools/include/uapi/linux/netdev.h       |  1 +
>  7 files changed, 69 insertions(+), 29 deletions(-)
> 
> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> index 49862b666d7d..395eaa0f9580 100644
> --- a/Documentation/netlink/specs/netdev.yaml
> +++ b/Documentation/netlink/specs/netdev.yaml
> @@ -591,6 +591,13 @@ attribute-sets:
>          type: u32
>          checks:
>            min: 1
> +      -
> +        name: rx-buf-size
> +        doc: |
> +          Size in bytes of each RX buffer the NIC writes into from the bound
> +          dmabuf. Must be a power of two and >= PAGE_SIZE; defaults to
> +          PAGE_SIZE.
> +        type: u32
>  
>  operations:
>    list:
> @@ -805,6 +812,7 @@ operations:
>              - ifindex
>              - fd
>              - queues
> +            - rx-buf-size
>          reply:
>            attributes:
>              - id
> diff --git a/include/uapi/linux/netdev.h b/include/uapi/linux/netdev.h
> index 7df1056a35fd..180a4ffffd60 100644
> --- a/include/uapi/linux/netdev.h
> +++ b/include/uapi/linux/netdev.h
> @@ -217,6 +217,7 @@ enum {
>  	NETDEV_A_DMABUF_QUEUES,
>  	NETDEV_A_DMABUF_FD,
>  	NETDEV_A_DMABUF_ID,
> +	NETDEV_A_DMABUF_RX_BUF_SIZE,
>  
>  	__NETDEV_A_DMABUF_MAX,
>  	NETDEV_A_DMABUF_MAX = (__NETDEV_A_DMABUF_MAX - 1)
> diff --git a/net/core/devmem.c b/net/core/devmem.c
> index 957d6b96216b..3ce3cc14bec0 100644
> --- a/net/core/devmem.c
> +++ b/net/core/devmem.c
> @@ -46,7 +46,7 @@ static dma_addr_t net_devmem_get_dma_addr(const struct net_iov *niov)
>  
>  	owner = net_devmem_iov_to_chunk_owner(niov);
>  	return owner->base_dma_addr +
> -	       ((dma_addr_t)net_iov_idx(niov) << PAGE_SHIFT);
> +	       ((dma_addr_t)net_iov_idx(niov) << owner->binding->niov_shift);
>  }
>  
>  static void net_devmem_dmabuf_binding_release(struct percpu_ref *ref)
> @@ -93,13 +93,14 @@ net_devmem_alloc_dmabuf(struct net_devmem_dmabuf_binding *binding)
>  	ssize_t offset;
>  	ssize_t index;
>  
> -	dma_addr = gen_pool_alloc_owner(binding->chunk_pool, PAGE_SIZE,
> +	dma_addr = gen_pool_alloc_owner(binding->chunk_pool,
> +					1UL << binding->niov_shift,
>  					(void **)&owner);
>  	if (!dma_addr)
>  		return NULL;
>  
>  	offset = dma_addr - owner->base_dma_addr;
> -	index = offset / PAGE_SIZE;
> +	index = offset >> binding->niov_shift;
>  	niov = &owner->area.niovs[index];
>  
>  	niov->desc.pp_magic = 0;
> @@ -113,12 +114,13 @@ void net_devmem_free_dmabuf(struct net_iov *niov)
>  {
>  	struct net_devmem_dmabuf_binding *binding = net_devmem_iov_binding(niov);
>  	unsigned long dma_addr = net_devmem_get_dma_addr(niov);
> +	size_t niov_size = 1UL << binding->niov_shift;
>  
>  	if (WARN_ON(!gen_pool_has_addr(binding->chunk_pool, dma_addr,
> -				       PAGE_SIZE)))
> +				       niov_size)))
>  		return;
>  
> -	gen_pool_free(binding->chunk_pool, dma_addr, PAGE_SIZE);
> +	gen_pool_free(binding->chunk_pool, dma_addr, niov_size);
>  }
>  
>  void net_devmem_unbind_dmabuf(struct net_devmem_dmabuf_binding *binding)
> @@ -163,6 +165,9 @@ int net_devmem_bind_dmabuf_to_queue(struct net_device *dev, u32 rxq_idx,
>  	u32 xa_idx;
>  	int err;
>  
> +	if (binding->niov_shift != PAGE_SHIFT)
> +		mp_params.rx_page_size = 1U << binding->niov_shift;
> +
>  	err = netif_mp_open_rxq(dev, rxq_idx, &mp_params, extack);
>  	if (err)
>  		return err;
> @@ -184,14 +189,16 @@ struct net_devmem_dmabuf_binding *
>  net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  		       struct device *dma_dev,
>  		       enum dma_data_direction direction,
> -		       unsigned int dmabuf_fd, struct netdev_nl_sock *priv,
> +		       unsigned int dmabuf_fd, unsigned int niov_shift,
> +		       struct netdev_nl_sock *priv,
>  		       struct netlink_ext_ack *extack)
>  {
>  	struct net_devmem_dmabuf_binding *binding;
> +	size_t niov_size = 1UL << niov_shift;
>  	static u32 id_alloc_next;
> +	unsigned int sg_idx, i;
>  	struct scatterlist *sg;
>  	struct dma_buf *dmabuf;
> -	unsigned int sg_idx, i;
>  	unsigned long virtual;
>  	int err;
>  
> @@ -213,6 +220,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  
>  	binding->dev = dev;
>  	binding->vdev = vdev;
> +	binding->niov_shift = niov_shift;
>  	xa_init_flags(&binding->bound_rxqs, XA_FLAGS_ALLOC);
>  
>  	err = percpu_ref_init(&binding->ref,
> @@ -248,18 +256,14 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  			goto err_unmap;
>  		}
>  		binding->tx_vec = kvmalloc_objs(struct net_iov *,
> -						dmabuf->size / PAGE_SIZE);
> +						dmabuf->size >> niov_shift);
>  		if (!binding->tx_vec) {
>  			err = -ENOMEM;
>  			goto err_unmap;
>  		}
>  	}
>  
> -	/* For simplicity we expect to make PAGE_SIZE allocations, but the
> -	 * binding can be much more flexible than that. We may be able to
> -	 * allocate MTU sized chunks here. Leave that for future work...
> -	 */
> -	binding->chunk_pool = gen_pool_create(PAGE_SHIFT,
> +	binding->chunk_pool = gen_pool_create(niov_shift,
>  					      dev_to_node(&dev->dev));
>  	if (!binding->chunk_pool) {
>  		err = -ENOMEM;
> @@ -273,9 +277,12 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  		size_t len = sg_dma_len(sg);
>  		struct net_iov *niov;
>  
> -		if (!IS_ALIGNED(len, PAGE_SIZE)) {
> +		if (!IS_ALIGNED(dma_addr, niov_size) ||
> +		    !IS_ALIGNED(len, niov_size)) {
>  			err = -EINVAL;
> -			NL_SET_ERR_MSG(extack, "dma-buf SG length must be PAGE_SIZE aligned");
> +			NL_SET_ERR_MSG_FMT(extack,
> +					   "dmabuf sg entry (addr=%pad, len=%zu) not aligned to niov size %zu",
> +					   &dma_addr, len, niov_size);
>  			goto err_free_chunks;
>  		}
>  
> @@ -288,7 +295,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  
>  		owner->area.base_virtual = virtual;
>  		owner->base_dma_addr = dma_addr;
> -		owner->area.num_niovs = len / PAGE_SIZE;
> +		owner->area.num_niovs = len >> niov_shift;
>  		owner->binding = binding;
>  
>  		err = gen_pool_add_owner(binding->chunk_pool, dma_addr,
> @@ -313,7 +320,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  			page_pool_set_dma_addr_netmem(net_iov_to_netmem(niov),
>  						      net_devmem_get_dma_addr(niov));
>  			if (direction == DMA_TO_DEVICE)
> -				binding->tx_vec[owner->area.base_virtual / PAGE_SIZE + i] = niov;
> +				binding->tx_vec[(owner->area.base_virtual >> niov_shift) + i] = niov;
>  		}
>  
>  		virtual += len;
> @@ -430,13 +437,15 @@ struct net_iov *
>  net_devmem_get_niov_at(struct net_devmem_dmabuf_binding *binding,
>  		       size_t virt_addr, size_t *off, size_t *size)
>  {
> +	size_t niov_size = 1UL << binding->niov_shift;
> +
>  	if (virt_addr >= binding->dmabuf->size)
>  		return NULL;
>  
> -	*off = virt_addr % PAGE_SIZE;
> -	*size = PAGE_SIZE - *off;
> +	*off = virt_addr & (niov_size - 1);
> +	*size = niov_size - *off;
>  
> -	return binding->tx_vec[virt_addr / PAGE_SIZE];
> +	return binding->tx_vec[virt_addr >> binding->niov_shift];
>  }
>  
>  /*** "Dmabuf devmem memory provider" ***/
> @@ -454,7 +463,7 @@ int mp_dmabuf_devmem_init(struct page_pool *pool)
>  	pool->dma_sync = false;
>  	pool->dma_sync_for_cpu = false;
>  
> -	if (pool->p.order != 0)
> +	if (pool->p.order != binding->niov_shift - PAGE_SHIFT)
>  		return -E2BIG;
>  
>  	net_devmem_dmabuf_binding_get(binding);
> diff --git a/net/core/devmem.h b/net/core/devmem.h
> index 3852a56036cb..4a293a7d1149 100644
> --- a/net/core/devmem.h
> +++ b/net/core/devmem.h
> @@ -71,6 +71,8 @@ struct net_devmem_dmabuf_binding {
>  	 */
>  	struct net_iov **tx_vec;
>  
> +	unsigned int niov_shift;
> +
>  	struct work_struct unbind_w;
>  };
>  
> @@ -93,7 +95,8 @@ struct net_devmem_dmabuf_binding *
>  net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  		       struct device *dma_dev,
>  		       enum dma_data_direction direction,
> -		       unsigned int dmabuf_fd, struct netdev_nl_sock *priv,
> +		       unsigned int dmabuf_fd, unsigned int niov_shift,
> +		       struct netdev_nl_sock *priv,
>  		       struct netlink_ext_ack *extack);
>  struct net_devmem_dmabuf_binding *net_devmem_lookup_dmabuf(u32 id);
>  void net_devmem_unbind_dmabuf(struct net_devmem_dmabuf_binding *binding);
> @@ -122,10 +125,11 @@ static inline u32 net_devmem_iov_binding_id(const struct net_iov *niov)
>  
>  static inline unsigned long net_iov_virtual_addr(const struct net_iov *niov)
>  {
> -	struct net_iov_area *owner = net_iov_owner(niov);
> +	struct dmabuf_genpool_chunk_owner *co =
> +		net_devmem_iov_to_chunk_owner(niov);
>  
> -	return owner->base_virtual +
> -	       ((unsigned long)net_iov_idx(niov) << PAGE_SHIFT);
> +	return net_iov_owner(niov)->base_virtual +
> +	       ((unsigned long)net_iov_idx(niov) << co->binding->niov_shift);
>  }
>  
>  static inline bool
> @@ -175,6 +179,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  		       struct device *dma_dev,
>  		       enum dma_data_direction direction,
>  		       unsigned int dmabuf_fd,
> +		       unsigned int niov_shift,
>  		       struct netdev_nl_sock *priv,
>  		       struct netlink_ext_ack *extack)
>  {
> diff --git a/net/core/netdev-genl-gen.c b/net/core/netdev-genl-gen.c
> index d18c89b5a6c7..447ed06d8c74 100644
> --- a/net/core/netdev-genl-gen.c
> +++ b/net/core/netdev-genl-gen.c
> @@ -106,10 +106,11 @@ static const struct nla_policy netdev_qstats_get_nl_policy[NETDEV_A_QSTATS_SCOPE
>  };
>  
>  /* NETDEV_CMD_BIND_RX - do */
> -static const struct nla_policy netdev_bind_rx_nl_policy[NETDEV_A_DMABUF_FD + 1] = {
> +static const struct nla_policy netdev_bind_rx_nl_policy[NETDEV_A_DMABUF_RX_BUF_SIZE + 1] = {
>  	[NETDEV_A_DMABUF_IFINDEX] = NLA_POLICY_MIN(NLA_U32, 1),
>  	[NETDEV_A_DMABUF_FD] = { .type = NLA_U32, },
>  	[NETDEV_A_DMABUF_QUEUES] = NLA_POLICY_NESTED(netdev_queue_id_nl_policy),
> +	[NETDEV_A_DMABUF_RX_BUF_SIZE] = { .type = NLA_U32, },
>  };
>  
>  /* NETDEV_CMD_NAPI_SET - do */
> @@ -219,7 +220,7 @@ static const struct genl_split_ops netdev_nl_ops[] = {
>  		.cmd		= NETDEV_CMD_BIND_RX,
>  		.doit		= netdev_nl_bind_rx_doit,
>  		.policy		= netdev_bind_rx_nl_policy,
> -		.maxattr	= NETDEV_A_DMABUF_FD,
> +		.maxattr	= NETDEV_A_DMABUF_RX_BUF_SIZE,
>  		.flags		= GENL_UNS_ADMIN_PERM | GENL_CMD_CAP_DO,
>  	},
>  	{
> diff --git a/net/core/netdev-genl.c b/net/core/netdev-genl.c
> index b4d48f3672a5..8709e9c94389 100644
> --- a/net/core/netdev-genl.c
> +++ b/net/core/netdev-genl.c
> @@ -1012,6 +1012,7 @@ int netdev_nl_bind_rx_doit(struct sk_buff *skb, struct genl_info *info)
>  {
>  	struct net_devmem_dmabuf_binding *binding;
>  	u32 ifindex, dmabuf_fd, rxq_idx;
> +	unsigned int niov_shift = PAGE_SHIFT;

nit: keep the Christmas tree? With that addressed:

Acked-by: Stanislav Fomichev <sdf@fomichev.me>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
