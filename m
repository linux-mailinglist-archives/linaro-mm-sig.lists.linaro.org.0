Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0O2cLAOUhGk43gMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 13:58:43 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D6FF2E38
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 13:58:43 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 0C4533F820
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Feb 2026 12:58:42 +0000 (UTC)
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
	by lists.linaro.org (Postfix) with ESMTPS id 34E5D3F724
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Feb 2026 12:58:35 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=mkkng4ci;
	spf=pass (lists.linaro.org: domain of leon@kernel.org designates 172.234.252.31 as permitted sender) smtp.mailfrom=leon@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 99CB54396B;
	Thu,  5 Feb 2026 12:58:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 184FAC4CEF7;
	Thu,  5 Feb 2026 12:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770296314;
	bh=S2s8/bMyKmVdiSDHAWjHlKyaaSVCT0Yx1Zo2MXvJ1WI=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=mkkng4ciZVY11wIeOZkrjjS1eW04HepM3zK7vDKNRh2Gzrz5ZYTA8oNpDipCVaBt6
	 Zju30QUlAMefAPOOjTGaXXLVUV1j3QM0oc/xRbw5x0XTqwH3O14ddftpyKslwxOuJF
	 OcB71+Bg3NLhejGFSqcv7La1FyMwzYLXBRiHjlMGoDhwM1PoGWqV82Mhxdku5fQFE2
	 2UhjTPRQ/72BvjUm3jWYNQcm6KAEIiosAvAhIiIB1Phz+pdAL8MGAyu1F4CrQ2hC6+
	 P6/bK3xP8hOEVKWZ28iCgV7/jIF+CMBcfVyIXI9aTucOTbYl1TK+nrvLj2dWceXko/
	 7twWrocbp3tEg==
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@ziepe.ca>, Sumit Semwal <sumit.semwal@linaro.org>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Edward Srouji <edwards@nvidia.com>
In-Reply-To: <20260201-dmabuf-export-v3-0-da238b614fe3@nvidia.com>
References: <20260201-dmabuf-export-v3-0-da238b614fe3@nvidia.com>
Message-Id: <177029631173.955437.5307722032449149162.b4-ty@kernel.org>
Date: Thu, 05 Feb 2026 07:58:31 -0500
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-47773
X-Spamd-Bar: ---
Message-ID-Hash: DECMHMGKSMDCZRZHIZQXT3FUAYAYK4B6
X-Message-ID-Hash: DECMHMGKSMDCZRZHIZQXT3FUAYAYK4B6
X-MailFrom: leon@kernel.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: linux-kernel@vger.kernel.org, linux-rdma@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, Yishai Hadas <yishaih@nvidia.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH rdma-next v3 0/3] RDMA: Add support for exporting dma-buf file descriptors
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/DECMHMGKSMDCZRZHIZQXT3FUAYAYK4B6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	FROM_NEQ_ENVFROM(0.00)[leon@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]
X-Rspamd-Queue-Id: 29D6FF2E38
X-Rspamd-Action: no action


On Sun, 01 Feb 2026 16:34:03 +0200, Edward Srouji wrote:
> This patch series introduces dma-buf export support for RDMA/InfiniBand
> devices, enabling userspace applications to export RDMA PCI-backed
> memory regions (such as device memory or mlx5 UAR pages) as dma-buf file
> descriptors.
> 
> This allows PCI device memory to be shared with other kernel subsystems
> (e.g., graphics or media) or between userspace processes, via the
> standard dma-buf interface, avoiding unnecessary copies and enabling
> efficient peer-to-peer (P2P) DMA transfers. See [1] for background on
> dma-buf.
> 
> [...]

Applied, thanks!

[1/3] RDMA/uverbs: Support external FD uobjects
      https://git.kernel.org/rdma/rdma/c/6b848074a32078
[2/3] RDMA/uverbs: Add DMABUF object type and operations
      https://git.kernel.org/rdma/rdma/c/e6738fe6cad448
[3/3] RDMA/mlx5: Implement DMABUF export ops
      https://git.kernel.org/rdma/rdma/c/992a14bb2150a1

Best regards,
-- 
Leon Romanovsky <leon@kernel.org>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
