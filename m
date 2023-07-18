Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BF27588AC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 19 Jul 2023 00:45:13 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CAB8E43EEF
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 22:45:11 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 169E33F19D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 22:45:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=I7ocP0MT;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id AAB02612CF;
	Tue, 18 Jul 2023 22:45:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73956C433C9;
	Tue, 18 Jul 2023 22:45:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689720305;
	bh=QPRDZN417wjG3/qI9dDTrKSyuqoeFrA3S2sudllzHvw=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=I7ocP0MTAirrwG4O3BO3sgJtAZf1AJsUW77twR7BAnv8XpKWfEiykdbxMVfJitMQz
	 wsO9R5ARS30sZ610w8glfUqSp2ATk8XKuYDTOzbCrBdafDcnsXZAs1mURzqD6ROGQS
	 oC/bzDXWaeXLzVz14Pz2NEZwox6r1Jq4t4LrfLeMLvi2XoFw7Fyi4DlO0VaF4qdICI
	 BzPyOlM+XEviMn/WFmV6C00aKMV99Sqm/uyXjIqhbqAEJ8BLdzqi0fVaFTXzBJshI6
	 Zs4+zXH8p0XWCVCAu77Oj41p/FZCoid5iSNxgf4LxA128Zmt79ALiEDRVuAms9Zzam
	 lCnJHtFJp0Rqg==
Date: Tue, 18 Jul 2023 15:45:03 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: David Ahern <dsahern@kernel.org>
Message-ID: <20230718154503.0421b4cd@kernel.org>
In-Reply-To: <eb34f812-a866-a1a3-9f9b-7d5054d17609@kernel.org>
References: <20230710223304.1174642-1-almasrymina@google.com>
	<12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
	<CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
	<ZLbUpdNYvyvkD27P@ziepe.ca>
	<20230718111508.6f0b9a83@kernel.org>
	<35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
	<20230718112940.2c126677@kernel.org>
	<eb34f812-a866-a1a3-9f9b-7d5054d17609@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 169E33F19D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[ziepe.ca,google.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,redhat.com,arndb.de,gmail.com];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_ALL(0.00)[];
	ARC_NA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: V57F4QOB5BYYKF5NABFTZTNK3T6G6GK3
X-Message-ID-Hash: V57F4QOB5BYYKF5NABFTZTNK3T6G6GK3
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Mina Almasry <almasrymina@google.com>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V57F4QOB5BYYKF5NABFTZTNK3T6G6GK3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 18 Jul 2023 16:35:17 -0600 David Ahern wrote:
> I do not see how 1 RSS context (or more specifically a h/w Rx queue) can
> be used properly with memory from different processes (or dma-buf
> references). When the process dies, that memory needs to be flushed from
> the H/W queues. Queues with interlaced submissions make that more
> complicated.

Agreed, one process, one control path socket.

FWIW the rtnetlink use of netlink is very basic. genetlink already has
some infra which allows associate state with a user socket and cleaning
it up when the socket gets closed. This needs some improvements. A bit
of a chicken and egg problem, I can't make the improvements until there
are families making use of it, and nobody will make use of it until
it's in tree... But the basics are already in place and I can help with
building it out.

> I guess the devil is in the details; I look forward to the evolution of
> the patches.

+1
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
