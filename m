Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 62038749EA3
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 16:10:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 758D43F095
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  6 Jul 2023 14:10:15 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 68EA93ECBF
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jun 2023 16:40:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=XGRGiORn;
	spf=pass (lists.linaro.org: domain of patchwork-bot+netdevbpf@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=none) header.from=kernel.org
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id BC0CE611F2;
	Tue, 27 Jun 2023 16:40:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8F0C433C9;
	Tue, 27 Jun 2023 16:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687884023;
	bh=Mddr9IEnVSSEtvey/EPFRhLi4YnxlTkalZzmHZ6bmJ8=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=XGRGiORnH0FmaQ+kclMjYIsE8aiZt7Gs4g5WBNw+zT0ASSus8daZkKZirfbcgaoBv
	 HsuO0nskJhLaiZxylU7zlINMijGNLl9q7WEg/ms3Lh/IrCmjj2LVp6pXCXh1uqP4W3
	 kOcx2VCa4pIOSzcMTF35giAc72J/A42BnFN7K4h/MvLUE7JXaOanngW1cFFib+5J4v
	 8N2ABirViOcrN32FYcrvP15sAv/TezaSVGJHU9rgp1d1sCUFbyUbMRRUsWjqDMoEYN
	 HlJlhL0V9YgQDqvmqEWLdtvBli6Q5b70JaJ8QNh8cP8DiB/xBCXlUB+GXHpoI+1ee3
	 oj4CRUwtvenNQ==
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
	by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 7B046C64458;
	Tue, 27 Jun 2023 16:40:23 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <168788402349.21860.17350888958370358926.git-patchwork-notify@kernel.org>
Date: Tue, 27 Jun 2023 16:40:23 +0000
References: <20230627144339.144478-1-Julia.Lawall@inria.fr>
In-Reply-To: <20230627144339.144478-1-Julia.Lawall@inria.fr>
To: Julia Lawall <julia.lawall@inria.fr>
X-Spamd-Result: default: False [-10.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	RCVD_IN_DNSWL_HI(-1.00)[52.25.139.140:received,139.178.84.217:from];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,none];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+a:dfw.source.kernel.org];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	TAGGED_FROM(0.00)[netdevbpf];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	RCVD_COUNT_THREE(0.00)[3];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,chromium.org,wanadoo.fr,kernel.org,googlegroups.com,gmail.com,google.com,lists.linux.dev,arm.com,nvidia.com,lists.linux-foundation.org,linux.alibaba.com,lists.linaro.org,redhat.com,codeaurora.org,collabora.com,lists.freedesktop.org,linux.intel.com,zytor.com]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 68EA93ECBF
X-Spamd-Bar: ---------
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 447AUAR2UTHPY323J37E6UCWX5GQ7LYF
X-Message-ID-Hash: 447AUAR2UTHPY323J37E6UCWX5GQ7LYF
X-Mailman-Approved-At: Thu, 06 Jul 2023 14:09:58 +0000
CC: linux-hyperv@vger.kernel.org, kernel-janitors@vger.kernel.org, keescook@chromium.org, christophe.jaillet@wanadoo.fr, kuba@kernel.org, kasan-dev@googlegroups.com, andreyknvl@gmail.com, dvyukov@google.com, iommu@lists.linux.dev, linux-tegra@vger.kernel.org, robin.murphy@arm.com, virtualization@lists.linux-foundation.org, xuanzhuo@linux.alibaba.com, linux-scsi@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, jstultz@google.com, Brian.Starkey@arm.com, labbott@redhat.com, lmark@codeaurora.org, benjamin.gaignard@collabora.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org, shailend@google.com, linux-rdma@vger.kernel.org, mhi@lists.linux.dev, linux-arm-msm@vger.kernel.org, linux-btrfs@vger.kernel.org, intel-gvt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, dave.hansen@linux.intel.com, hpa@zytor.com, linux-sgx@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 00/24] use vmalloc_array and vcalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IABDQGZWDPDPZWJWZNRUJJIYJIZL5FTV/>
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
by Jakub Kicinski <kuba@kernel.org>:

On Tue, 27 Jun 2023 16:43:15 +0200 you wrote:
> The functions vmalloc_array and vcalloc were introduced in
> 
> commit a8749a35c399 ("mm: vmalloc: introduce array allocation functions")
> 
> but are not used much yet.  This series introduces uses of
> these functions, to protect against multiplication overflows.
> 
> [...]

Here is the summary with links:
  - [v2,02/24] octeon_ep: use vmalloc_array and vcalloc
    https://git.kernel.org/netdev/net-next/c/32d462a5c3e5
  - [v2,04/24] gve: use vmalloc_array and vcalloc
    https://git.kernel.org/netdev/net-next/c/a13de901e8d5
  - [v2,09/24] pds_core: use vmalloc_array and vcalloc
    https://git.kernel.org/netdev/net-next/c/906a76cc7645
  - [v2,11/24] ionic: use vmalloc_array and vcalloc
    https://git.kernel.org/netdev/net-next/c/f712c8297e0a
  - [v2,18/24] net: enetc: use vmalloc_array and vcalloc
    https://git.kernel.org/netdev/net-next/c/fa87c54693ae
  - [v2,22/24] net: mana: use vmalloc_array and vcalloc
    https://git.kernel.org/netdev/net-next/c/e9c74f8b8a31

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
