Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 2938F7E868D
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 00:20:12 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3A2AC41025
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Nov 2023 23:20:11 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id 29F3C40FF9
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Nov 2023 23:19:30 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=FDjbKuev;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id E4C78CE12C9;
	Fri, 10 Nov 2023 23:19:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 331F2C433C7;
	Fri, 10 Nov 2023 23:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658367;
	bh=D+rgNwHZFpDs1LpaDcMUKJtp1XBDNR7Hu4FLz0bimv4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=FDjbKuevYwRFaN7WqJiDyPcrz38e5pVS+0laeL9DKurWGRDRdfSwpTZs/VzXEjvKO
	 9tBIBivJzS/HT/aBBhOs1Eitx1ROi33polSHKhPdUhfXJs/KRZBwVj38e+ep4XOxRc
	 0MY4+VmQ01GV/DaAsRYQFTwUugAbj2jHi2457+QDbQM02Zc20AXSQOQinEwKfxR7wD
	 lq5PFgwJ5LlrBPb0cSVOokIG4tjQU+pvM4d6y44IukpqmQmWY5nct39+Pd6EmdMQqU
	 aYe/awKfSX6/oU3Ie9we+MqqDOmhixxE+tYE0fSupvBzkl8TP9R1/inb/7IzviezsQ
	 nLt7uJqnJfupQ==
Date: Fri, 10 Nov 2023 15:19:25 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231110151925.13d946d0@kernel.org>
In-Reply-To: <CAHS8izNTDsHTahkd17zQVQnjzniZAk-dKNs-Mq0E4shdrXOJbg@mail.gmail.com>
References: <ZUk03DhWxV-bOFJL@google.com>
	<19129763-6f74-4b04-8a5f-441255b76d34@kernel.org>
	<CAHS8izMrnVUfbbS=OcJ6JT9SZRRfZ2MC7UnggthpZT=zf2BGLA@mail.gmail.com>
	<ZUlhu4hlTaqR3CTh@google.com>
	<CAHS8izMaAhoae5ChnzO4gny1cYYnqV1cB8MC2cAF3eoyt+Sf4A@mail.gmail.com>
	<ZUlvzm24SA3YjirV@google.com>
	<CAHS8izMQ5Um_ScY0VgAjaEaT-hRh4tFoTgc6Xr9Tj5rEj0fijA@mail.gmail.com>
	<CAKH8qBsbh8qYxNHZ6111RQFFpNWbWZtg0LDXkn15xcsbAq4R6w@mail.gmail.com>
	<CAF=yD-+BuKXoVL8UF+No1s0TsHSzBTz7UrB1Djt_BrM74uLLcg@mail.gmail.com>
	<CAHS8izNxKHhW5uCqmfau6n3c18=hE3RXzA+ng5LEGiKj12nGcg@mail.gmail.com>
	<ZUmNk98LyO_Ntcy7@google.com>
	<CAHS8izNTDsHTahkd17zQVQnjzniZAk-dKNs-Mq0E4shdrXOJbg@mail.gmail.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 29F3C40FF9
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.41 / 15.00];
	BAYES_HAM(-2.91)[99.63%];
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
Message-ID-Hash: 2GDPFAIOHH52TVMJ2TJKOULUEEX4F44Q
X-Message-ID-Hash: 2GDPFAIOHH52TVMJ2TJKOULUEEX4F44Q
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Stanislav Fomichev <sdf@google.com>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, David Ahern <dsahern@kernel.org>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Willem de Bruijn <willemb@google.com>, Kaiyuan Zhang <kaiyuanz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 09/12] net: add support for skbs with unreadable frags
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/2GDPFAIOHH52TVMJ2TJKOULUEEX4F44Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Tue, 7 Nov 2023 11:53:22 -0800 Mina Almasry wrote:
> My bad on not including some docs about this. The next version should
> have the commit message beefed up to explain all this, or a docs
> patch.

Yes, please. Would be great to have the user facing interface well
explained under Documentation/
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
