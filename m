Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 9791A7584CE
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 20:29:49 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9E68E43F25
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 18:29:48 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id AFDB03F19D
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 18:29:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=W+I2qLxn;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 44F20616B6;
	Tue, 18 Jul 2023 18:29:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0789CC433C7;
	Tue, 18 Jul 2023 18:29:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689704981;
	bh=mZVev6Chb/FEkhGNNxmMJ4Z4XBKzCjBKm3JCVUTRO9w=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=W+I2qLxnV2nwCe87SLiOEw1Jweg0OeZD2j/yRxQDVNt+14Rkac1VIizQXx4i7k1N5
	 JJdwT1mpdkgkgjv+Ir/3tfmttDP0b6kit9SFW571v7DByXjGPkrXy8Ykc2SVE+anJm
	 3dswwmPZu1wb0OaUflN6gL8hAq2rntRM7gbj42WAHOUFfXQsunJ2AUzJr3XQJjpGZt
	 DTC4uKP7RBUU6jrpn+QuQlkeRHQZ5oSsJ9PyggwH7aPORRAfp1blBskG12UY7BpibD
	 RfIKKGf+dvfNZ5/X+eVvGF46ewYCWaMr/DK1htsGhNS0jcZe6MOxxl9FBOBiKVdvqK
	 Kwj+Z7IDVEvXw==
Date: Tue, 18 Jul 2023 11:29:40 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: David Ahern <dsahern@kernel.org>
Message-ID: <20230718112940.2c126677@kernel.org>
In-Reply-To: <35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
References: <20230710223304.1174642-1-almasrymina@google.com>
	<12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
	<CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
	<ZLbUpdNYvyvkD27P@ziepe.ca>
	<20230718111508.6f0b9a83@kernel.org>
	<35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: AFDB03F19D
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.45 / 15.00];
	BAYES_HAM(-2.95)[99.77%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	FREEMAIL_CC(0.00)[ziepe.ca,google.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,redhat.com,arndb.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_TWELVE(0.00)[21];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	ARC_NA(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: HFHLKWDV6PP7VIUGB2KYHMO2AEQITFLE
X-Message-ID-Hash: HFHLKWDV6PP7VIUGB2KYHMO2AEQITFLE
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jason Gunthorpe <jgg@ziepe.ca>, Mina Almasry <almasrymina@google.com>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HFHLKWDV6PP7VIUGB2KYHMO2AEQITFLE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 18 Jul 2023 12:20:59 -0600 David Ahern wrote:
> On 7/18/23 12:15 PM, Jakub Kicinski wrote:
> > On Tue, 18 Jul 2023 15:06:29 -0300 Jason Gunthorpe wrote:  
> >> netlink feels like a weird API choice for that, in particular it would
> >> be really wrong to somehow bind the lifecycle of a netlink object to a
> >> process.  
> > 
> > Netlink is the right API, life cycle of objects can be easily tied to
> > a netlink socket.  
> 
> That is an untuitive connection -- memory references, h/w queues, flow
> steering should be tied to the datapath socket, not a control plane socket.

There's one RSS context for may datapath sockets. Plus a lot of the
APIs already exist, and it's more of a question of packaging them up 
at the user space level. For things which do not have an API, however,
netlink, please.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
