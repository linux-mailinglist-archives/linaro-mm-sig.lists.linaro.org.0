Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id BC14D7E8655
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 00:16:34 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id CB62140FC1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Nov 2023 23:16:33 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id D391E40C74
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Nov 2023 23:16:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=uKGnaQ8a;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 786ADCE12C9;
	Fri, 10 Nov 2023 23:16:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82BE0C433C7;
	Fri, 10 Nov 2023 23:16:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658174;
	bh=fIaDoeAJ5wEfd3OqiFmAviiP1M+nZrBz6caAN+IfwHE=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=uKGnaQ8aeJx2XbhW1g+57sxckv/co5/lbVNdOgEwSz1N4reK/MBR/a2xSiC3RWOqB
	 JUf8rwg+LznxWD/D05rUgWqp79yZ5J24OYnBeNQ80xF1NgW8XnRrZ49vpYgv0B5fhn
	 YPwumFdi6/7Yx+B6iaK9vYj/3KWLgB4Yrui79+OAZxGfS6HTp6VojG8O1lUksc4NUE
	 B+lBm+9udQDqEM5gJ2Kc4WhGDwrZ+sVjwJ3+Jdvi5wAnmHXha2L0ZRVfLgR5Mt6/F7
	 NjlU/YhswwRu9H6tlY2W8scb81qY1j0UQ6J8URn3XvrJgCr2QAdIjXF11rw+yvn/B8
	 E4z+bIfKpc6Ww==
Date: Fri, 10 Nov 2023 15:16:12 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Paolo Abeni <pabeni@redhat.com>
Message-ID: <20231110151612.3dcca11d@kernel.org>
In-Reply-To: <3a1b5412bee202affc6a7cc74cd939e182b9a18e.camel@redhat.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-11-almasrymina@google.com>
	<ZUk0FGuJ28s1d9OX@google.com>
	<CAHS8izNFv7r6vqYR_TYqcCuDO61F+nnNMhsSu=DrYWSr3sVgrA@mail.gmail.com>
	<CAF=yD-+MFpO5Hdqn+Q9X54SBpgcBeJvKTRD53X2oM4s8uVqnAQ@mail.gmail.com>
	<ZUlp8XutSAScKs_0@google.com>
	<CAF=yD-JZ88j+44MYgX-=oYJngz4Z0zw6Y0V3nHXisZJtNu7q6A@mail.gmail.com>
	<3a1b5412bee202affc6a7cc74cd939e182b9a18e.camel@redhat.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D391E40C74
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.41 / 15.00];
	BAYES_HAM(-2.91)[99.60%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,google.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,davemloft.net,kernel.org,linaro.org,arndb.de,amd.com];
	TO_DN_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: GDJSBQ4Z7GNHK5GD3UN6ZOQYBFEI6FBT
X-Message-ID-Hash: GDJSBQ4Z7GNHK5GD3UN6ZOQYBFEI6FBT
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Stanislav Fomichev <sdf@google.com>, Mina Almasry <almasrymina@google.com>, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Willem de Bruijn <willemb@google.com>, Kaiyuan Zhang <kaiyuanz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 10/12] tcp: RX path for devmem TCP
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GDJSBQ4Z7GNHK5GD3UN6ZOQYBFEI6FBT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Thu, 09 Nov 2023 12:05:37 +0100 Paolo Abeni wrote:
> > I suppose we just disagree on the elegance of the API.
> 
> FWIW, I think sockopt +cmsg is the right API.

FWIW it's fine by me as well.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
