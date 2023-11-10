Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAC37E865C
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 11 Nov 2023 00:16:57 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 09E8D40FF8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 10 Nov 2023 23:16:57 +0000 (UTC)
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
	by lists.linaro.org (Postfix) with ESMTPS id D589241020
	for <linaro-mm-sig@lists.linaro.org>; Fri, 10 Nov 2023 23:16:27 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="FTADZZ/9";
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of kuba@kernel.org designates 145.40.73.55 as permitted sender) smtp.mailfrom=kuba@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id C72B4CE16DE;
	Fri, 10 Nov 2023 23:16:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF495C433C7;
	Fri, 10 Nov 2023 23:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699658184;
	bh=Uzz0ofUN0GdWH6BIrAshYk7RdH6xgZcN3EjqeZ+1zb0=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=FTADZZ/90F/7qwZfq6DctzfUcvXxWTAoVgPB4JcKl+BMyH4buYHADpYZMdAzpAtq6
	 ZkpHYO/gp4t8yqM3oNbMpeyWBT8vky55ihaponMI0vdm/liYjSt1GC4uyn0V9FVaOt
	 Ci5+/YA/uVcx09vVsyYQ+9mkDz0IhRweb9Vvn0hs12m85umwqMGYXjdIZAPzcvHR87
	 dipszU5QLy7d/fMOLKUiMqv3+0GQX18SNrmWTTOFuVqonSUFbv2X5QLZ0jGlVpsiRR
	 /3/6wSoEMflLvU+dcVnsOv05+hwfMLIhOinjtDs49Ql7PYstp/ifr08J9Rtd/e0jlc
	 jJoJdqMU03YUQ==
Date: Fri, 10 Nov 2023 15:16:22 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Mina Almasry <almasrymina@google.com>
Message-ID: <20231110151622.2f45f618@kernel.org>
In-Reply-To: <20231106024413.2801438-7-almasrymina@google.com>
References: <20231106024413.2801438-1-almasrymina@google.com>
	<20231106024413.2801438-7-almasrymina@google.com>
MIME-Version: 1.0
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: D589241020
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:145.40.73.55:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:145.40.73.0/24, country:US];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
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
Message-ID-Hash: DT2DDRDPJOOEG5EPX32DJMOQTXR5XYAF
X-Message-ID-Hash: DT2DDRDPJOOEG5EPX32DJMOQTXR5XYAF
X-MailFrom: kuba@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: netdev@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Jesper Dangaard Brouer <hawk@kernel.org>, Ilias Apalodimas <ilias.apalodimas@linaro.org>, Arnd Bergmann <arnd@arndb.de>, David Ahern <dsahern@kernel.org>, Willem de Bruijn <willemdebruijn.kernel@gmail.com>, Shuah Khan <shuah@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, Shakeel Butt <shakeelb@google.com>, Jeroen de Borst <jeroendb@google.com>, Praveen Kaligineedi <pkaligineedi@google.com>, Willem de Bruijn <willemb@google.com>, Kaiyuan Zhang <kaiyuanz@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [RFC PATCH v3 06/12] memory-provider: dmabuf devmem memory provider
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DT2DDRDPJOOEG5EPX32DJMOQTXR5XYAF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On Sun,  5 Nov 2023 18:44:05 -0800 Mina Almasry wrote:
> +static int mp_dmabuf_devmem_init(struct page_pool *pool)
> +{
> +	struct netdev_dmabuf_binding *binding = pool->mp_priv;
> +
> +	if (!binding)
> +		return -EINVAL;
> +
> +	if (pool->p.flags & PP_FLAG_DMA_MAP ||
> +	    pool->p.flags & PP_FLAG_DMA_SYNC_DEV)
> +		return -EOPNOTSUPP;

This looks backwards, we should _force_ the driver to use the dma
mapping built into the page pool APIs, to isolate the driver from
how the DMA addr actually gets obtained. Right?

Maybe seeing driver patches would illuminate.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
