Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id c8CUEqRJKWroTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:24 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE38668C0B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=NSF5VK9A;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D9DEC409A7
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:25:22 +0000 (UTC)
Received: from mail-pf1-f193.google.com (mail-pf1-f193.google.com [209.85.210.193])
	by lists.linaro.org (Postfix) with ESMTPS id 46164400FF
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 15:35:35 +0000 (UTC)
Received: by mail-pf1-f193.google.com with SMTP id d2e1a72fcca58-842848fd613so1616329b3a.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 08:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780673734; x=1781278534; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XoDRJzQHz7VdEkd5BqZ67I7g6IeSlqxM9mM4zX/QtD0=;
        b=NSF5VK9AtftNzz2uf1UuSHvdZXw9+fybxMy3wfPd+FUh/ogbc2FqTODXbP83rEyTl2
         7sE8BXzxpMLUSKcp4mMabyCuFRptPbD1O5x8K51S1YB5CKTHWm16PfL81qufdzLoY72B
         kBO1DWKkOPz9gtlglZuyBVjuZmGxeAm9MgP0V2XOe2Rjv6s+9CpYKwQELDUksnVPqCmt
         5NC9o5bV/eX7Ze7oiMlbyBjWDbJorUBGQiHRX6Is8SH7M8adXimxQQS/mUy7AtVDGGKs
         3eCw8m3o8zo+UqgujGT2so/1a8QOLRphAW92YTDVxRvp/gzwlj0tZlksxSs587wKx6Yq
         eZFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780673734; x=1781278534;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XoDRJzQHz7VdEkd5BqZ67I7g6IeSlqxM9mM4zX/QtD0=;
        b=AEy11ECwFjyyac+7/4ek121HIG9BftXcJWj06GmIMh/kTfmiiUiZTTWvIIwh29L5j6
         jZ6xREYhVwVX5XUdhh6sMoncK6rtqgvt+SmosTMEeAUq0aMdqBEkqL+rtualHfJ2MGZ9
         wGLaEVZ42oyPoUFF5+1HAhFVdULBHuxxvoQ2AXnJ3OV+WCjeJKNkFHGx6PgfJOC1zfoH
         ICbF9IMhCHNO5JI43aFcXc2TgGmKMm8rr57awmVjpkQRhilwkHjO9zv4RDogWuUWRSoI
         dVxPTbgmq1N+bcxOEVkY4JYmXGJwr1j3WS5BrGwQtVYbEA69CfPTk90pDnvZUYhca5k4
         a+cA==
X-Forwarded-Encrypted: i=1; AFNElJ/lIzwADUEeGog1YYLj7baol37UKOFw9IEQh9yEIKb9NlwqjE5s5h8zEjYVB5N/vzNP6mmv3zGD01aTqwj3@lists.linaro.org
X-Gm-Message-State: AOJu0YxdVh4prYMx/5Lg+nVgxZzJAKocA1rJYHpVRr4EbrzwQ9XkYZGb
	pqPoJ9ELDZPNHWr3TCmWIWZOMNkKnmPtdB68G2AT8qPU44sTzNnP/2er
X-Gm-Gg: Acq92OEHMSIsaux7T0qPYiL8WnLwMcB3uFApPQECRePVs8yvcG3OTAe10010D+GHrOm
	g3mck+4H8X1GLcVVvHCc1aUf+7MqOHiREJnmeo0unftXG9D1Pbi0c82j4wGCpjudozoQMArvNtk
	2ypNQxrOUvhAxIR2r1SRP1Z7svO8uEE9lERwLfG16OLMhf4pcVlbKmJKhjhyQ6KnigvrgQbMDL8
	GYiW6Y/Zaj+gEhi3A8o0WqD/SFeOYc/5wzv27qOIHauGDAgUCADFvREWqncXDbfQx+L69q2TQny
	76SLTYUnhYovBwSefxh8G0auvDDpLBvOwdxCJut1MDOyCCCVWEBdiAfpznqKiL2A4eNnQBmhWO/
	sVnOnjNzCApyLLZZaTJ19eBqS0ePQRQMpiGqQizC4T9AbMt2pBLGF4LYtImgwdR7o+q4AKGkxp3
	byoAzZNPIPnPFx12vOjc31CFDADCg=
X-Received: by 2002:a05:6a20:9383:b0:3a0:b781:4c80 with SMTP id adf61e73a8af0-3b4cccff825mr4945669637.4.1780673734235;
        Fri, 05 Jun 2026 08:35:34 -0700 (PDT)
Received: from localhost ([2a03:2880:2ff:57::])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c85df0a4afdsm10022248a12.19.2026.06.05.08.35.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Jun 2026 08:35:33 -0700 (PDT)
Date: Fri, 5 Jun 2026 08:33:04 -0700
From: Stanislav Fomichev <sdf.kernel@gmail.com>
To: Bobby Eshleman <bobbyeshleman@gmail.com>
Message-ID: <aiLrsLM8N0VzrNMe@devvm7509.cco0.facebook.com>
References: <20260603-tcpdm-large-niovs-v1-0-f37a4ac6726c@meta.com>
 <20260603-tcpdm-large-niovs-v1-1-f37a4ac6726c@meta.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260603-tcpdm-large-niovs-v1-1-f37a4ac6726c@meta.com>
X-Spamd-Bar: ----
X-MailFrom: sdf.kernel@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YJIRB5FNNADDM75SHOTATCZHLZJZ5V3H
X-Message-ID-Hash: YJIRB5FNNADDM75SHOTATCZHLZJZ5V3H
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:31 +0000
CC: Donald Hunter <donald.hunter@gmail.com>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew+netdev@lunn.ch>, Gerd Hoffmann <kraxel@redhat.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shuah Khan <shuah@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kselftest@vger.kernel.org, sdf@fomichev.me, razor@blackwall.org, daniel@iogearbox.net, almasrymina@google.com, matttbe@kernel.org, skhawaja@google.com, dw@davidwei.uk, Bobby Eshleman <bobbyeshleman@meta.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next 1/4] net: devmem: allow rx-buf-size > PAGE_SIZE per dmabuf binding
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YJIRB5FNNADDM75SHOTATCZHLZJZ5V3H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.09 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[115];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:bobbyeshleman@gmail.com,m:donald.hunter@gmail.com,m:kuba@kernel.org,m:davem@davemloft.net,m:edumazet@google.com,m:pabeni@redhat.com,m:horms@kernel.org,m:andrew+netdev@lunn.ch,m:kraxel@redhat.com,m:vivek.kasireddy@intel.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:shuah@kernel.org,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kselftest@vger.kernel.org,m:sdf@fomichev.me,m:razor@blackwall.org,m:daniel@iogearbox.net,m:almasrymina@google.com,m:matttbe@kernel.org,m:skhawaja@google.com,m:dw@davidwei.uk,m:bobbyeshleman@meta.com,m:donaldhunter@gmail.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sdfkernel@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,meta.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BAE38668C0B

On 06/03, Bobby Eshleman wrote:
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
>  Documentation/netlink/specs/netdev.yaml |  8 +++++
>  include/uapi/linux/netdev.h             |  1 +
>  net/core/devmem.c                       | 52 +++++++++++++++++++--------------
>  net/core/devmem.h                       | 13 ++++++---
>  net/core/netdev-genl-gen.c              |  5 ++--
>  net/core/netdev-genl.c                  | 18 ++++++++++--
>  tools/include/uapi/linux/netdev.h       |  1 +
>  7 files changed, 68 insertions(+), 30 deletions(-)
> 
> diff --git a/Documentation/netlink/specs/netdev.yaml b/Documentation/netlink/specs/netdev.yaml
> index a1f4c5a561e9..063119907983 100644
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
> index 957d6b96216b..5a1c0d7984a8 100644
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
> @@ -273,9 +277,11 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  		size_t len = sg_dma_len(sg);
>  		struct net_iov *niov;
>  
> -		if (!IS_ALIGNED(len, PAGE_SIZE)) {
> +		if (!IS_ALIGNED(dma_addr, niov_size) ||
> +		    !IS_ALIGNED(len, niov_size)) {
>  			err = -EINVAL;
> -			NL_SET_ERR_MSG(extack, "dma-buf SG length must be PAGE_SIZE aligned");
> +			NL_SET_ERR_MSG(extack,
> +				       "dmabuf sg entry not aligned to niov size");

nit: should we NL_SET_ERR_MSG_FMT here and export chunk len and expected
alignment?

>  			goto err_free_chunks;
>  		}
>  
> @@ -288,7 +294,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  
>  		owner->area.base_virtual = virtual;
>  		owner->base_dma_addr = dma_addr;
> -		owner->area.num_niovs = len / PAGE_SIZE;
> +		owner->area.num_niovs = len >> niov_shift;
>  		owner->binding = binding;
>  
>  		err = gen_pool_add_owner(binding->chunk_pool, dma_addr,
> @@ -313,7 +319,7 @@ net_devmem_bind_dmabuf(struct net_device *dev, void *vdev,
>  			page_pool_set_dma_addr_netmem(net_iov_to_netmem(niov),
>  						      net_devmem_get_dma_addr(niov));
>  			if (direction == DMA_TO_DEVICE)
> -				binding->tx_vec[owner->area.base_virtual / PAGE_SIZE + i] = niov;
> +				binding->tx_vec[(owner->area.base_virtual >> niov_shift) + i] = niov;
>  		}
>  
>  		virtual += len;
> @@ -430,13 +436,15 @@ struct net_iov *
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
> @@ -454,8 +462,8 @@ int mp_dmabuf_devmem_init(struct page_pool *pool)
>  	pool->dma_sync = false;
>  	pool->dma_sync_for_cpu = false;
>  
> -	if (pool->p.order != 0)
> -		return -E2BIG;
> +	if (pool->p.order != binding->niov_shift - PAGE_SHIFT)
> +		return -EINVAL;

Any specific reason you change E2BIG to EINVAL?
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
