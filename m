Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Jdo9E3yYtGnMqwAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 14 Mar 2026 00:06:36 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id B83BE28A94B
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 14 Mar 2026 00:06:35 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 879AF3F962
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 13 Mar 2026 23:06:34 +0000 (UTC)
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
	by lists.linaro.org (Postfix) with ESMTPS id DA9813F962
	for <linaro-mm-sig@lists.linaro.org>; Fri, 13 Mar 2026 23:06:31 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=Jt2I9UnZ;
	spf=pass (lists.linaro.org: domain of robh@kernel.org designates 172.105.4.254 as permitted sender) smtp.mailfrom=robh@kernel.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 6A54960132;
	Fri, 13 Mar 2026 23:06:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED1AAC19421;
	Fri, 13 Mar 2026 23:06:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773443191;
	bh=yFVSBh4WIS/NwxjvqQ8QJjFjOyTSxSn7QLtwu40ICpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Jt2I9UnZ2kDKSz/mk7fs/bJcvr7jO5ba3GhlsVjWsZKxKnz+Mi5/wklcExgENbE0w
	 hPsMhYavxA4/Ii3mKP8MxniNHhQx5gBjDs3C2TLn61IuVVhJwW5sAH3qjrGKXao+M5
	 KVlpVwH9xej7Bczoui+2oyTP8pLjAoAHmohs9xSiZQFf4qtSaeleG65oJ9dBaNMG2r
	 w0P3Vvwc99eHe//v5RRFJP1t6Oxwo7YfHhVRjCwg3/sbqN7eg6WnOmaUA3lzASbaaQ
	 wKMC3VLWgyT2l5v95CGEo6Jf+yK1w2fJtEGgVP80Toc/pboqWhkx9R+MBovmhfyGL6
	 NVi4he/PVvSQQ==
Date: Fri, 13 Mar 2026 18:06:29 -0500
From: Rob Herring <robh@kernel.org>
To: Albert Esteve <aesteve@redhat.com>
Message-ID: <20260313230629.GA3603067-robh@kernel.org>
References: <20260306-b4-dmabuf-heap-coherent-rmem-v3-0-3d00d36c9bc4@redhat.com>
 <20260306-b4-dmabuf-heap-coherent-rmem-v3-3-3d00d36c9bc4@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260306-b4-dmabuf-heap-coherent-rmem-v3-3-3d00d36c9bc4@redhat.com>
X-Spamd-Bar: --
Message-ID-Hash: GE5SA453M6FJUL2NRKHMLKYXULIRV366
X-Message-ID-Hash: GE5SA453M6FJUL2NRKHMLKYXULIRV366
X-MailFrom: robh@kernel.org
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, devicetree@vger.kernel.org, mripard@redhat.com, echanude@redhat.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 3/6] of_reserved_mem: add a helper for rmem device_init op
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GE5SA453M6FJUL2NRKHMLKYXULIRV366/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[kernel.org : SPF not aligned (relaxed),quarantine];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_REJECT(1.00)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[kernel.org:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.893];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: B83BE28A94B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 06, 2026 at 11:36:34AM +0100, Albert Esteve wrote:
> Add a helper function wrapping internal reserved memory
> device_init call and expose it externally.

Why?

The diff tells us what. The commit msg needs to tell us why. Maybe the 
rest of the series explains it, but this commit needs to stand on its 
own.

> 
> Use the new helper function within of_reserved_mem_device_init_by_idx().
> 
> Signed-off-by: Albert Esteve <aesteve@redhat.com>
> ---

Version history?

>  drivers/of/of_reserved_mem.c    | 68 ++++++++++++++++++++++++++---------------
>  include/linux/of_reserved_mem.h |  8 +++++
>  2 files changed, 52 insertions(+), 24 deletions(-)
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
