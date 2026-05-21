Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGNZFpDyDmqmDQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 13:54:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7305A44D2
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 13:54:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D89F53F985
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 21 May 2026 11:54:54 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 4DD183F985
	for <linaro-mm-sig@lists.linaro.org>; Thu, 21 May 2026 11:54:45 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="MzvzRj1/";
	spf=pass (lists.linaro.org: domain of brauner@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=brauner@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id B37AE40687;
	Thu, 21 May 2026 11:54:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 724561F000E9;
	Thu, 21 May 2026 11:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779364484;
	bh=vdgcnrs1cNHhDQfHkBD3F2KXqzLos0onnjN5eObbKJQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MzvzRj1/Ap+XqH85Rq3LmLGdPPDoXrwKoypYeXF1yAVGwiEWIvVTD3mV8G3oQDutf
	 bZjmKFbv6q74nL9jB4a7IGQxmhrhyAXMSfiMDOTnmpjCnkqeK3YIfC4k6Y+YnFbMvR
	 4r4LDxAcpqCVsYUT0W1eaNQw58DDCJmNewLLElQAUR6bqxb7WtQTxL/ORc/Xo7GIKV
	 8xllVdwyjF8T4z0oXoW3F6VZsTAa60BahrtKkyGQ5ABPTIJ3XylwRgVNfFSNrLXTyp
	 lvL4wXH06yp/qc+Mh8M4BzpcZXyJTHsM1cPW0WTt1bFy2vLJgt2v1KqtNqpMi28Juo
	 08WqfqD+uWPEQ==
Date: Thu, 21 May 2026 13:54:40 +0200
From: Christian Brauner <brauner@kernel.org>
To: John Hubbard <jhubbard@nvidia.com>
Message-ID: <20260521-dilettanten-klarzukommen-9351cba40c06@brauner>
References: <20260520214350.168689-1-jhubbard@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260520214350.168689-1-jhubbard@nvidia.com>
X-Spamd-Bar: /
Message-ID-Hash: OTJ6WZAVNK3KLKLMQO44XAMP775I7WI2
X-Message-ID-Hash: OTJ6WZAVNK3KLKLMQO44XAMP775I7WI2
X-MailFrom: brauner@kernel.org
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Jens Axboe <axboe@kernel.dk>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, LKML <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: set SB_I_NOEXEC on the pseudo filesystem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/OTJ6WZAVNK3KLKLMQO44XAMP775I7WI2/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [6.49 / 15.00];
	MID_END_EQ_FROM_USER_PART(4.00)[];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20260515];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	GREYLIST(0.00)[pass,meta];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	NEURAL_SPAM(0.00)[0.973];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[brauner@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	DKIM_TRACE(0.00)[kernel.org:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo]
X-Rspamd-Queue-Id: DC7305A44D2
X-Rspamd-Action: add header
X-Rspamd-Server: lfdr
X-Spam: Yes

On Wed, May 20, 2026 at 02:43:50PM -0700, John Hubbard wrote:
> The dma-buf pseudo filesystem dispenses S_ANON_INODE inodes via
> alloc_anon_inode() but never sets SB_I_NOEXEC on its superblock.
> Since commit 1e7ab6f67824 ("anon_inode: rework assertions") in 6.17,
> path_noexec() warns on exactly that combination, so an mmap() on any
> dma-buf fd trips the warning:
> 
>   WARNING: CPU: 11 PID: 121813 at fs/exec.c:118 path_noexec+0x47/0x50
>    do_mmap+0x2b5/0x680
>    vm_mmap_pgoff+0x129/0x210
>    ksys_mmap_pgoff+0x177/0x240
>    __x64_sys_mmap+0x33/0x70
> 
> dma-bufs have no business being executable, which is the invariant
> that the new assertion is enforcing. Set SB_I_NOEXEC on the dmabuf
> superblock.
> 
> Reproducer on a CONFIG_DEBUG_VFS=y kernel:
> 
>   make -C tools/testing/selftests/dmabuf-heaps
>   sudo ./tools/testing/selftests/dmabuf-heaps/dmabuf-heap -t system
> 
> The selftest allocates from /dev/dma_heap/system and mmaps the
> returned fd, which trips the warning without this patch.
> 
> Fixes: 1e7ab6f67824 ("anon_inode: rework assertions")
> Cc: stable@vger.kernel.org
> Signed-off-by: John Hubbard <jhubbard@nvidia.com>
> ---

Perfect, the asserts are paying off. Thanks!
Reviewed-by: Christian Brauner (Amutable) <brauner@kernel.org>

>  drivers/dma-buf/dma-buf.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/dma-buf/dma-buf.c b/drivers/dma-buf/dma-buf.c
> index 71f37544a5c6..d86a99d7b8dc 100644
> --- a/drivers/dma-buf/dma-buf.c
> +++ b/drivers/dma-buf/dma-buf.c
> @@ -216,6 +216,7 @@ static int dma_buf_fs_init_context(struct fs_context *fc)
>  	if (!ctx)
>  		return -ENOMEM;
>  	ctx->dops = &dma_buf_dentry_ops;
> +	fc->s_iflags |= SB_I_NOEXEC;

While you're at it, also raise SB_I_NODEV. You're not creating any
device nodes and this is additional hardening.
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
