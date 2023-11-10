Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C4E7E8670
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 00:17:36 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6892540FFB
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Nov 2023 23:17:35 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 2E95240FF7
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Nov 2023 23:17:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=IgPe1WP3;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 09ED8CE1299;
	Fri, 10 Nov 2023 23:17:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 22B48C433C7;
	Fri, 10 Nov 2023 23:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658232;
	bh=DgVOmmZyh3PXIlWFtVjMUaKArXLuCBtm1eqxE6u0RQs=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=IgPe1WP3NH7aJqiPGbFf01nnZ3S9WWaPDdxWlqeYzs9iaDXsoDvv2dqwKir3GxS/8
	 ovIfqe7IwZnmwI9MvJbsCTwHRj4470U3s09zOeVzdZc/YZ2sZAar9hq9ndnbCwoiF8
	 KPicEYVkTbWf2SWOfHTrvLpJWh7+lddI4LXveik/S0m5YQEgD8OwusdxvhMnijrwp3
	 QbeMiiInT7XxDlesibExVQDmqs0ZhzwtrM7mq3HcqWj+OtiNDqLoDWk/RiwPdsfMrP
	 +fEJD6tHAp1grxD54ay+pE7B6chuXtshliijsxPD1JgQiX16WMoSN6FtvZ78OGNuwC
	 //C01sLxUSBsQ==
Date: Fri, 10 Nov 2023 15:17:10 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Stanislav Fomichev <sdf@google.com>
Message-ID: <20231110151710.2ceded75@kernel.org>
In-Reply-To: <ZUq42Po1Pn-9QxrM@google.com>
References: <CAHS8izMaAhoae5ChnzO4gny1cYYnqV1cB8MC2cAF3eoyt+Sf4A@mail.gmail.com>
	<ZUlvzm24SA3YjirV@google.com>
	<CAHS8izMQ5Um_ScY0VgAjaEaT-hRh4tFoTgc6Xr9Tj5rEj0fijA@mail.gmail.com>
	<CAKH8qBsbh8qYxNHZ6111RQFFpNWbWZtg0LDXkn15xcsbAq4R6w@mail.gmail.com>
	<CAF=yD-+BuKXoVL8UF+No1s0TsHSzBTz7UrB1Djt_BrM74uLLcg@mail.gmail.com>
	<CAHS8izNxKHhW5uCqmfau6n3c18=hE3RXzA+ng5LEGiKj12nGcg@mail.gmail.com>
	<ZUmNk98LyO_Ntcy7@google.com>
	<CAHS8izNTDsHTahkd17zQVQnjzniZAk-dKNs-Mq0E4shdrXOJbg@mail.gmail.com>
	<ZUqms8QzQpfPQWyy@google.com>
	<CANn89iJNR8bYYBO92=f5_2hFoTK8+giH11o-7NHURoahwvV11w@mail.gmail.com>
	<ZUq42Po1Pn-9QxrM@google.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 2E95240FF7
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[google.com,gmail.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,davemloft.net,redhat.com,linaro.org,arndb.de,amd.com];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZF5HZKU4VM34IDEHU6M6EKCQQ5XIWX6W
X-Message-ID-Hash: ZF5HZKU4VM34IDEHU6M6EKCQQ5XIWX6W
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Eric Dumazet <edumazet@google.com>, Mina Almasry <almasrymina@google.com>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, David Ahern <dsahern@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Willem de Bruijn <willemb@google.com>, Kaiyuan Zhang <kaiyuanz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 09/12] net: add support for skbs with unreadable frags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZF5HZKU4VM34IDEHU6M6EKCQQ5XIWX6W/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 7 Nov 2023 14:23:20 -0800 Stanislav Fomichev wrote:
> Can we mark a socket as devmem-only? Do we have any use-case for those
> hybrid setups? Or, let me put it that way: do we expect API callers
> to handle both linear and non-linear cases correctly?
> As a consumer of the previous versions of these apis internally,
> I find all those corner cases confusing :-( Hence trying to understand
> whether we can make it a bit more rigid and properly defined upstream.

FWIW I'd also prefer to allow mixing. "Some NICs" can decide HDS
very flexibly, incl. landing full jumbo frames into the "headers".

There's no sender API today to signal how to mark the data for
selective landing,  but if Mina already has the rx side written 
to allow that...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
