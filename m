Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 87B837E8860
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 03:36:22 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5299F3F204
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 02:36:21 +0000 (UTC)
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
	by lists.linaro.org (Postfix) with ESMTPS id 11C983F204
	for <linaro-mm-sig@lists.linaro.org>; Sat, 11 Nov 2023 02:36:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=ht9uExB8;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.68.75 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id EAB0AB82448;
	Sat, 11 Nov 2023 02:35:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75F08C433C7;
	Sat, 11 Nov 2023 02:35:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699670158;
	bh=gY+gv6FuH7IyPZd+GcBbaxMFJ8nyFzbRgSyvPpB8WHI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=ht9uExB8i5dnk2CmKBU1mVcjqsdrsD2ZgLZevr8N30eX0ZSAYboFGGKykaf+sSld7
	 CGIVo25CwHPZiytr+teiiIPuigIDo+JPIkQyvN5n3iPDUMIc9jsF0NZEo7e+fDs8hI
	 ztRuR71feWJhW6c3gOy9FbB8al83VwWsa2jI6RDs8vnryE62nP6YASRYhTa1kayr6w
	 Da1EO6WGh1FXrOMerj2O/J/S46xnJ+wZhJFsdyYR1y51fhNB5Bz4l+uQ9vxyzm9yki
	 rXMDshUoip7ZzimtjecJgZVPpXDWmdS8vodHd4gqw3Sf3ZLjfhV8IAAtpr5Xj5Edg8
	 N5/Cmof6uQUjA==
Date: Fri, 10 Nov 2023 18:35:56 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231110183556.2b7b7502@kernel.org>
In-Reply-To: <CAHS8izNFnE8RGgBhKzxhVoKXtXgZGVQCLSdm4_dWNeH9Gx-WDQ@mail.gmail.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-13-almasrymina@google.com>
	<20231110151335.38a1c6ec@kernel.org>
	<CAHS8izNFnE8RGgBhKzxhVoKXtXgZGVQCLSdm4_dWNeH9Gx-WDQ@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 11C983F204
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.68.75];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:145.40.68.0/24, country:US];
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
Message-ID-Hash: WESBE4RMYL64OO3KQDXHHR4V76WSDE42
X-Message-ID-Hash: WESBE4RMYL64OO3KQDXHHR4V76WSDE42
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Stanislav Fomichev <sdf@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 12/12] selftests: add ncdevmem, netcat for devmem TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WESBE4RMYL64OO3KQDXHHR4V76WSDE42/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Fri, 10 Nov 2023 18:27:08 -0800 Mina Almasry wrote:
> Thanks for the clear requirement. I clearly had something different in mind.
> 
> Might be dumb suggestions, but instead of creating a new ndo that we
> maybe end up wanting to deprecate once the queue API is ready, how
> about we use either of those existing APIs?
> 
> +void netdev_reset(struct net_device *dev)
> +{
> +       int flags = ETH_RESET_ALL;
> +       int err;
> +
> +#if 1
> +       __dev_close(dev);
> +       err = __dev_open(dev, NULL);
> +#else
> +       err = dev->ethtool_ops->reset(dev, &flags);
> +#endif
> +}
> +
> 
> I've tested both of these to work with GVE on both bind via the
> netlink API and unbind via the netlink socket close, but I'm not
> enough of an expert to tell if there is some bad side effect that can
> happen or something.

We generally don't accept drivers doing device reconfiguration with
full close() + open() because if the open() fails your machine 
may be cut off.

There are drivers which do it, but they are either old... or weren't
reviewed hard enough.

The driver should allocate memory and whether else it can without
stopping the queues first. Once it has all those, stop the queues,
reconfigure with already allocated resources, start queues, free old.

Even without the queue API in place, good drivers do full device
reconfig this way. Hence my mind goes towards a new (temporary?)
ndo. It will be replaced by the queue API, but whoever implements
it for now has to follow this careful reconfig strategy...
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
