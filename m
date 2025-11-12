Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B2BC5030B
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Nov 2025 02:19:04 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0F1583F860
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 12 Nov 2025 01:19:03 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 228BB3F82D
	for <linaro-mm-sig@lists.linaro.org>; Wed, 12 Nov 2025 01:18:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=TLPc63+d;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 701A94048B;
	Wed, 12 Nov 2025 01:18:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B678C4CEF5;
	Wed, 12 Nov 2025 01:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762910330;
	bh=97xU45qdEBpW2fivb5PGMD/llcOzvONkpb6RqID0mCE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=TLPc63+dMvlBPnRfG3N925Xo9BAPQn4nhuvICt7vX/ogkcFEEN5FSjfLzWsafcs3B
	 GdGLo8ylkJMcxrzw6Z5FZjYEDnhTUV4BCC5ciI2Dg3rRy2pW1UTw+wzO58PyzHh5UD
	 Yiib+/YdGwGcgVHWYD3oDSt9AESHDpAGpZV5Odn0t7wEK7GmXVhwxO3IQEcKKIvpmQ
	 xFNI1jij7O84TF632Q+3tOuHvTo2QLvYzhtrsXvwRBzslAj3FMI/vvvORx8/g2xkIU
	 woBXRh6PHna01qzjnYUi+jWSguds+VpSYdCzIKALeSux0JOr2HiFoNcBpvdASddpVL
	 gt7o9OCHfd7KA==
Date: Tue, 11 Nov 2025 17:18:48 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Roger Quadros <rogerq@kernel.org>
Message-ID: <20251111171848.1a4c8c03@kernel.org>
In-Reply-To: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
References: <20251109-am65-cpsw-xdp-zc-v2-0-858f60a09d12@kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 228BB3F82D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	TAGGED_RCPT(0.00)[netdev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[ti.com,lunn.ch,davemloft.net,google.com,redhat.com,kernel.org,iogearbox.net,gmail.com,linaro.org,amd.com,fomichev.me,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: MEKNXEVX2S46XPQFGHOVW7MIDCZZPAXH
X-Message-ID-Hash: MEKNXEVX2S46XPQFGHOVW7MIDCZZPAXH
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Siddharth Vadapalli <s-vadapalli@ti.com>, Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Jesper Dangaard Brouer <hawk@kernel.org>, John Fastabend <john.fastabend@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Stanislav Fomichev <sdf@fomichev.me>, Simon Horman <horms@kernel.org>, srk@ti.com, Meghana Malladi <m-malladi@ti.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v2 0/7] net: ethernet: ti: am65-cpsw: add AF_XDP zero copy support
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MEKNXEVX2S46XPQFGHOVW7MIDCZZPAXH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 09 Nov 2025 23:37:50 +0200 Roger Quadros wrote:
> This series adds AF_XDP zero coppy support to am65-cpsw driver.
> 
> Tests were performed on AM62x-sk with xdpsock application [1].
> 
> A clear improvement is seen in 64 byte packets on Transmit (txonly)
> and receive (rxdrop).
> 1500 byte test seems to be limited by line rate (1G link) so no
> improvement seen there in packet rate. A test on higher speed link
> (or PHY-less setup) might be worthwile.
> 
> There is some issue during l2fwd with 64 byte packets and benchmark
> results show 0. This issue needs to be debugged further.
> A 512 byte l2fwd test result has been added to compare instead.

It appears that the drivers/net/ethernet/ti/am65-* files do not fall
under any MAINTAINERS entry. Please add one or extend the existing CPSW
entry as the first patch of the series.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
