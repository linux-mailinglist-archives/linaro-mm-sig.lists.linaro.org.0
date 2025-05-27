Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DCF3AC5468
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 19:00:15 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6B78345FEB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 May 2025 17:00:14 +0000 (UTC)
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
	by lists.linaro.org (Postfix) with ESMTPS id 026E745594
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 May 2025 17:00:03 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=iSArvkHK;
	spf=pass (lists.linaro.org: domain of patchwork-bot+netdevbpf@kernel.org designates 139.178.84.217 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6FCE35C57BA;
	Tue, 27 May 2025 16:57:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F63BC4CEEB;
	Tue, 27 May 2025 17:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748365202;
	bh=YZ2oMVULHYa93hhilrUAyynPEjoYTyfzy2z4lPIc7Tg=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=iSArvkHKnbdfsIqUw+stBXLTL/Ke5U83Hr/h23PCKH2twhwaBkubimAvx+taEjhT+
	 17GlrF1mNeJ2qOU1eeQFgusqyTP1WRXOw7wtddnqrTKjnZLZXhJ4GxmKoP6fqH3adF
	 0z2L9LzHN+9Vy5fTKrqM/7c9uzziOcOKJ0MDEdzdO1qPK+X3ASzCKvacfPGOisD9+F
	 WKAGBUN79iYYo5BVjEit65FIDLp3Sp67mhiw4T5Bvx6D2IFu+Tqb3fSiLcz5O4kK1n
	 /YBV1WAXRqBb0V/YcRRV6HLwvAO05G2KHwpnU0EdoV5jkVxUdL9tc1RSwrXhIv1HM4
	 U6NdPKaAX22tg==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 7228D380AAE2;
	Tue, 27 May 2025 17:00:37 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <174836523626.1711047.17059127767778339738.git-patchwork-notify@kernel.org>
Date: Tue, 27 May 2025 17:00:36 +0000
References: <20250522230429.941193-1-tjmercier@google.com>
In-Reply-To: <20250522230429.941193-1-tjmercier@google.com>
To: T.J. Mercier <tjmercier@google.com>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:139.178.84.217];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:54825, ipnet:139.178.80.0/21, country:US];
	MIME_TRACE(0.00)[0:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	TAGGED_RCPT(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,gmail.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,fomichev.me,fb.com];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[netdevbpf];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Queue-Id: 026E745594
X-Spamd-Bar: --
Message-ID-Hash: PRWVEOFHHZWVFGMFD7BGEHFN5DLVO6JS
X-Message-ID-Hash: PRWVEOFHHZWVFGMFD7BGEHFN5DLVO6JS
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, christian.koenig@amd.com, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, skhan@linuxfoundation.org, alexei.starovoitov@gmail.com, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, simona@ffwll.ch, eddyz87@gmail.com, yonghong.song@linux.dev, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, jolsa@kernel.org, mykolal@fb.com, shuah@kernel.org, song@kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v7 0/5] Replace CONFIG_DMABUF_SYSFS_STATS with BPF
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/AJ7BW5QVSYQNTWIWDP6TMLX2B3CLJNGF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello:

This series was applied to bpf/bpf-next.git (master)
by Alexei Starovoitov <ast@kernel.org>:

On Thu, 22 May 2025 23:04:24 +0000 you wrote:
> Until CONFIG_DMABUF_SYSFS_STATS was added [1] it was only possible to
> perform per-buffer accounting with debugfs which is not suitable for
> production environments. Eventually we discovered the overhead with
> per-buffer sysfs file creation/removal was significantly impacting
> allocation and free times, and exacerbated kernfs lock contention. [2]
> dma_buf_stats_setup() is responsible for 39% of single-page buffer
> creation duration, or 74% of single-page dma_buf_export() duration when
> stressing dmabuf allocations and frees.
> 
> [...]

Here is the summary with links:
  - [bpf-next,v7,1/5] dma-buf: Rename debugfs symbols
    https://git.kernel.org/bpf/bpf-next/c/89f9dba365e1
  - [bpf-next,v7,2/5] bpf: Add dmabuf iterator
    https://git.kernel.org/bpf/bpf-next/c/76ea95534995
  - [bpf-next,v7,3/5] bpf: Add open coded dmabuf iterator
    https://git.kernel.org/bpf/bpf-next/c/6eab7ac7c5ee
  - [bpf-next,v7,4/5] selftests/bpf: Add test for dmabuf_iter
    https://git.kernel.org/bpf/bpf-next/c/ae5d2c59ecd7
  - [bpf-next,v7,5/5] selftests/bpf: Add test for open coded dmabuf_iter
    https://git.kernel.org/bpf/bpf-next/c/7594dcb71ff8

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
