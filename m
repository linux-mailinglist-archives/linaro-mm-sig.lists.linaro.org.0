Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IPy9L6wc8mljnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:58:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B31149669E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:58:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 5A34F4043C
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:58:51 +0000 (UTC)
Received: from mail-wr1-f73.google.com (mail-wr1-f73.google.com [209.85.221.73])
	by lists.linaro.org (Postfix) with ESMTPS id 4B7DE40475
	for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 08:11:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=LyydOSKR;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of 3Mr3xaQkKDckp0xrt6Dw0v33v0t.r310x2p63-11-7xv0x787.0x2p63.36v@flex--aliceryhl.bounces.google.com designates 209.85.221.73 as permitted sender) smtp.mailfrom=3Mr3xaQkKDckp0xrt6Dw0v33v0t.r310x2p63-11-7xv0x787.0x2p63.36v@flex--aliceryhl.bounces.google.com
Received: by mail-wr1-f73.google.com with SMTP id ffacd0b85a97d-44696b11265so2192991f8f.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 29 Apr 2026 01:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1777450291; x=1778055091; darn=lists.linaro.org;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:from:to:cc:subject:date:message-id:reply-to;
        bh=5lr17Jge9GgkiGKrAiGt8x+/cqgjgJIF0Kac8aOzuZk=;
        b=LyydOSKRVuqRB/PpCZu25aaPYoguvrqxSequRRB3BkU3VPAGOerq/5o+JJueChGVPH
         /hP29ih3I7S54uOib+I/eQJzY0IqLQjDqjWIVbuXa5TUNyhBsKlFG1Dknba0QTJFg2Ed
         ma6yNR+O7NAls1W/VWTbAKVisqb6gyfBVP//WH/FGUMAVgu8auPP7wME9JdLdqmVfF+I
         B1Lw0SeJRx5+VlEIFKIG1nFcEK+FgO0IOU1iFud13nC3CVuSiD4vYOaNjwsDJXChN15d
         ct2qOCUvTfxBve9QQnMGECpeeUhylOynE0PbE04Em6MXsCFNEQ3DLg9jHuyWAcriV2rL
         dxZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777450291; x=1778055091;
        h=cc:to:from:subject:message-id:references:mime-version:in-reply-to
         :date:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5lr17Jge9GgkiGKrAiGt8x+/cqgjgJIF0Kac8aOzuZk=;
        b=LnOgvy8ig++l6qG1dEjQ5fpgPnnBwtP6U/lWmIGDPjl+SMA3osX7TJMRpxIJp97czE
         dwHsdlXuAFB6gWzp7h3dngy4MblzuV2j5SQACYR5U00hvTE9rFFF9MWKag9/lysieW0t
         j44oumBOQfTIgFM+S79v9PC23SsvtHaX7dl/FipGqbn2mK0PspFjvCiDdee669CJrWgF
         v+mYbWg+UGmKIoG5GfM9EX94ZhLNsVhmY2OmieYWhp9aIeqadXxSRPYVFLTLO7c1zfXe
         J9iTE72P/uQSaxuuu/GGv02Ne+Ood7QyHZaTh81NaNv80s5XqZvS1lGB6C4IqfNjOitR
         OcDg==
X-Forwarded-Encrypted: i=1; AFNElJ+gGpedXR0jFSeVe8hOEOe+75VfJMKdXomEQiBf9YBhADWVYFMopeFw2y6/tcw2qBQ6BpVy8ylg+colOvBr@lists.linaro.org
X-Gm-Message-State: AOJu0YysHVnBN94LcWOy0+LoX5eUhuZWLEy8QQfiQrETRNy+yrOft/gm
	2hHdoVE0h7OM1JYB2/QptL23llOpM8D65UzVzM1UySIKHYXJnMaG1uKmplYEDli9KNyeRU/p/wg
	69KypwzX6bQKPKIEi7g==
X-Received: from wrhm3.prod.google.com ([2002:a05:6000:1803:b0:43f:e56f:629b])
 (user=aliceryhl job=prod-delivery.src-stubby-dispatcher) by
 2002:a05:6000:186d:b0:43b:3d02:7806 with SMTP id ffacd0b85a97d-446494ea007mr11517494f8f.28.1777450290684;
 Wed, 29 Apr 2026 01:11:30 -0700 (PDT)
Date: Wed, 29 Apr 2026 08:11:29 +0000
In-Reply-To: <20260428190605.3355690-4-lyude@redhat.com>
Mime-Version: 1.0
References: <20260428190605.3355690-1-lyude@redhat.com> <20260428190605.3355690-4-lyude@redhat.com>
Message-ID: <afG9MTFxCbKE8OOZ@google.com>
From: Alice Ryhl <aliceryhl@google.com>
To: Lyude Paul <lyude@redhat.com>
X-Spamd-Bar: --
X-MailFrom: 3Mr3xaQkKDckp0xrt6Dw0v33v0t.r310x2p63-11-7xv0x787.0x2p63.36v@flex--aliceryhl.bounces.google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: K6JYJY2HKEW7P4MWVB4LISE2QH4WG3UT
X-Message-ID-Hash: K6JYJY2HKEW7P4MWVB4LISE2QH4WG3UT
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:31:06 +0000
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v13 3/5] rust: drm: gem/shmem: Add DmaResvGuard helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/K6JYJY2HKEW7P4MWVB4LISE2QH4WG3UT/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 4B31149669E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.49 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[26];
	RCVD_COUNT_THREE(0.00)[3];
	GREYLIST(0.00)[pass,meta];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	NEURAL_SPAM(0.00)[0.921];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,nvidia.com:email]

On Tue, Apr 28, 2026 at 03:03:43PM -0400, Lyude Paul wrote:
> Just a temporary holdover to make locking/unlocking the dma_resv lock much
> easier.
> 
> Signed-off-by: Lyude Paul <lyude@redhat.com>
> Co-authored-by: Alexandre Courbot <acourbot@nvidia.com>

Needs Alexandre's SoB.

> +/// Private helper-type for holding the `dma_resv` object for a GEM shmem object.
> +///
> +/// When this is dropped, the `dma_resv` lock is dropped as well.
> +///
> +// TODO: This should be replace with a WwMutex equivalent once we have such bindings in the kernel.
> +struct DmaResvGuard<'a, T: DriverObject>(&'a Object<T>);

We will also need this in GPUVM, so I don't think it needs to be private
to shmem.

Alice
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
