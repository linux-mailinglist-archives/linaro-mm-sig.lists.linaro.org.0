Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A06F979A8E9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 16:47:50 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A6CA73F003
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 11 Sep 2023 14:47:49 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 220CF3EE30
	for <linaro-mm-sig@lists.linaro.org>; Tue, 18 Jul 2023 18:21:02 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Pf57YBI3;
	spf=pass (lists.linaro.org: domain of dsahern@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=dsahern@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id B4FF9616B4;
	Tue, 18 Jul 2023 18:21:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53795C433C8;
	Tue, 18 Jul 2023 18:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689704461;
	bh=3FpetCvZbbcCl2/n3R3+Fi+awrw/7SJjS0am3/4WDVM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Pf57YBI319TjSa6UdgcJVOWOTlRAztiD3yo6PD8hehnt65sGwpA1/vT9ljpawxCW5
	 fMeHtFOrE123MsPIWNyokLRCZR87Ro5QZoioK+wC06wGF0s00mvFuQQAKz6jQtdH0h
	 mbq5e4/ZMJxcbt/7pdjAigRdAHIqMlD/cTA7hyNdzCCkfge9qJSS9TPfANUK/xfNq6
	 fL8/Pj/ihkWO/XwAv7J9G983bpRqTTCpKg1dZZrOVg1xFl12oojb3McruJqzldJVb2
	 mB5JfoqtrIkLnTjiPwjIfZYf8wvVAxq40FosgtpbIomeKTbQx3WE4Xfrbn/L9dgT/T
	 cozltHy/MCSDg==
Message-ID: <35f3ec37-11fe-19c8-9d6f-ae5a789843cb@kernel.org>
Date: Tue, 18 Jul 2023 12:20:59 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.13.0
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>, Jason Gunthorpe <jgg@ziepe.ca>
References: <20230710223304.1174642-1-almasrymina@google.com>
 <12393cd2-4b09-4956-fff0-93ef3929ee37@kernel.org>
 <CAHS8izNPTwtk+zN7XYt-+ycpT+47LMcRrYXYh=suTXCZQ6-rVQ@mail.gmail.com>
 <ZLbUpdNYvyvkD27P@ziepe.ca> <20230718111508.6f0b9a83@kernel.org>
From: David Ahern <dsahern@kernel.org>
In-Reply-To: <20230718111508.6f0b9a83@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 220CF3EE30
X-Spamd-Bar: ------
X-Spamd-Result: default: False [-6.40 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-2.90)[99.55%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[google.com,kernel.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,linaro.org,amd.com,davemloft.net,redhat.com,arndb.de,gmail.com];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.source.kernel.org:helo,dfw.source.kernel.org:rdns];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2]
X-MailFrom: dsahern@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: D4JWYBJ55T3FYCPGLXB2GOY6IN2NO3DP
X-Message-ID-Hash: D4JWYBJ55T3FYCPGLXB2GOY6IN2NO3DP
X-Mailman-Approved-At: Mon, 11 Sep 2023 14:44:45 +0000
CC: Mina Almasry <almasrymina@google.com>, Andy Lutomirski <luto@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, netdev@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH 00/10] Device Memory TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D4JWYBJ55T3FYCPGLXB2GOY6IN2NO3DP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 7/18/23 12:15 PM, Jakub Kicinski wrote:
> On Tue, 18 Jul 2023 15:06:29 -0300 Jason Gunthorpe wrote:
>> netlink feels like a weird API choice for that, in particular it would
>> be really wrong to somehow bind the lifecycle of a netlink object to a
>> process.
> 
> Netlink is the right API, life cycle of objects can be easily tied to
> a netlink socket.

That is an untuitive connection -- memory references, h/w queues, flow
steering should be tied to the datapath socket, not a control plane socket.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
