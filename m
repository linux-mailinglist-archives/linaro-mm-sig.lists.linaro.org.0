Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C09457EA5E8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 23:17:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id BD61041223
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 22:17:45 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id D69063F0B9
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Nov 2023 22:17:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=pfTtVlCf;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3D750CE0918;
	Mon, 13 Nov 2023 22:17:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1ACAAC433C8;
	Mon, 13 Nov 2023 22:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699913845;
	bh=CxWQpMYa8YFxdmrO7alx+fTpOfQbmSEl3BDYj4zQHDQ=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=pfTtVlCfr2biHw2W2q09MzqRYOXyxULA1cvXKH7lJgKmOoBelavwg2NXMOeLV7RUo
	 hrZuG3PHE0z5OMU4LNRcYJVjk0cH2848YM8SF61BQovVnipqwkNu8pDfRo54FL/qed
	 /K+B+kMd4vlsDHBN45H7bcB4/VHCJY4WQK9LS2T0cMlbtHGDade5u1H98jC04pTWwN
	 KPdxdN8TpGk98s6qR3UTMZL77bOJSTg3QVyGaeJlKZR8wMv/V50rWPbz2j2fb7M3J8
	 gAhCxBNq7Y1mkkatFEdAbqH0WbqHrEMgjNWtPrunbYike0UbTQowc3cHZ7MmbWmELA
	 naKo5qrdJEm0Q==
Date: Mon, 13 Nov 2023 17:17:21 -0500
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231113171721.1a6731e6@kernel.org>
In-Reply-To: <CAHS8izN7MydkJPaHfj7Pw0V+xoDBkCmEVTc1TH24=hjXm98xnQ@mail.gmail.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-9-almasrymina@google.com>
	<20231110151935.0859fd7a@kernel.org>
	<CAHS8izN7MydkJPaHfj7Pw0V+xoDBkCmEVTc1TH24=hjXm98xnQ@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D69063F0B9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.33 / 15.00];
	BAYES_HAM(-2.83)[99.28%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
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
Message-ID-Hash: SGPP74M4SDPG77KDEKUZTDMTRISRM2PK
X-Message-ID-Hash: SGPP74M4SDPG77KDEKUZTDMTRISRM2PK
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 08/12] net: support non paged skb frags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SGPP74M4SDPG77KDEKUZTDMTRISRM2PK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 12 Nov 2023 22:05:30 -0800 Mina Almasry wrote:
> My issue here is that all these skb helpers call each other so I end
> up having to move a lot of the unrelated skb helpers to this new
> header (maybe that is acceptable but it feels weird).

Splitting pp headers again is not an option, we already split it into
types and helpers.

The series doesn't apply and it's a bit hard for me to, in between LPC
talks, figure out how to extract your patches from the GH UI to take a
proper look :(
We can defer this for now, and hopefully v4 will apply to net-next.
But it will need to get solved.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
