Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id CD3B97EA5BF
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 23:11:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D7F2840D2B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 22:11:21 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 8E2CE3F0A5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Nov 2023 22:11:04 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=sh8VLAlu;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 65D4CB810B9;
	Mon, 13 Nov 2023 22:11:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73772C433C8;
	Mon, 13 Nov 2023 22:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699913462;
	bh=y8SvI32OK2xraWnJ4KYO59jDyKCSgMJ4BUaSyMs0sXQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=sh8VLAlu2TmvxYxt3GN/26B09B8wkV2+1djcwE8Do3NvbevLDLFLmcF4YsP/sCiHD
	 NW4TAVN2626qYqQZ9gcvgaKIoHkfVe+s2AWqXNrsu8Xl0AfBnF1Vd8JWmlqeVdBKOM
	 h2ru3fjERW2LWok5RGV9gkJxm2hnRvqjsTxAfYZyMO9A2PhTDH5PN+1t8UAu1SEGIZ
	 NOIR0ex6iou1GQEd1NFF2ucKqLJjr9mKhphshDQXzoqdPKJhBHReb0wsywTUyCOztx
	 tLE5Vxef0IOTcXVEzGS5tfTu8GIR8oCdjW0zUkV3ILeho4XhBy1idGuC8LO3I8aBdJ
	 yzLBad+6UuGBg==
Date: Mon, 13 Nov 2023 17:10:58 -0500
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231113171058.68973860@kernel.org>
In-Reply-To: <CAHS8izPKRh7ukRytXaweKcY_76sE7F_3s1sYVgsUXYGrypK93Q@mail.gmail.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-3-almasrymina@google.com>
	<20231110151907.023c61cd@kernel.org>
	<CAHS8izPKRh7ukRytXaweKcY_76sE7F_3s1sYVgsUXYGrypK93Q@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 8E2CE3F0A5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,davemloft.net,google.com,redhat.com,kernel.org,linaro.org,arndb.de,gmail.com,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: LS5HT37JGEA4U6GIWQJTLUKVG5MLKBMK
X-Message-ID-Hash: LS5HT37JGEA4U6GIWQJTLUKVG5MLKBMK
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 02/12] net: page_pool: create hooks for custom page providers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LS5HT37JGEA4U6GIWQJTLUKVG5MLKBMK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 12 Nov 2023 19:28:52 -0800 Mina Almasry wrote:
> My issue with this is that if the driver doesn't support dmabuf then
> the driver will accidentally use the pp backed by the dmabuf, allocate
> a page from it, then call page_address() on it or something, and
> crash.
> 
> Currently I avoid that by having the driver be responsible for picking
> up the dmabuf from the netdev_rx_queue and giving it to the page pool.
> What would be the appropriate way to check for driver support in the
> netlink API? Perhaps adding something to ndo_features_check?

We need some form of capabilities. I was expecting to add that as part
of the queue API. Either a new field in struct net_device or in ndos.
I tend to put static driver caps of this nature into ops.
See for instance .supported_ring_params in ethtool ops.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
