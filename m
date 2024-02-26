Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1E5868490
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Feb 2024 00:18:54 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id C0B5A3EFF3
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 26 Feb 2024 23:18:53 +0000 (UTC)
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
	by lists.linaro.org (Postfix) with ESMTPS id 850273EFF3
	for <linaro-mm-sig@lists.linaro.org>; Mon, 26 Feb 2024 23:18:46 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=lunn.ch header.s=20171124 header.b=u2VJUnCp;
	spf=pass (lists.linaro.org: domain of andrew@lunn.ch designates 156.67.10.101 as permitted sender) smtp.mailfrom=andrew@lunn.ch;
	dmarc=pass (policy=none) header.from=lunn.ch
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=g2q7Y6j0wCGTV4GevQ+ES5smo37GThY91C78pWGmQpw=; b=u2VJUnCpWA24Cmf1fN0w3E962R
	QE/KINpYUHDTH1tnNo5Sb7+K7nSN43PB3mvL29YKQNOqOgSOVN0Vik49pUcyV0oGOPMDDPT8uYNJd
	eznc6DyK3pVvqndBP+0ptOD+lr/RzNqIHuy+azL7oUNwuRCT9svn11R4h8ZrYKdS9c4Q=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1rekFA-008lsR-HI; Tue, 27 Feb 2024 00:18:44 +0100
Date: Tue, 27 Feb 2024 00:18:44 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Julien Panis <jpanis@baylibre.com>
Message-ID: <e382df16-c78a-448d-b6d5-39a627b30652@lunn.ch>
References: <20240223-am65-cpsw-xdp-basic-v1-1-9f0b6cbda310@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240223-am65-cpsw-xdp-basic-v1-1-9f0b6cbda310@baylibre.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 850273EFF3
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.40 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lunn.ch,none];
	R_DKIM_ALLOW(-0.20)[lunn.ch:s=20171124];
	R_SPF_ALLOW(-0.20)[+mx];
	ONCE_RECEIVED(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RCPT_COUNT_TWELVE(0.00)[18];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:58222, ipnet:156.67.8.0/22, country:CH];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	FROM_EQ_ENVFROM(0.00)[];
	TAGGED_RCPT(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,armlinux.org.uk,iogearbox.net,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	DKIM_TRACE(0.00)[lunn.ch:+]
Message-ID-Hash: GJBSOOK3DQNPELRLOL2N7J5OLD76O7VN
X-Message-ID-Hash: GJBSOOK3DQNPELRLOL2N7J5OLD76O7VN
X-MailFrom: andrew@lunn.ch
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] net: ethernet: ti: am65-cpsw: Add minimal XDP support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GJBSOOK3DQNPELRLOL2N7J5OLD76O7VN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

> +static struct sk_buff *am65_cpsw_alloc_skb(struct net_device *ndev, unsigned int len)
> +{
> +	struct page *page;
> +	struct sk_buff *skb;
> +
> +	page = dev_alloc_pages(0);

You are likely to get better performance if you use the page_pool.

When FEC added XDP support, the first set of changes was to make use
of page_pool. That improved the drivers performance. Then XDP was
added on top. Maybe you can follow that pattern.

      Andrew
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
