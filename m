Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 146677EA5FC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 23:20:46 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A2AA40C81
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 13 Nov 2023 22:20:45 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id EB9C63F0D8
	for <linaro-mm-sig@lists.linaro.org>; Mon, 13 Nov 2023 22:20:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=H2oFoJ4J;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id A2A16CE1167;
	Mon, 13 Nov 2023 22:20:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75A0EC433C7;
	Mon, 13 Nov 2023 22:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699914024;
	bh=R+gas78q/rvPvc1kUH78XbnbTKo2Ls44dPUWBDGT9JY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=H2oFoJ4JwWcow7QQVGWT7o7+6BKqYDkBpd/F37ak0T9fnxswoa5dmcnZ++ryAbVv4
	 DMWx1dDwgEsJPFGxjLwOHexcnf4qA78WlQOdWo3YKehBb+iPvN8Yy8+5YkUDLvnhpL
	 yWNxMyN3aw1az9HCCuvrSQ2KVZN8aFkw9VJjD9cLDvNc2XSpkh4xojMkCUpLQiMu5R
	 9cdrKm4OC7qrZc32mLEQh9yYshy4htBQ9xO0ijTLRXQxUYqh6M0F+l9SBNMXPw1Dbk
	 sFKGfNDJI9vFFf9ahSFoa1LCKSEmgGMnY8pl5OEK/urBfuBOE8cRS+gLIkQb2T/GKi
	 qomBR0lIPTeAA==
Date: Mon, 13 Nov 2023 17:20:20 -0500
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231113172020.728cdf6a@kernel.org>
In-Reply-To: <CAHS8izMQQekAdkLF7eFHfwGJJ=LFmGLHpSpOYiQeLs96ByEK7w@mail.gmail.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-13-almasrymina@google.com>
	<20231110151335.38a1c6ec@kernel.org>
	<CAHS8izNFnE8RGgBhKzxhVoKXtXgZGVQCLSdm4_dWNeH9Gx-WDQ@mail.gmail.com>
	<20231110183556.2b7b7502@kernel.org>
	<CAHS8izMQQekAdkLF7eFHfwGJJ=LFmGLHpSpOYiQeLs96ByEK7w@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: EB9C63F0D8
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
	RCPT_COUNT_TWELVE(0.00)[23];
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
Message-ID-Hash: C2ADXFAMLO55LULRPTCIWGXTOTB4SQZX
X-Message-ID-Hash: C2ADXFAMLO55LULRPTCIWGXTOTB4SQZX
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Stanislav Fomichev <sdf@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 12/12] selftests: add ncdevmem, netcat for devmem TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/C2ADXFAMLO55LULRPTCIWGXTOTB4SQZX/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun, 12 Nov 2023 20:08:10 -0800 Mina Almasry wrote:
> 1. For (b), would it be OK to implement a very minimal version of
> queue_[stop|start]/queue_mem_[alloc|free], which I use for the sole
> purpose of reposting buffers to an individual queue, and then later
> whoever picks up your queue API effort (maybe me) extends the
> implementation to do the rest of the things you described in your
> email? If not, what is the minimal queue API I can implement and use
> for devmem TCP?

Any form of queue API is better than a temporary ndo.
IIUC it will not bubble up into uAPI in any way so we can extend/change
it later as needed.

> 2. Since this is adding ndo, do I need to implement the ndo for 2
> drivers or is GVE sufficient?

One driver is fine, especially if we're doing this instead of the reset
hack.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
