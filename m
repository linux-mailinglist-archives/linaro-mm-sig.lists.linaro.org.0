Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BFA18892C69
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 30 Mar 2024 19:28:45 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 620DD40D48
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 30 Mar 2024 18:28:44 +0000 (UTC)
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk [78.32.30.218])
	by lists.linaro.org (Postfix) with ESMTPS id 54A8140D48
	for <linaro-mm-sig@lists.linaro.org>; Sat, 30 Mar 2024 18:28:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=armlinux.org.uk header.s=pandora-2019 header.b=BAnkdZ4A;
	dmarc=pass (policy=none) header.from=armlinux.org.uk;
	spf=none (lists.linaro.org: domain of "linux+linaro-mm-sig=lists.linaro.org@armlinux.org.uk" has no SPF policy when checking 78.32.30.218) smtp.mailfrom="linux+linaro-mm-sig=lists.linaro.org@armlinux.org.uk"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=eOnCxHAyWMBBmrA31QsaFBeo10V11qo0IeZKOpN/ZkM=; b=BAnkdZ4AFLsdBYGg9hDj/OEdIB
	HObTuni4MRaU0PoKGPwlAtjY0tYlpgMLsFmzRL9YBoCKEH4/UCV1r6pmG2mzAY1aIiAV9Q+foy27C
	boy059PfyozEJxNJqHg3sgu4C5/93MuWxmhCB1fjhjGh1VNCjAMBOant8uIDY71Hko6LEOMcxLo2P
	KbP1AdeFuiUfyH+2LBbzXz8ISCUCipZd1annA3RPugiN3Ip/gLoLS9PLceY2K/4+VJUekek/WeVM4
	UyW2Z62ifqdIt0MXXFnB86WFCTZCnunl8WR9zrxOb2rvUqRdZauSKtpT8SswQTMG0Q+DAMvpzZWq3
	7iet8kkA==;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:40144)
	by pandora.armlinux.org.uk with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <linux@armlinux.org.uk>)
	id 1rqdR9-00036h-00;
	Sat, 30 Mar 2024 18:28:15 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.94.2)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1rqdR4-0003rW-Hn; Sat, 30 Mar 2024 18:28:10 +0000
Date: Sat, 30 Mar 2024 18:28:10 +0000
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Naveen Mamindlapalli <naveenm@marvell.com>
Message-ID: <ZghZur10+3WvZnDu@shell.armlinux.org.uk>
References: <20240223-am65-cpsw-xdp-basic-v5-0-bc1739170bc6@baylibre.com>
 <20240223-am65-cpsw-xdp-basic-v5-1-bc1739170bc6@baylibre.com>
 <SJ2PR18MB5635B9F20BB6CE1CC945F3B2A23B2@SJ2PR18MB5635.namprd18.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <SJ2PR18MB5635B9F20BB6CE1CC945F3B2A23B2@SJ2PR18MB5635.namprd18.prod.outlook.com>
Sender: Russell King (Oracle) <linux@armlinux.org.uk>
X-Rspamd-Queue-Id: 54A8140D48
X-Spamd-Bar: -
X-Spamd-Result: default: False [-1.90 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[armlinux.org.uk,none];
	HFILTER_FROMHOST_NORESOLVE_MX(0.50)[dead.armlinux.org.uk];
	R_DKIM_ALLOW(-0.20)[armlinux.org.uk:s=pandora-2019];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[78.32.30.218:from];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,davemloft.net,google.com,kernel.org,redhat.com,iogearbox.net,gmail.com,linaro.org,amd.com,lunn.ch,marvell.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_FROM(0.00)[linaro-mm-sig=lists.linaro.org];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_SPF_NA(0.00)[no SPF record];
	DKIM_TRACE(0.00)[armlinux.org.uk:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:8468, ipnet:78.32.0.0/15, country:GB];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: YXLMD35MTETKN2MSCUNQRR6YDWIVGVXW
X-Message-ID-Hash: YXLMD35MTETKN2MSCUNQRR6YDWIVGVXW
X-MailFrom: linux+linaro-mm-sig=lists.linaro.org@armlinux.org.uk
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Julien Panis <jpanis@baylibre.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Ratheesh Kannoth <rkannoth@marvell.com>, "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "bpf@vger.kernel.org" <bpf@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linaro-mm-sig@lists.linaro.org" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v5 1/3] net: ethernet: ti: Add accessors for struct k3_cppi_desc_pool members
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YXLMD35MTETKN2MSCUNQRR6YDWIVGVXW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, Mar 28, 2024 at 12:06:56PM +0000, Naveen Mamindlapalli wrote:
> > diff --git a/drivers/net/ethernet/ti/k3-cppi-desc-pool.c b/drivers/net/ethernet/ti/k3-
> > cppi-desc-pool.c
> > index 05cc7aab1ec8..fe8203c05731 100644
> > --- a/drivers/net/ethernet/ti/k3-cppi-desc-pool.c
> > +++ b/drivers/net/ethernet/ti/k3-cppi-desc-pool.c
> > @@ -132,5 +132,17 @@ size_t k3_cppi_desc_pool_avail(struct
> > k3_cppi_desc_pool *pool)  }  EXPORT_SYMBOL_GPL(k3_cppi_desc_pool_avail);
> > 
> > +size_t k3_cppi_desc_pool_desc_size(struct k3_cppi_desc_pool *pool) {
> > +	return pool->desc_size;
> 
> Don't you need to add NULL check on pool ptr since this function is exported?

What bearing does exporting a function have on whether it should check
for NULL?

Given that this function returns size_t, it can't return an error
number. So what value would it return if "pool" were NULL? It can
only return a positive integer or zero.

Also, the argument should be const as the function doesn't modify the
contents of "pool".

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 80Mbps down 10Mbps up. Decent connectivity at last!
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
