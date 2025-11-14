Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sEY+EU/94GlloAAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:31 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id EF44B4106DA
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 17:16:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E8CFA4108E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 15:16:29 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id A35713F75F
	for <linaro-mm-sig@lists.linaro.org>; Fri, 14 Nov 2025 10:33:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=HXyqydi2;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of horms@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=horms@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 194136017D;
	Fri, 14 Nov 2025 10:33:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC6D8C19421;
	Fri, 14 Nov 2025 10:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763116406;
	bh=b5OwkNMvy1x2IysaOqDsG57B8PQrzrGFhfkbSYYkR0A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HXyqydi2lZnpyrw0/0lR0YpZSKujyfxxMKaUGDtahDIfqEtu2IhKlYLGiFiNp099a
	 sH1MABdbFsTk8b/RExfQfa5+BE7oRzzP5rT4HX71LoLe5Jbkuz/7MW/Zbc6Dsok55P
	 z+7x6UlX0MPC63XsIdSkoq4y61m4hpV2b0iyrDAj3E8Z0BT8AbapSk9oqbvbpvm/Wc
	 3AadrhNV6gfNdF7zUvaFohO42kaQ3CoJX5cNic+oKWI8jI+RK0LEZ+TObjXOmFlbcq
	 XwbI/C1fqbXSa48xYujH5mxmAaTGqF4T4K6g1w3GW5s9VTnlRstsMNrB+pQUl0C0y9
	 d2C769XDAMMTA==
Date: Fri, 14 Nov 2025 10:33:19 +0000
From: Simon Horman <horms@kernel.org>
To: Meghana Malladi <m-malladi@ti.com>
Message-ID: <aRcFb-vsoLw24MbU@horms.kernel.org>
References: <20251111101523.3160680-1-m-malladi@ti.com>
 <20251111101523.3160680-6-m-malladi@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251111101523.3160680-6-m-malladi@ti.com>
X-Spamd-Bar: --
X-MailFrom: horms@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: G4XTA6EXCNYWHSG4PVNHLYN6UDI3TGX3
X-Message-ID-Hash: G4XTA6EXCNYWHSG4PVNHLYN6UDI3TGX3
X-Mailman-Approved-At: Thu, 16 Apr 2026 14:56:59 +0000
CC: namcao@linutronix.de, vadim.fedorenko@linux.dev, jacob.e.keller@intel.com, christian.koenig@amd.com, sumit.semwal@linaro.org, sdf@fomichev.me, john.fastabend@gmail.com, hawk@kernel.org, daniel@iogearbox.net, ast@kernel.org, pabeni@redhat.com, kuba@kernel.org, edumazet@google.com, davem@davemloft.net, andrew+netdev@lunn.ch, linaro-mm-sig@lists.linaro.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, srk@ti.com, Vignesh Raghavendra <vigneshr@ti.com>, Roger Quadros <rogerq@kernel.org>, danishanwar@ti.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v5 5/6] net: ti: icssg-prueth: Add AF_XDP zero copy for RX
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G4XTA6EXCNYWHSG4PVNHLYN6UDI3TGX3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [4.49 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	DATE_IN_PAST(1.00)[3676];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[27];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FREEMAIL_CC(0.00)[linutronix.de,linux.dev,intel.com,amd.com,linaro.org,fomichev.me,gmail.com,kernel.org,iogearbox.net,redhat.com,google.com,davemloft.net,lunn.ch,lists.linaro.org,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,ti.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[horms@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig,netdev];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_SPAM(0.00)[0.637];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,horms.kernel.org:mid]
X-Rspamd-Queue-Id: EF44B4106DA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Nov 11, 2025 at 03:45:22PM +0530, Meghana Malladi wrote:

...

> diff --git a/drivers/net/ethernet/ti/icssg/icssg_common.c b/drivers/net/ethernet/ti/icssg/icssg_common.c

...

> +static int prueth_dma_rx_push_mapped_zc(struct prueth_emac *emac,
> +					struct prueth_rx_chn *rx_chn,
> +					struct xdp_buff *xdp)
> +{
> +	struct net_device *ndev = emac->ndev;
> +	struct cppi5_host_desc_t *desc_rx;
> +	struct prueth_swdata *swdata;
> +	dma_addr_t desc_dma;
> +	dma_addr_t buf_dma;
> +	int buf_len;
> +
> +	buf_dma = xsk_buff_xdp_get_dma(xdp);
> +	desc_rx = k3_cppi_desc_pool_alloc(rx_chn->desc_pool);
> +	if (!desc_rx) {
> +		netdev_err(ndev, "rx push: failed to allocate descriptor\n");
> +		return -ENOMEM;
> +	}
> +	desc_dma = k3_cppi_desc_pool_virt2dma(rx_chn->desc_pool, desc_rx);
> +
> +	cppi5_hdesc_init(desc_rx, CPPI5_INFO0_HDESC_EPIB_PRESENT,
> +			 PRUETH_NAV_PS_DATA_SIZE);
> +	k3_udma_glue_rx_dma_to_cppi5_addr(rx_chn->rx_chn, &buf_dma);
> +	buf_len = xsk_pool_get_rx_frame_size(rx_chn->xsk_pool);
> +	cppi5_hdesc_attach_buf(desc_rx, buf_dma, buf_len, buf_dma, buf_len);
> +	swdata = cppi5_hdesc_get_swdata(desc_rx);
> +	swdata->type = PRUETH_SWDATA_XSK;
> +	swdata->data.xdp = xdp;
> +
> +	return k3_udma_glue_push_rx_chn(rx_chn->rx_chn, PRUETH_RX_FLOW_DATA,
> +					desc_rx, desc_dma);
> +
> +	return 0;

nit: The line above is dead code.

> +}

...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
