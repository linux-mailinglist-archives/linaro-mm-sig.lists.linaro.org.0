Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3A07E865F
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 00:17:17 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 11D8140C86
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Nov 2023 23:17:16 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id F312C40FC1
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Nov 2023 23:16:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iVuzaAhc;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id E3DB6B823C2;
	Fri, 10 Nov 2023 23:16:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D168C433C8;
	Fri, 10 Nov 2023 23:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658191;
	bh=lp6MUfcnlWg0MaE5+BDw4kORckYukPsXO/JArSSKHJ0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=iVuzaAhclFKl7LeZxL1NI8Ry5+2sm28Vs5NzEPoZdxbe3go12IaDJWLkU1qciBkSM
	 whBYgKfAUNPBSEhJE4QJ7XezrNh7jGDkV5xIkVM0WEaslaTziGDnt7EcXARHStWAV+
	 X6UvXOaaioy3gynvYEIjRXId9KFFQwsnC44K5pRX/XKXmzuJmcbveiUyk5oASlRWGl
	 kJorEGqFqwRuYuDjtmNfv3ReaToE+lgcd+/1MwmRx/qDbHlD4itRI3rUiLvAhgRsE6
	 /3K9PErcilfL1+yDjqcvhNbjPdvssNyP6Hk78Zm7WjFtgVSVlPYeMoU0i4fqtJVGeA
	 dQ6M9ylbMVj5Q==
Date: Fri, 10 Nov 2023 15:16:29 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231110151629.047b1389@kernel.org>
In-Reply-To: <20231106024413.2801438-4-almasrymina@google.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-4-almasrymina@google.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: F312C40FC1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.37 / 15.00];
	BAYES_HAM(-2.87)[99.45%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,lists.linaro.org,davemloft.net,google.com,redhat.com,kernel.org,linaro.org,arndb.de,gmail.com,amd.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: 5UH7FBEZ6Y7LAAFFQOINNYMI5RLFVWW2
X-Message-ID-Hash: 5UH7FBEZ6Y7LAAFFQOINNYMI5RLFVWW2
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Stanislav Fomichev <sdf@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 03/12] net: netdev netlink api to bind dma-buf to a net device
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/5UH7FBEZ6Y7LAAFFQOINNYMI5RLFVWW2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun,  5 Nov 2023 18:44:02 -0800 Mina Almasry wrote:
> +      -
> +        name: queues
> +        doc: receive queues to bind the dma-buf to.
> +        type: u32
> +        multi-attr: true

I think that you should throw in the queue type.
I know you made the op imply RX:

> +    -
> +      name: bind-rx

but if we decide to create a separate "type" for some magic 
queue type one day we'll have to ponder how to extend this API

IMHO queue should be identified by a <type, id> tuple, always.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
