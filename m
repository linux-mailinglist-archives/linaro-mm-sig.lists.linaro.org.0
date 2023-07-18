Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E87758452
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 20:15:18 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5483543F25
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 18:15:17 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 85DAB3EE30
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 18:15:11 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=M2xJPN8N;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id E8ADC616A0;
	Tue, 18 Jul 2023 18:15:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB4D9C433C8;
	Tue, 18 Jul 2023 18:15:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689704110;
	bh=QH0xYXdTL5ojivjEzeCT3IU9wzvatahM/LtkztuvSTY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=M2xJPN8NkR7qyXSRJpzqMsqZ0hj4ofVwtTavhx3nB43D9hiF17Jgg0vUBjoG6GOyZ
	 NHkodP8ygOWRSS9EcGASWagCYZyhTXUHuYsu/CHwV0wazaWRQoZmVa0kpq7LXp2KEo
	 28do4tKMH65/CCglk9STCpu4TQbBi/e0ydhVmLGH3TWi1Je5kii3sUONcHdZqYy8U0
	 8duXFGfRsHj7lNVAeSuuI6a3XqyZcESPQZSAS3CRKS7mCfin+89r6P8xdnFUriaByd
	 /8tmr35CcRgdRHefUBhC2OWYDewm1En+PQlBGS0Xnera7dOX1hV4Lo/tGRsDCtGUpg
	 Kr8fgqNGjuE0g==
Date: Tue, 18 Jul 2023 11:15:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20230718111508.6f0b9a83@kernel.org>
In-Reply-To: <ZLbUpdNYvyvkD27P@ziepe.ca>
References: <20230710223304.1174642-1-almasrymina@google.com>
	<12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
	<CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
	<ZLbUpdNYvyvkD27P@ziepe.ca>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 85DAB3EE30
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.16 / 15.00];
	REPLY(-4.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	BAYES_HAM(-0.66)[82.78%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,redhat.com,arndb.de,gmail.com];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[21];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
Message-ID-Hash: V7KAWHJVNZLASFTML2O6ANDT7H4P42D3
X-Message-ID-Hash: V7KAWHJVNZLASFTML2O6ANDT7H4P42D3
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mina Almasry <almasrymina@google.com>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V7KAWHJVNZLASFTML2O6ANDT7H4P42D3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 18 Jul 2023 15:06:29 -0300 Jason Gunthorpe wrote:
> netlink feels like a weird API choice for that, in particular it would
> be really wrong to somehow bind the lifecycle of a netlink object to a
> process.

Netlink is the right API, life cycle of objects can be easily tied to
a netlink socket.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
