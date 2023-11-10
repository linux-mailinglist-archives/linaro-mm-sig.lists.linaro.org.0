Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 237D77E8648
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 00:13:58 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D079441023
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Nov 2023 23:13:56 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id B784440C74
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Nov 2023 23:13:40 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="urs+N/fb";
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 0D6D4CE1736;
	Fri, 10 Nov 2023 23:13:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 311CFC433C8;
	Fri, 10 Nov 2023 23:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658017;
	bh=3kEmglIzeVKeC89qJz186In/g6MnNvWn/X0kBCEAmR0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=urs+N/fb0zYrePTt7BfGxDX3SlOzERDJqx1nVlvFB0bjm20DEIOtlngKpII5c8iUC
	 JA+a/PQoHqi7fbtMcF6+72fNv57rXF0fFdo9uGu4Ib4h2e/rh0hXSVpgxVOwgyaE18
	 ZOl47igkAtH6rUtgZzs1JZI9ZKl+tQln3SdK3zFqeuuKQSad1G2Qof0r6YqS5f+K/m
	 avCl0oRY/UckS2XaoWsLJL6GjlHYaQMA8DZIW6fJPMh3vDNg2oHIlMUpsvzmjp/Qf8
	 KlRCpaECHCkbwoKHIiku1cErTYNEclyDVpCghn5fmL2ME3UUxI7uHtCDyIvZ2t9Hq/
	 OtoukLeU9AnSw==
Date: Fri, 10 Nov 2023 15:13:35 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231110151335.38a1c6ec@kernel.org>
In-Reply-To: <20231106024413.2801438-13-almasrymina@google.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-13-almasrymina@google.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B784440C74
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
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
Message-ID-Hash: XI45YLXJ6ZR5MLK3RPXMSDH4DNY2KVW2
X-Message-ID-Hash: XI45YLXJ6ZR5MLK3RPXMSDH4DNY2KVW2
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Stanislav Fomichev <sdf@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 12/12] selftests: add ncdevmem, netcat for devmem TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XI45YLXJ6ZR5MLK3RPXMSDH4DNY2KVW2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

My brain is slightly fried after trying to catch up on the thread 
for close to 2h. So forgive me if I'm missing something.
This applies to all emails I'm about to send :)

On Sun,  5 Nov 2023 18:44:11 -0800 Mina Almasry wrote:
> +	trigger_device_reset();

The user space must not be responsible for the reset.
We can add some temporary "recreate page pools" ndo
until the queue API is ready. 

But it should not be visible to the user in any way.

And then the kernel can issue the same reset when the netlink 
socket dies to flush device free lists.

Maybe we should also add a "allow device/all-queues reload" flag 
to the netlink API to differentiate drivers which can't implement 
full queue API later on. We want to make sure the defaults work well 
in our "target design", rather than at the first stage. And target
design will reload queues one by one.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
