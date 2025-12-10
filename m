Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 21507CB2541
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Dec 2025 08:53:29 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1A0F03F76F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Dec 2025 07:53:27 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id A28C63F76F
	for <linaro-mm-sig@lists.linaro.org>; Wed, 10 Dec 2025 07:53:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b="PzZm/fX6";
	spf=pass (lists.linaro.org: domain of patchwork-bot+netdevbpf@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=patchwork-bot+netdevbpf@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E993943FA6;
	Wed, 10 Dec 2025 07:53:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1A54C116B1;
	Wed, 10 Dec 2025 07:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765353191;
	bh=0nzn63khGmeyO92wIH5lyhEhO2plqAVmt3Ik844pU2w=;
	h=Subject:From:Date:References:In-Reply-To:To:Cc:From;
	b=PzZm/fX66rdrOYgS2xnN7KP4WdzWwEpgdYR9q9Cc347CYFmd7XCuq7FORIq1aSMe/
	 HLkSegfpAPZ+h0JN2guy/Sm8B4Sdx7C3q1arPajaTAJIQZNAQydrVSj8aCI5e/Z9M+
	 cByhFHtTaC8HeCh7ZjticooTC2HoOv4lEhTpTzI/hWRrc+gqFdxJzrHb4bQsn+cId7
	 z/mamv1wJEn6/SGY7gJ8dlvRCOmdjPsW4VEpeOykrgOlPFmxyhdt125EEcrvS6mZBY
	 c3oUzQ7IRzi4zJk8gpexisjbumdE0EURrlQCmvrIQnHzWzJYGWouBCnOmHWHZDKdLe
	 0Sbi366kasy9w==
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B591D3809A18;
	Wed, 10 Dec 2025 07:50:07 +0000 (UTC)
MIME-Version: 1.0
From: patchwork-bot+netdevbpf@kernel.org
Message-Id: 
 <176535300655.493455.11967888577336619443.git-patchwork-notify@kernel.org>
Date: Wed, 10 Dec 2025 07:50:06 +0000
References: <20251204000348.1413593-1-tjmercier@google.com>
In-Reply-To: <20251204000348.1413593-1-tjmercier@google.com>
To: T.J. Mercier <tjmercier@google.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.252.31];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_EQ_ENVFROM(0.00)[];
	FREEMAIL_CC(0.00)[linux.dev,kernel.org,iogearbox.net,gmail.com,fomichev.me,google.com,vger.kernel.org,amd.com,linaro.org,lists.freedesktop.org,lists.linaro.org];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DNSWL_BLOCKED(0.00)[100.75.92.58:received,172.234.252.31:from];
	URIBL_BLOCKED(0.00)[sea.source.kernel.org:rdns,sea.source.kernel.org:helo];
	DKIM_TRACE(0.00)[kernel.org:+]
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: A28C63F76F
X-Spamd-Bar: ---
Message-ID-Hash: XEC76O62LXGQFKXHDENJ5RWFDLDJHIYY
X-Message-ID-Hash: XEC76O62LXGQFKXHDENJ5RWFDLDJHIYY
X-MailFrom: patchwork-bot+netdevbpf@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: yonghong.song@linux.dev, ast@kernel.org, daniel@iogearbox.net, andrii@kernel.org, martin.lau@linux.dev, eddyz87@gmail.com, song@kernel.org, john.fastabend@gmail.com, kpsingh@kernel.org, sdf@fomichev.me, haoluo@google.com, jolsa@kernel.org, shuah@kernel.org, bpf@vger.kernel.org, linux-kernel@vger.kernel.org, linux-kselftest@vger.kernel.org, android-mm@google.com, christian.koenig@amd.com, sumit.semwal@linaro.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf 1/2] bpf: Fix truncated dmabuf iterator reads
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/J3M26Q3OOIWIBK2CG3FLUNVKQDMPLZPP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello:

This series was applied to bpf/bpf.git (master)
by Alexei Starovoitov <ast@kernel.org>:

On Wed,  3 Dec 2025 16:03:47 -0800 you wrote:
> If there is a large number (hundreds) of dmabufs allocated, the text
> output generated from dmabuf_iter_seq_show can exceed common user buffer
> sizes (e.g. PAGE_SIZE) necessitating multiple start/stop cycles to
> iterate through all dmabufs. However the dmabuf iterator currently
> returns NULL in dmabuf_iter_seq_start for all non-zero pos values, which
> results in the truncation of the output before all dmabufs are handled.
> 
> [...]

Here is the summary with links:
  - [bpf,1/2] bpf: Fix truncated dmabuf iterator reads
    https://git.kernel.org/bpf/bpf/c/234483565dbb
  - [bpf,2/2] selftests/bpf: Add test for truncated dmabuf_iter reads
    https://git.kernel.org/bpf/bpf/c/9489d457d48b

You are awesome, thank you!
-- 
Deet-doot-dot, I am a bot.
https://korg.docs.kernel.org/patchwork/pwbot.html


_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
