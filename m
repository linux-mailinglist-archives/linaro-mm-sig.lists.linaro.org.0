Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id AB9E2759FEA
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jul 2023 22:37:09 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 79DBE43BC5
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jul 2023 20:37:08 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id A37813F1AA
	for <linaro-mm-sig@lists.linaro.org>; Wed, 19 Jul 2023 20:37:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=BuvyrT06;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2E170617CB;
	Wed, 19 Jul 2023 20:37:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2BE5C433C8;
	Wed, 19 Jul 2023 20:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689799021;
	bh=SL7k8eZ8nRbX0vwXOdVgFN2hRtqQGVAaTbvJqY57BEU=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=BuvyrT061YUMSD8cNtGfuZUYzuxPpFcZw8zFsExRkWlWUhjNMtWkE7mxb2izkRBZ9
	 O1WBwZ6bb8drf/uwk8Wa0VszOc7EqWwXPbEuhOssWsbLQP48hw/F10jMiOTwcXPOgD
	 EpO9kWXvGYiD9ZFJolRqG+ZSTPWbFE4Ak23jeb1eBfxk7yZCM9F9dl45vayuudNpRz
	 3lka10SYYniiqESB1Tx8VVwqa/QrJX4KG7lGdFRY2SN14mLkl0k9oEYjJU+zvtG0Cw
	 2AS37/gepyGO5pHewv4AQ8sUuKpeu8scpNrKlFO90A8Nl2c2rIgIuO1PaB2FBj01XT
	 CMknK6m3ulovw==
Date: Wed, 19 Jul 2023 13:36:59 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20230719133659.5529729e@kernel.org>
In-Reply-To: <CAHS8izPORN=r2-hzYSgN4s_Aoo2dnwoJXrU5Hu=43sb8zsWyhQ@mail.gmail.com>
References: <20230710223304.1174642-1-almasrymina@google.com>
	<12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
	<CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
	<ZLbUpdNYvyvkD27P@ziepe.ca>
	<20230718111508.6f0b9a83@kernel.org>
	<35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
	<20230718112940.2c126677@kernel.org>
	<eb34f812-a866-a1a3-9f9b-7d5054d17609@kernel.org>
	<20230718154503.0421b4cd@kernel.org>
	<CAHS8izPORN=r2-hzYSgN4s_Aoo2dnwoJXrU5Hu=43sb8zsWyhQ@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A37813F1AA
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.69 / 15.00];
	BAYES_HAM(-2.99)[99.94%];
	SUSPICIOUS_RECIPS(1.50)[];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_HI(-0.50)[139.178.84.217:from];
	RCVD_IN_DNSWL_MED(-0.20)[52.25.139.140:received];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_CC(0.00)[kernel.org,ziepe.ca,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,google.com,redhat.com,arndb.de,gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[]
Message-ID-Hash: QAEWYBFG6NS7R6BBGFDCSLHF7UPV25T5
X-Message-ID-Hash: QAEWYBFG6NS7R6BBGFDCSLHF7UPV25T5
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: David Ahern <dsahern@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QAEWYBFG6NS7R6BBGFDCSLHF7UPV25T5/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Wed, 19 Jul 2023 08:10:58 -0700 Mina Almasry wrote:
> From Jakub and David's comments it sounds (if I understood correctly),
> you'd like to tie the dma-buf bind/unbind functions to the lifetime of
> a netlink socket, rather than a struct file like I was thinking. That
> does sound cleaner, but I'm not sure how. Can you link me to any
> existing code examples? Or rough pointers to any existing code?

I don't have a strong preference whether the lifetime is bound to 
the socket or not. My main point was that if we're binding lifetimes
to processes, it should be done via netlink sockets, not special-
-purpose FDs. Inevitably more commands and info will be needed and
we'll start reinventing the uAPI wheel which is Netlink.

Currently adding state to netlink sockets is a bit raw. You can create
an Xarray which stores the per socket state using socket's portid
(genl_info->snd_portid) and use netlink_register_notifier() to get
notifications when sockets are closed.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
