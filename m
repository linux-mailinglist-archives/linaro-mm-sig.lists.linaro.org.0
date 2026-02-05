Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJrNLGOnhGmI3wMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 15:21:23 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 26867F3E4A
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 05 Feb 2026 15:21:23 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 1C1103F820
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  5 Feb 2026 14:21:22 +0000 (UTC)
Received: from mail-qv1-f66.google.com (mail-qv1-f66.google.com [209.85.219.66])
	by lists.linaro.org (Postfix) with ESMTPS id B875F3F799
	for <linaro-mm-sig@lists.linaro.org>; Thu,  5 Feb 2026 14:21:13 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=NanWs0xf;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.66 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f66.google.com with SMTP id 6a1803df08f44-88fca7bce90so11618636d6.3
        for <linaro-mm-sig@lists.linaro.org>; Thu, 05 Feb 2026 06:21:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1770301273; x=1770906073; darn=lists.linaro.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MSUoQMJoCCNydU2DcwMWqdKRWnt0MqAVvIGN6ESmMGo=;
        b=NanWs0xfsg0Ghx1pfh5XjarSNbPB8ZlRyiniTuUK550eNhf7xrBH5IUs7bE5zjXtTV
         TqyYy6teZzyMJorep8pz5eE74Yi0/kvEXsjQ5zqTBTl2sN27Wr9SuyvMhZGxPp4R8eEp
         3Yi55N/UUxoq1HXT2U/OTNp1/e0Lrq4desdmRhdhdtzfPXwYhH0pXM9yY4tIaC+59n/b
         vh0bOYotpaY7+9mqcGnH8HVm/PD5DsA2EhRCbrHyVMLnkLALxJyBWBhvxIFRK4NvxmF1
         3hQplRBp/O0H8+ekr7/knMrI74KfdGhZ3bDDDUlaRUxDKs600zFTHYAdf/tAJSjKIo1J
         hXFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770301273; x=1770906073;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MSUoQMJoCCNydU2DcwMWqdKRWnt0MqAVvIGN6ESmMGo=;
        b=LLFdx8XzwZ2Q3tubCPKGxrBpCTkDV6ABzEKREjOTj3ASV0paR5zdocUuVJA7KWyXyl
         OwnAFabPJZIY7r8YQxW2BcqEpl2qzJfh+CUvXTBmDSOyDpS6dOh9SCTtrCxauuUF+uGc
         Yttn/EhMjHkr9LeHbgC42NCZ+6TMiZdm1tFGc36Y+GsC0gypJCdZ2oeeEq3LKCm/l1rQ
         yY6u2PTvJynxfcUR/L2Lj5Ivkzriq9t40nFytztVrnFiyHYTTCf3M7Aw1VZ5o8K3rp+t
         jBOPP6vTPmYZy+0+CaO2Mz9cjQgc1c4nvjJ7x7a1+rn7b+ZXdnk1nffPyTkR/BvvxT9w
         CuUg==
X-Forwarded-Encrypted: i=1; AJvYcCWzCog6RgCmxgyR9j/wO+Gs1Z2b3B+HrkfyzO9Jm1WCmYWHh346+MYZ+JhiRiS3Dw+TlDPF4Qn7UbUa7o1K@lists.linaro.org
X-Gm-Message-State: AOJu0YzyMK9aSLD3ZR7ZTEfRH6IFr0PLk5A2BxYN4sREDsT5t5/daO7J
	v+pxPhVqja/S1qaTBr0Q8bjNLpMCKFU9bDgvqMytDP+U+vRtQ8ppjvgvzmx3HJOZ3L8=
X-Gm-Gg: AZuq6aIpsN/0lYHe34bGEbMCESSlpjHuj3BjVGYA/mZAiDXa2ISXYqhesPwY+X/Ittq
	yf/LCJEXBXhXp/6W8jbzM8LRz3Yvv2Ir3CTpBQaBT3uO/8c5iZRdmCN8LI4bKOjl544KwqfDu9U
	mvz49PwkwypAhT3EgiTKmKN4I+7Xph6NjfN7LeeG/dUEWqdCugfCy4zyxlBBfN2mxrxGKP6VHZj
	lL3gE+JXCtubEh83XKcsAwLHmLCsVsDfSqjM4jNAcXpaeS6Ci7VggIXvOO0TPjbhCYw4pkqUjX9
	DLF4tZC6nJo50vVcbjblngQ4x1clyLXX8XzKs6BKjg/2OMwUq1X+MhKAiESddhLt5eHaKGpVH2k
	JGnFhD0pdH9885O1yYdFPHb1KriqJG4mqmf2bPMFy5cSYpO/HF7r2iM2IBLsOIUsCBRU44ECo7e
	c5oeUBtLQEnodp2f2Rvw1uI4OU3qMdgbsrWFES4cRCU6rY7b5RpS3Wz3VAvoKk/jk40F4=
X-Received: by 2002:ad4:5cc6:0:b0:88f:ca72:6ae8 with SMTP id 6a1803df08f44-89522189787mr84672066d6.45.1770301272999;
        Thu, 05 Feb 2026 06:21:12 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-89521bff53esm42252276d6.8.2026.02.05.06.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Feb 2026 06:21:12 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vo0EJ-00000000kPY-3gpa;
	Thu, 05 Feb 2026 10:21:11 -0400
Date: Thu, 5 Feb 2026 10:21:11 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Leon Romanovsky <leon@kernel.org>
Message-ID: <20260205142111.GK2328995@ziepe.ca>
References: <20260131-dmabuf-revoke-v7-0-463d956bd527@nvidia.com>
 <20260131-dmabuf-revoke-v7-7-463d956bd527@nvidia.com>
 <fb9bf53a-7962-451a-bac2-c61eb52c7a0f@amd.com>
 <20260204095659.5a983af2@shazbot.org>
 <ac33ad1a-330c-4ab5-bb98-4a4dedccf0da@amd.com>
 <20260205121945.GC12824@unreal>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260205121945.GC12824@unreal>
X-Spamd-Bar: ---
Message-ID-Hash: 75JBSCGUPSN43NZKOTMS6N6Q2U56K6WU
X-Message-ID-Hash: 75JBSCGUPSN43NZKOTMS6N6Q2U56K6WU
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>, Alex Williamson <alex@shazbot.org>, Simona Vetter <simona@ffwll.ch>, Jani Nikula <jani.nikula@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists
 .freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v7 7/8] vfio: Permit VFIO to work with pinned importers
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/75JBSCGUPSN43NZKOTMS6N6Q2U56K6WU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[amd.com,shazbot.org,ffwll.ch,intel.com,linaro.org,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,kernel.org,suse.de,8bytes.org,arm.com,nvidia.com,vger.kernel.org,lists,lists.linaro.org,lists.freedesktop.org,lists.linux.dev];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	RCPT_COUNT_TWELVE(0.00)[34];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[anongit.freedesktop.org:url,linaro.org:email]
X-Rspamd-Queue-Id: 26867F3E4A
X-Rspamd-Action: no action

On Thu, Feb 05, 2026 at 02:19:45PM +0200, Leon Romanovsky wrote:
> You don't need any backmerge, SHA-1 version of vfio-v6.19-rc8 tag is the
> same as in Linus's tree, so the flow is:

I'm confused what is the problem here?

From https://anongit.freedesktop.org/git/drm/drm-misc
 * branch                          drm-misc-next -> FETCH_HEAD

$ git show FETCH_HEAD
commit 779ec12c85c9e4547519e3903a371a3b26a289de
Author: Alexander Konyukhov <Alexander.Konyukhov@kaspersky.com>
Date:   Tue Feb 3 16:48:46 2026 +0300

    drm/komeda: fix integer overflow in AFBC framebuffer size check

$ git merge-base  FETCH_HEAD 61ceaf236115f20f4fdd7cf60f883ada1063349a
24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
$ git describe --contains 24d479d26b25bce5faea3ddd9fa8f3a6c3129ea7
v6.19-rc6^0

$ git log --oneline 61ceaf236115f20f4fdd7cf60f883ada1063349a ^FETCH_HEAD
61ceaf236115f2 vfio: Prevent from pinned DMABUF importers to attach to VFIO DMABUF

Just pull Alex's tree, the drm-misc-next tree already has v6.19-rc6,
so all they will see is one extra patch from Alex in your PR.

No need to backmerge, this is normal git stuff and there won't be
conflicts when they merge a later Linus tag.

Jason
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
