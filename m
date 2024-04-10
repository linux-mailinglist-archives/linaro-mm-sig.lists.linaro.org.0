Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CC5AE89F414
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 15:24:21 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 92D3E3F359
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Apr 2024 13:24:20 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 8A6843F359
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Apr 2024 13:24:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Eaok+4aH;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 59A7DCE286D;
	Wed, 10 Apr 2024 13:24:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 937DEC433C7;
	Wed, 10 Apr 2024 13:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712755453;
	bh=WNjHEnZYwyX9uPtDNGEk3WQ8G2R5IDZTvmlqm+KjAj0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Eaok+4aHCN8wUZsm/y/+J4rMX5hOhpAUn+GHi2BkviKOJj4O6qyRbFsHL0J9wQuCZ
	 560bix0pr3PEB/C9zVVqMNGYqnP4ZoKcqkWr1p2f+nFAGK8cJ7spiwTQOswhxqvExb
	 Ryx/qOriQaDG4VeHIrGx1qnyG/YSzsFgGkQWmBGyL4UaIR7rjlnyS7aLURSgStOPRY
	 SCieJNwJtB9OYFZ1/2Go6Ge3afIsIHlWx3mV25b1kHMwjmywQ6pefbCWzol/PP87Y/
	 P/+zK//v1smceidm0Nxh1TQiamFqM5w8nkfg9wUQRY2J0yhk0TLMGTRXQjBMLJpTLZ
	 4KB0dvQbOnRlg==
Date: Wed, 10 Apr 2024 06:24:11 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Julien Panis <jpanis@baylibre.com>
Message-ID: <20240410062411.1096c881@kernel.org>
In-Reply-To: <6f356fec-4384-4367-8812-a18b71156116@baylibre.com>
References: <20240223-am65-cpsw-xdp-basic-v8-0-f3421b58da09@baylibre.com>
	<20240223-am65-cpsw-xdp-basic-v8-2-f3421b58da09@baylibre.com>
	<20240409173948.66abe6fa@kernel.org>
	<6f356fec-4384-4367-8812-a18b71156116@baylibre.com>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 8A6843F359
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
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
Message-ID-Hash: FU6GBJ56NMSPMWYCCRHN3LFOPCIQF5Q3
X-Message-ID-Hash: FU6GBJ56NMSPMWYCCRHN3LFOPCIQF5Q3
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Russell King <linux@armlinux.org.uk>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Simon Horman <horms@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Ratheesh Kannoth <rkannoth@marvell.com>, Naveen Mamindlapalli <naveenm@marvell.com>, danishanwar@ti.com, yuehaibing@huawei.com, rogerq@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v8 2/3] net: ethernet: ti: Add desc_infos member to struct k3_cppi_desc_pool
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/FU6GBJ56NMSPMWYCCRHN3LFOPCIQF5Q3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 10 Apr 2024 10:36:16 +0200 Julien Panis wrote:
> Also, about mem alloc failures, shouldn't we free 'pool' on kstrdup_const()
> error at the beginning of k3_cppi_desc_pool_create_name() ?
> I mean, it's not visible in my patch but I now wonder if this was done
> properly even before I modify the file.

Yes, it uses managed memory (devm_*) but prueth (I didn't check other
callers) calls it from .ndo_open. So while not technically a full leak
we can accumulate infinite memory by repeatedly failing here :S
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
