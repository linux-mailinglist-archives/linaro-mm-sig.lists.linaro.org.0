Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDE1A77BF1
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 15:20:37 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6D3DE444CD
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Apr 2025 13:20:36 +0000 (UTC)
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com [136.143.188.112])
	by lists.linaro.org (Postfix) with ESMTPS id 3E0553F66D
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Apr 2025 13:20:16 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=collabora.com header.s=zohomail header.b="Nys/RrGN";
	spf=pass (lists.linaro.org: domain of dmitry.osipenko@collabora.com designates 136.143.188.112 as permitted sender) smtp.mailfrom=dmitry.osipenko@collabora.com;
	arc=pass ("zohomail.com:s=zohoarc:i=1");
	dmarc=pass (policy=none) header.from=collabora.com
ARC-Seal: i=1; a=rsa-sha256; t=1743513601; cv=none;
	d=zohomail.com; s=zohoarc;
	b=Vhf4ybQ9c+7td8sHscT0FqIyJF59/rLNs7j36dqudh8vVG/H+3KvyZ6I1jZxWRM8ifv0ytukTpKo+P31wUbeFuFDAg2gWoHs+K13PKxAJh9kEGOE4ZhHXXfCTTHC5cemijXkANMRnl4M5miQb1PqV3/6sJmhCLrx/A2k9Y//Bdk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc;
	t=1743513601; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
	bh=HlqcrObXVb8wnKz6QZRhhTpIu3g5AsMKBRmqEwnSzLo=;
	b=HVqwWD3ocgVhPwjckDnO381DAvC5mpzPjOWQHFMaFocxD2IS8U2KiSvjat6LcsBV/nBTR68KItxalyDo4M8ujvLwOBjSTBiCkwZR+HhvvsQwTqK5Zld8ZPHXjEjZhbqYe5ROECpNfQEZqvbTKtC7JqqxdTRyvOeN6TllT3r6Dak=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1743513601;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=HlqcrObXVb8wnKz6QZRhhTpIu3g5AsMKBRmqEwnSzLo=;
	b=Nys/RrGNtw5ZpaKk+0t2PWkYx0HxvUjJspY90Jib1wV9UvDp9yP2DXlUjFxvi85A
	ZvV5WKfDrxgyqpp3jALEsxinQYhJ35Xe0oT7IpdUZimnl3Lg4w2m+n7N30RXN6LZZkh
	SJD0z/SNTtttpiF/J6079YbqMaLG+We49BRNwTSU=
Received: by mx.zohomail.com with SMTPS id 174351359953037.89471879433961;
	Tue, 1 Apr 2025 06:19:59 -0700 (PDT)
Message-ID: <3fea4b5b-c4d1-4ac8-b351-692baad81a75@collabora.com>
Date: Tue, 1 Apr 2025 16:19:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Rob Clark <robdclark@gmail.com>, dri-devel@lists.freedesktop.org
References: <20250331212333.16029-1-robdclark@gmail.com>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <20250331212333.16029-1-robdclark@gmail.com>
X-ZohoMailClient: External
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 3E0553F66D
X-Spamd-Bar: --------
X-Spamd-Result: default: False [-9.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[136.143.188.112:from];
	R_SPF_ALLOW(-0.20)[+ip4:136.143.188.0/24];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	ONCE_RECEIVED(0.20)[];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[amd.com,chromium.org,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,vger.kernel.org,lists.linaro.org];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:2639, ipnet:136.143.188.0/24, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.966];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 62AZRGSZJVMMPVF7PQZFQ2IDU56FQUCF
X-Message-ID-Hash: 62AZRGSZJVMMPVF7PQZFQ2IDU56FQUCF
X-MailFrom: dmitry.osipenko@collabora.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Rob Clark <robdclark@chromium.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, open list <linux-kernel@vger.kernel.org>, "open list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linux-media@vger.kernel.org>, "moderated list:DMA BUFFER SHARING FRAMEWORK:Keyword:bdma_(?:buf|fence|resv)b" <linaro-mm-sig@lists.linaro.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5] drm/syncobj: Extend EXPORT_SYNC_FILE for timeline syncobjs
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/62AZRGSZJVMMPVF7PQZFQ2IDU56FQUCF/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

On 4/1/25 00:23, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Add support for exporting a dma_fence fd for a specific point on a
> timeline.  This is needed for vtest/vpipe[1][2] to implement timeline
> syncobj support, as it needs a way to turn a point on a timeline back
> into a dma_fence fd.  It also closes an odd omission from the syncobj
> UAPI.
> 
> [1] https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/33433
> [2] https://gitlab.freedesktop.org/virgl/virglrenderer/-/merge_requests/805
> 
> v2: Add DRM_SYNCOBJ_HANDLE_TO_FD_FLAGS_TIMELINE
> v3: Add unstaged uabi header hunk
> v4: Also handle IMPORT_SYNC_FILE case
> v5: Address comments from Dmitry
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> ---
>  drivers/gpu/drm/drm_syncobj.c | 45 +++++++++++++++++++++++++++--------
>  include/uapi/drm/drm.h        |  4 ++++
>  2 files changed, 39 insertions(+), 10 deletions(-)

Reviewed-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>

-- 
Best regards,
Dmitry
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
