Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id A126F8A4ECB
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Apr 2024 14:20:31 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7B32E3F0B5
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 15 Apr 2024 12:20:30 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id CD4603F0B5
	for <linaro-mm-sig@lists.linaro.org>; Mon, 15 Apr 2024 12:20:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=hIkhGTKU;
	dmarc=pass (policy=none) header.from=kernel.org;
	spf=pass (lists.linaro.org: domain of patchwork-bot+netdevbpf@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 53F9260C4E;
	Mon, 15 Apr 2024 12:20:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9473C2BD10;
	Mon, 15 Apr 2024 12:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713183628;
	bh=NBLdQ6XHX+11K1mLdHEWYrHqv/ezuPgqZrayiybzpQs=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=hIkhGTKUtioBSKnvXCwWJ171ZA9euy19Gg4PTb6Qd9ML6JlPtDCKW1A0VjrHZ2Zhu
	 Ds2PEui9OPeIFSkjCMDknnW+LPiowhJHWW3jFo8m0kAG2ei1IuLJT0kYYAMr8KcjXp
	 v4iCAqx9R9YW91vXPk2bYydjFL9EEWWiYi+tbEKjUgXCSUDjBHe5MwLrWERarW0AfI
	 lVsne17u1ThxkpsKXCl2kdcucdEpiX3cMy4rcqwf/A9u7fv/vqiDuppYSvhVY3Guuc
	 frmyBT7BTFywXdQQiYrkzUliTAv6Baw5LOKWJ41OdmrCupYLmii7V3+/vA/2ac18QZ
	 2riyRSvUuUvpw==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id D2442C43140;
	Mon, 15 Apr 2024 12:20:27 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <171318362785.9918.8890821177952945239.git-patchwork-notify@kernel.org>
Date: Mon, 15 Apr 2024 12:20:27 +0000
References: <20240223-am65-cpsw-xdp-basic-v9-0-2c194217e325@baylibre.com>
In-Reply-To: <20240223-am65-cpsw-xdp-basic-v9-0-2c194217e325@baylibre.com>
To: Julien Panis <jpanis@baylibre.com>
X-Rspamd-Queue-Id: CD4603F0B5
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TO_DN_SOME(0.00)[];
	FROM_NO_DN(0.00)[];
	TAGGED_RCPT(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[davemloft.net,google.com,kernel.org,redhat.com,armlinux.org.uk,iogearbox.net,gmail.com,linaro.org,amd.com,lunn.ch,marvell.com,intel.com,ti.com,huawei.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[netdevbpf];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: TK6E2TNPCQARVBZYN4BO4OIRADYEU3SK
X-Message-ID-Hash: TK6E2TNPCQARVBZYN4BO4OIRADYEU3SK
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: davem@davemloft.net, edumazet@google.com, kuba@kernel.org, pabeni@redhat.com, linux@armlinux.org.uk, ast@kernel.org, daniel@iogearbox.net, hawk@kernel.org, john.fastabend@gmail.com, sumit.semwal@linaro.org, christian.koenig@amd.com, horms@kernel.org, andrew@lunn.ch, rkannoth@marvell.com, naveenm@marvell.com, jacob.e.keller@intel.com, danishanwar@ti.com, yuehaibing@huawei.com, rogerq@kernel.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH net-next v9 0/3] Add minimal XDP support to TI AM65 CPSW Ethernet driver
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/SNZ4SC7HZJQRRBTYHBGEGCGAISZ77FIW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello:

This series was applied to netdev/net-next.git (main)
by David S. Miller <davem@davemloft.net>:

On Fri, 12 Apr 2024 17:38:31 +0200 you wrote:
> This patch adds XDP support to TI AM65 CPSW Ethernet driver.
> 
> The following features are implemented: NETDEV_XDP_ACT_BASIC,
> NETDEV_XDP_ACT_REDIRECT, and NETDEV_XDP_ACT_NDO_XMIT.
> 
> Zero-copy and non-linear XDP buffer supports are NOT implemented.
> 
> [...]

Here is the summary with links:
  - [net-next,v9,1/3] net: ethernet: ti: Add accessors for struct k3_cppi_desc_pool members
    https://git.kernel.org/netdev/net-next/c/cd8ff81f747f
  - [net-next,v9,2/3] net: ethernet: ti: Add desc_infos member to struct k3_cppi_desc_pool
    https://git.kernel.org/netdev/net-next/c/84d767a3c0b5
  - [net-next,v9,3/3] net: ethernet: ti: am65-cpsw: Add minimal XDP support
    https://git.kernel.org/netdev/net-next/c/8acacc40f733

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
