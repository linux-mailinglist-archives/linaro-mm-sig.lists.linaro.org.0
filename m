Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C047A75838A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 19:32:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 785B74413E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 18 Jul 2023 17:32:42 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 17D693EE30
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 17:32:37 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=idOxW7Wf;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=kuba@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 90637616A3;
	Tue, 18 Jul 2023 17:32:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B41EC433C8;
	Tue, 18 Jul 2023 17:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689701556;
	bh=5sr+yjwLVU6f+lqMOfWoGq5NUJvs6qsaMrWv5HRb0zE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=idOxW7Wfi/M22qWhbX0ZuMGzGLMpVBG26F9PGqW02cBDx+a8kPduaXPCNyv2gJLAO
	 YIOzIg2DhjzuNdLVitTUITjJC45H8l1WtTyq8YlyoDV2wLe9w+3JKxi6+JhB5+ZsKZ
	 9wq43VR+kOlkL3WhN7OM8HWIv3hpicw2TuPpxSe7Nbwo9qllmCwRpgp+ILSXD1jsQ3
	 LuBZYWJJMChc1JlbmkOyU1EVCZhj+II1qEFbMJMMf/l+EmZIulzA5dxUNwwo+q+91y
	 93fOXY6mg7tjd6adh1mHOcqT/q72z1++d3bJbyeWA/p6lEm9COrpwzKTq+VKWBFhOg
	 DU4JRoJhnIYPQ==
Date: Tue, 18 Jul 2023 10:32:34 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Andy Lutomirski <luto@kernel.org>
Message-ID: <20230718103234.711d7e4f@kernel.org>
In-Reply-To: <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
References: <20230710223304.1174642-1-almasrymina@google.com>
	<12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 17D693EE30
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,redhat.com,kernel.org,arndb.de,gmail.com,ziepe.ca];
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
Message-ID-Hash: QN5EVA2IMBUWSODAIXPOF4LNPDKM3Q2J
X-Message-ID-Hash: QN5EVA2IMBUWSODAIXPOF4LNPDKM3Q2J
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Mina Almasry <almasrymina@google.com>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, jgg@ziepe.ca
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QN5EVA2IMBUWSODAIXPOF4LNPDKM3Q2J/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 16 Jul 2023 19:41:28 -0700 Andy Lutomirski wrote:
> I'm wondering if a more capable if somewhat higher latency model could 
> work where the NIC stores received packets in its own device memory. 
> Then userspace (or the kernel or a driver or whatever) could initiate a 
> separate DMA from the NIC to the final target *after* reading the 
> headers.  Can the hardware support this?

No, no, that's impossible. SW response times are in 100s of usec (at
best) which at 200Gbps already means megabytes of data _per-queue_. 
Way more than the amount of buffer NICs will have.

The Rx application can bind to a IP addr + Port and then install
a one-sided-3-tuple (dst IP+proto+port) rule in the HW. Worst case
a full 5-tuple per flow.

Most NICs support OvS offloads with 100s of thousands of flows.
The steering should be bread and butter.

It does require splitting flows into separate data and control channels,
but it's the right trade-off - complexity should be on the SW side.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
