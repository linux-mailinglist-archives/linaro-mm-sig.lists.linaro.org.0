Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ayuoI2FePWoK2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:13 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 20F156C7A0C
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 18:59:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=none
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33F36410CC
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 16:59:12 +0000 (UTC)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	by lists.linaro.org (Postfix) with ESMTPS id 72E014051A
	for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 10:21:34 +0000 (UTC)
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-45eeea039ebso4204086f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Thu, 11 Jun 2026 03:21:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20251104.gappssmtp.com; s=20251104; t=1781173293; x=1781778093; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ks9XZxCyDCZpPl0hZOLfLDZkVcVXMB4BMtGl2dtDnVQ=;
        b=QwG1h3t3L8kj9wifdllwsyBpiVsVvSAJuozroLVaDR4BOQb1nmB/ebmkAvy3YwsrX6
         C4lQVs1ysYZFXKln4xsq2GVfDIT+YGkvLkEMLMfxe5MKMqUUqAgLwvwGChlSo64YHvWE
         4pA9jM8Ov7+fv/cFvhexAWzAccouJccdsA6F6OBMnvLWOFLjhtLTSOxb8aSL1dKV+HIA
         2rd6kxZHs8EbL6ZVjtiI1uLDkukOK7Jq1dlsuXZ1xzrGbLFN+OMikSC/iWwutOrUfy+u
         ffdonTmEAH4rXPyrX1MzEkc9pCizwP7U32J7FDfVLp2S8DLd/W0uY0UGZErMCt3jKRNg
         LKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781173293; x=1781778093;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ks9XZxCyDCZpPl0hZOLfLDZkVcVXMB4BMtGl2dtDnVQ=;
        b=WsuUhNRCp4HTK5Wx1EjKp6WzJEB05Xgnjn1aKk699aAO8jWmbYLVrKZ302LVrVbonN
         Z2PudNOOLiRGhffDgFwKA+javN2aJGBo7smIq5yCPLNSpN9M8Xqv0iavwgYGlZOMXi7v
         vSSJZ7K1UsHdhbqL6C7DbcImM+Bgf25kb+tm1SqYLgmh0WpUGt8k5X8N0cEUw+1Lk/Xl
         mSJXJ+JitAh9pTi2FAyHvo05r1ZyqP9ap6PTN3NG6izU/2JJHH4DZTabwiUJWVLy6kZ6
         G5n6wqO5ciD5lXtc2KlFaEoSsGdrvZDfYTmxunKHJSxhiwQTn7XLDgEEUTfVUh5/b+Dk
         ClEw==
X-Forwarded-Encrypted: i=1; AFNElJ/2I6qLZnOepNpj2e4hT13yj6nePbF8qC+Du593USqy3uln4gFXYDLxz2uRdbk+fE5yZoND4sakIlLF/NOp@lists.linaro.org
X-Gm-Message-State: AOJu0Yw+kaTj2HZAFG2lSYgB3h+ga0OX2ESUbhkyxSkjTcB8pKFep1tj
	Vu+OcprCC2kYxnUFahI/38yPYaXnS8VJ+nCJ38p2rR0MpFLMG8r6ho+l3YNBZBqqufw=
X-Gm-Gg: Acq92OFj2TlS/EBbiE8miRp2zhSPUBuGieLoaVcpDPhRt+EjVC9o1xgLZkB8yAsYkdH
	O6gHaiBqnsuFCevMuY5vQIHegcKTw/XMhK8WCiOs/GL5f0jpIqjmfTpf6KFvP2nF+AKy3ixJpUE
	Eg7QGGjaiRH9DAGCyHIOdkiSNEiXfmUQtMwyly65joW3vgqqpK9CpIxMOMZnA1cWbIMD5RKR6j1
	GrX0GTb8dn5P4BWp3ta4gsV8Yj5+olrLjOLk1llBNBzKV/33+rYndASP5FLLYPEcShneuHIH4Js
	Qm/uofA4OlSzeDM/Gg46wSQfEor+sOynlJld9r+aUH8SoX/XHnXELWmcsQnin6hzGKUT0w3GAP/
	dq/Ah7vgJKQGZPPCfLuPj5sTXVHYWESVrigGQhIQRHLzQS7sjotVic2W1FCURnU5aSn8B2zcwrU
	H0XssclNjo81YSU/b97prvwadGmWsSyS/SeIza/g==
X-Received: by 2002:a05:6000:1449:b0:43c:ef4f:79e4 with SMTP id ffacd0b85a97d-460677c149emr3057787f8f.37.1781173293060;
        Thu, 11 Jun 2026 03:21:33 -0700 (PDT)
Received: from localhost ([140.209.217.212])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4602cda3651sm68603644f8f.32.2026.06.11.03.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 03:21:32 -0700 (PDT)
Date: Thu, 11 Jun 2026 12:21:27 +0200
From: Jiri Pirko <jiri@resnulli.us>
To: Sumit Semwal <sumit.semwal@linaro.org>
Message-ID: <aiqLJUrJ1dnKhsJn@FV6GYCPJ69>
References: <20260610142329.3836808-1-sumit.semwal@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260610142329.3836808-1-sumit.semwal@linaro.org>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: V5SJBEUNNHU5KLB77AS3STFGLWEGFBWW
X-Message-ID-Hash: V5SJBEUNNHU5KLB77AS3STFGLWEGFBWW
X-Mailman-Approved-At: Thu, 25 Jun 2026 16:59:01 +0000
CC: christian.koenig@amd.com, jgg@ziepe.ca, hch@infradead.org, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, linuxppc-dev@lists.ozlabs.org, lkp@intel.com, agordeev@linux.ibm.com, gerald.schaefer@linux.ibm.com, linux-s390@vger.kernel.org, djbw@kernel.org, thomas.lendacky@amd.com, x86@kernel.org, arnd@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, mripard@kernel.org, afd@ti.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] dma-buf: move system_cc_shared heap under separate Kconfig
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/V5SJBEUNNHU5KLB77AS3STFGLWEGFBWW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.99 / 15.00];
	DATE_IN_PAST(1.00)[342];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:jgg@ziepe.ca,m:hch@infradead.org,m:maddy@linux.ibm.com,m:mpe@ellerman.id.au,m:npiggin@gmail.com,m:chleroy@kernel.org,m:linuxppc-dev@lists.ozlabs.org,m:lkp@intel.com,m:agordeev@linux.ibm.com,m:gerald.schaefer@linux.ibm.com,m:linux-s390@vger.kernel.org,m:djbw@kernel.org,m:thomas.lendacky@amd.com,m:x86@kernel.org,m:arnd@linaro.org,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:tjmercier@google.com,m:mripard@kernel.org,m:afd@ti.com,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:arnd@arndb.de,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[resnulli.us];
	FORGED_SENDER(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,ziepe.ca,infradead.org,linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,lists.ozlabs.org,intel.com,vger.kernel.org,linaro.org,collabora.com,arm.com,google.com,ti.com,lists.freedesktop.org,lists.linaro.org,arndb.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,nvidia.com:email,linaro.org:email,FV6GYCPJ69:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 20F156C7A0C

Wed, Jun 10, 2026 at 04:23:29PM +0200, sumit.semwal@linaro.org wrote:
>From: Arnd Bergmann <arnd@arndb.de>
>
>While system heap and system_cc_shared heap share a lot of code
>and hence the same source file, their users have different needs.
>
>system heap users need it to be a loadable module, while
>system_cc_shared heap users don't.
>
>Building as a loadable module breaks system_cc_shared heap on
>powerpc and s390 due to un-exported set_memory_encrypted /
>set_memory_decrypted functions.
>
>Fix these by reorganising code to put the system_cc_shared heap
>under a new Kconfig symbol, which allows either building both
>into the kernel, or leave encryption up to the consumers of the
>system heap.
>
>Fixes: fd55edff8a0a ("dma-buf: heaps: system: Turn the heap into a module")
>Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
>---
> drivers/dma-buf/heaps/Kconfig       |  8 ++++++++
> drivers/dma-buf/heaps/system_heap.c | 16 ++++++++++------
> 2 files changed, 18 insertions(+), 6 deletions(-)
>
>diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-buf/heaps/Kconfig
>index e273fb18feca..a39decdcf067 100644
>--- a/drivers/dma-buf/heaps/Kconfig
>+++ b/drivers/dma-buf/heaps/Kconfig
>@@ -5,6 +5,14 @@ config DMABUF_HEAPS_SYSTEM
> 	  Choose this option to enable the system dmabuf heap. The system heap
> 	  is backed by pages from the buddy allocator. If in doubt, say Y.
> 
>+config DMABUF_HEAPS_CC_SYSTEM

Nit: "DMABUF_HEAPS_SYSTEM_CC_SHARED" to be consistent with the heap
name?

With or without it:
Reviewed-by: Jiri Pirko <jiri@nvidia.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
