Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 430A2B04294
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Jul 2025 17:06:46 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 19A75447E2
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 14 Jul 2025 15:06:45 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 1F1E443C07
	for <linaro-mm-sig@lists.linaro.org>; Mon, 14 Jul 2025 15:06:33 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="asnmaG/H";
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A11E25C5AA9;
	Mon, 14 Jul 2025 15:06:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A92E4C4CEED;
	Mon, 14 Jul 2025 15:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752505592;
	bh=rZEwBG5xcYTfwrowVFDeZfsNzGHUEzr6KDrtWIj8qU4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=asnmaG/H6O1mKZurcswdFwsaHP/ZtxcpcKa1S/7hM4yz/H9VAF9G3XKmFUk5ExXXB
	 sB3nClYrxCawRcgzLPj+0UdHKzXXZnMULYu/24R14s52W4ApkV++qeZY374VzYAkA9
	 BlIFlWrn9ol+kogWbB2F3lWmJ+uRuF1fiLSfwgj/Gq13LtNvqnpBAumFfJnhFCntWR
	 T675lR9RoQxUuyq/rZlxUwl6JFCA0dNxL4WSXOMypmL2rvXowGJC25uBtlaz0F29Cq
	 7jnQZjBpgL1ohHEALsUymmQfK0mablSFKM/0eLLV1ozBk0RiJXFPiNIrF6pTeUa9AW
	 oyfBXFs+ISAQg==
Date: Mon, 14 Jul 2025 08:06:29 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: "Malladi, Meghana" <m-malladi@ti.com>
Message-ID: <20250714080629.29aa7a2d@kernel.org>
In-Reply-To: <268f6849-efc6-4663-af20-f6726bd4b78d@ti.com>
References: <20250520-am65-cpsw-xdp-zc-v1-0-45558024f566@kernel.org>
	<268f6849-efc6-4663-af20-f6726bd4b78d@ti.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1F1E443C07
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	DKIM_TRACE(0.00)[kernel.org:+];
	FREEMAIL_CC(0.00)[kernel.org,ti.com,lunn.ch,davemloft.net,google.com,redhat.com,iogearbox.net,gmail.com,linaro.org,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:15830, ipnet:139.178.80.0/21, country:NL];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	NEURAL_HAM(-0.00)[-1.000];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: 7ZNQB7PEL32RPTAGV7LXG6ZRCOSE5PNI
X-Message-ID-Hash: 7ZNQB7PEL32RPTAGV7LXG6ZRCOSE5PNI
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Roger Quadros <rogerq@kernel.org>, Siddharth Vadapalli <s-vadapalli@ti.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, srk@ti.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH RFC net-next 0/5] net: ethernet: ti: am65-cpsw: add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7ZNQB7PEL32RPTAGV7LXG6ZRCOSE5PNI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Mon, 14 Jul 2025 14:50:05 +0530 Malladi, Meghana wrote:
> > AF_XDP performance using 64 byte packets in Kpps.
> > Benchmark:	XDP-SKB		XDP-Native	XDP-Native(ZeroCopy)
> > rxdrop		317		504		824
> > txonly		400		405		757
> > l2fwd 		207		264		0
> > 
> > AF_XDP performance using 1500 byte packets in Kpps.
> > Benchmark:	XDP-SKB		XDP-Native	XDP-Native(ZeroCopy)
> > rxdrop		82		82		82
> > txonly		82		82		82
> > l2fwd 		82		82		82
> > 
> > [1]: https://github.com/xdp-project/bpf-examples/tree/master/AF_XDP-example
> > 
> > To:
> > 
> > Signed-off-by: Roger Quadros <rogerq@kernel.org>  
> 
> This series crashes Linux on am64xx-hsevm, when I tried nfs boot using 
> AM65-CPSW-NUSS driver:
> logs: 
> https://gist.github.com/MeghanaMalladiTI/d655a1c8ca88113ee7f5f57d6ab0ec4c
> 
> Seems like you have reverted the fix for the same bug which was reported 
> by Siddharth and fixed by Julien: 
> https://lore.kernel.org/all/7f7fb71a-6d15-46f1-b63c-b569a2e230b7@baylibre.com/
> 
> reverted lines:
> 		if (!common->ports[port].ndev)
> 		/* FIXME should we BUG here? */
> 			continue;
> 
> Can you please take a look at it.

Just to be clear -- you're reporting this problem to Roger so that its
fixed before the series is reposted? I don't see this in the tree, I
wanted to make sure it's not something I need to track as a regression.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
