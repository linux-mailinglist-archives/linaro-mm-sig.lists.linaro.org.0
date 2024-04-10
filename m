Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id D226089FAEC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 17:02:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B51353F359
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 15:02:29 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 277C33F359
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Apr 2024 15:02:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=gXma+fnC;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A754B61DF9;
	Wed, 10 Apr 2024 15:02:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2B563C43390;
	Wed, 10 Apr 2024 15:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712761347;
	bh=IOowjB6zmv7LWIIHnvL4MTPFjatrAlEyg+PbmUZJMpc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=gXma+fnCrP+8JcafhxFRa8FwqmzMRCM6LT9J47FvXt3BW8mZFWTBRpAU3xsGFCDQW
	 OjWGzbMYCxYOZme9arf3D++/Dj+aAjbdfiyEcrhamdQTpGekuevl5GpW2loZwGooQK
	 3f+jYvPaMLEQZ8FRE3npnk/eQiPY9X9Z+vh0zdFDOA7ZjVkL644A792E+F6KEMp51C
	 5098qAjwdTTAmTriGVmyjqlxkVyi2Dljg79fZ4aISlWHf5LzbC2UwzmHbvjpUgw4dO
	 Xvt2GRE9TR4FACx0cvbn8pTfnWDoxmG36K0J6sjNBr5yPAdybjZjnkXJWI8PQEmuIj
	 SSHZg/INvS7bQ==
Date: Wed, 10 Apr 2024 08:02:25 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Julien Panis <jpanis@baylibre.com>
Message-ID: <20240410080225.2e024f7c@kernel.org>
In-Reply-To: <9cb903df-3e83-409a-aa4b-218742804cc6@baylibre.com>
References: <20240223-am65-cpsw-xdp-basic-v8-0-f3421b58da09@baylibre.com>
	<20240223-am65-cpsw-xdp-basic-v8-3-f3421b58da09@baylibre.com>
	<20240409174928.58a7c3f0@kernel.org>
	<9cb903df-3e83-409a-aa4b-218742804cc6@baylibre.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 277C33F359
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
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
Message-ID-Hash: QUYEWWRTRYTZ5NUBLT7TKPQXHDUMUXKM
X-Message-ID-Hash: QUYEWWRTRYTZ5NUBLT7TKPQXHDUMUXKM
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Ratheesh Kannoth <rkannoth@marvell.com>, Naveen Mamindlapalli <naveenm@marvell.com>, danishanwar@ti.com, yuehaibing@huawei.com, rogerq@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v8 3/3] net: ethernet: ti: am65-cpsw: Add minimal XDP support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QUYEWWRTRYTZ5NUBLT7TKPQXHDUMUXKM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 10 Apr 2024 16:02:00 +0200 Julien Panis wrote:
> > You shouldn't build the skb upfront any more. Give the page to the HW,
> > once HW sends you a completion - build the skbs. If build fails
> > (allocation failure) just give the page back to HW. If it succeeds,
> > however, you'll get a skb which is far more likely to be cache hot.  
> 
> Not sure I get this point.
> 
> "Give the page to the HW" = Do you mean that I should dma_map_single()
> a full page (|PAGE_SIZE|) in am65_cpsw_nuss_rx_push() ?

Yes, I think so. I think that's what you effectively do now anyway,
you just limit the len and wrap it in an skb. But
am65_cpsw_nuss_rx_push() will effectively get that page back from
skb->data and map it.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
