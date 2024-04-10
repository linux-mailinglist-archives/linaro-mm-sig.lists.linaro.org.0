Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AA21A89E73D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 02:49:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 825C140B7D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 00:49:35 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id EE95740B7D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Apr 2024 00:49:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=N8L5XQ7U;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id D0275CE2444;
	Wed, 10 Apr 2024 00:49:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 246CAC433F1;
	Wed, 10 Apr 2024 00:49:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712710170;
	bh=4dQCSPVGdX7rBPcNynyhRW6/uaF2WhuiAp6auxw113o=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=N8L5XQ7Uyt1p7D86PM0X9FaE6vHZHDfNfuH9YFuO+/Jv+9nv0C8w2nqJoGRT5rWu8
	 j9BBJDcdPfGXM1lFTqzgL/VqFo1kuEcQFTHzbOJhPlyXc+ZiRpTQDK7XOFDQynMD7Y
	 cIH3sJPdfzwxouZTNEZN85j5odVTZPHNHqnG4NJHQCrYf4v86s+FxIe0Z2htkcO80N
	 hlOGZqLDF6eCcf0jGutD0n3JVP4DVNhd/gwuzZlV2h5qr7I809K7D9AGFj8ASa6uFL
	 Reh8saRGPvMjhqmzqhPTLpvcqEf2S2pVFao+QbNSfqtRvHU5lD4/2xyVvI2ci1kier
	 OwSq0tEYCqMUw==
Date: Tue, 9 Apr 2024 17:49:28 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Julien Panis <jpanis@baylibre.com>
Message-ID: <20240409174928.58a7c3f0@kernel.org>
In-Reply-To: <20240223-am65-cpsw-xdp-basic-v8-3-f3421b58da09@baylibre.com>
References: <20240223-am65-cpsw-xdp-basic-v8-0-f3421b58da09@baylibre.com>
	<20240223-am65-cpsw-xdp-basic-v8-3-f3421b58da09@baylibre.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: EE95740B7D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,redhat.com,armlinux.org.uk,kernel.org,iogearbox.net,gmail.com,linaro.org,amd.com,lunn.ch,marvell.com,ti.com,huawei.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: ZHGD2HG5PDGPQQERBAMLIM2VNLCNGPQO
X-Message-ID-Hash: ZHGD2HG5PDGPQQERBAMLIM2VNLCNGPQO
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Ratheesh Kannoth <rkannoth@marvell.com>, Naveen Mamindlapalli <naveenm@marvell.com>, danishanwar@ti.com, yuehaibing@huawei.com, rogerq@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v8 3/3] net: ethernet: ti: am65-cpsw: Add minimal XDP support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZHGD2HG5PDGPQQERBAMLIM2VNLCNGPQO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 08 Apr 2024 11:38:04 +0200 Julien Panis wrote:
> +static struct sk_buff *am65_cpsw_alloc_skb(struct am65_cpsw_rx_chn *rx_chn,
> +					   struct net_device *ndev,
> +					   unsigned int len,
> +					   int desc_idx,
> +					   bool allow_direct)
> +{
> +	struct sk_buff *skb;
> +	struct page *page;
> +
> +	page = page_pool_dev_alloc_pages(rx_chn->page_pool);
> +	if (unlikely(!page))
> +		return NULL;
> +
> +	len += AM65_CPSW_HEADROOM;
> +
> +	skb = build_skb(page_address(page), len);

You shouldn't build the skb upfront any more. Give the page to the HW,
once HW sends you a completion - build the skbs. If build fails
(allocation failure) just give the page back to HW. If it succeeds,
however, you'll get a skb which is far more likely to be cache hot.

> +	if (unlikely(!skb)) {
> +		page_pool_put_full_page(rx_chn->page_pool, page, allow_direct);
> +		rx_chn->pages[desc_idx] = NULL;
> +		return NULL;
> +	}
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
