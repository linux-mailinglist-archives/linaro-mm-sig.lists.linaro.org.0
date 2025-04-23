Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 79005A990CD
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Apr 2025 17:23:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 33C9B461E8
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 23 Apr 2025 15:23:47 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	by lists.linaro.org (Postfix) with ESMTPS id E892C459B1
	for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Apr 2025 15:23:32 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=yCKRBsi+;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.48 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e6f4b3ebe5so1029000a12.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 23 Apr 2025 08:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745421812; x=1746026612; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sBJXxI+VnkOvdG03h/gTU2mlJ2vsoYyyCCSIoMLfBQ4=;
        b=yCKRBsi+K6pbwwzTameJmkY8eMFA0v12+zK7/gCOf+cvD2rtTazBZk9XVc/luvrqJU
         /q6UAf9yRrM+ksJAXTcrvhKIl5QFOZPb2CzFjN6KG6IWGvGhsUeyX7CKOdF/+IiCLflv
         D2vpIFmjwpybfv8KSHNOEk2gpZ590ztAECHkzfr2SULP0RqOYM6s5Hxu9sorGFbgiMpU
         iluJ4cFuDe4jwQe72xqz5Lp+S5EAliwU52Hxa4S1AoBSYISoSOZRcR96Raz2o1XuslFJ
         iBIMbeEbNJPdLLhVRmvBb2jZdtjbzb6MFay7DYU8wOVch7AG2MXPnCI4uzvFzIH9xbmo
         Hdtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745421812; x=1746026612;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sBJXxI+VnkOvdG03h/gTU2mlJ2vsoYyyCCSIoMLfBQ4=;
        b=hv278NtnkjF0/hQEAjIHaIj2ufGSuAPSglXmxRX5zgk/Lc3zpd3EqH7xDHIrh19EOb
         s5WCvV3DQbMt45YlRDUU9LcEWhDNUloIDUM6a6HbNJ4U3LDIZ4pd6qMXETcnyRGd2mGT
         fyn6IxfTYAn9eycyRaGxU9cdcNCBnpy0JB0u5yaizDJm5qxpgTk+ZBK2WQHh/JPh2nOq
         9kdPdrdr7+zcLUMZwW7n/qckh79MTbk+zkJ/cPartk1pKaTCq3aBlAko4JjzHLp8Eanv
         k+R6R6B7nhzf0uj5ZojcydWV3Tp67+yddAjsY8Rj4YLNSaC3KRGCTSEAV3lAO0DF5WtY
         3eyg==
X-Forwarded-Encrypted: i=1; AJvYcCUNtNqycuSNYoqbutSxPbCjldF2k1ocFyDtgpVRhONE3tE7OxD4NtXRvzPNukBgPaUwQEOVQNvHQ4vShXcT@lists.linaro.org
X-Gm-Message-State: AOJu0YzplTE58v8VY8K1pp+MWRfoXMeorAsMBGQoQGmFbMYE7HE0vhxT
	RwqjnrWcCnf84bbt5MwBHlKfe0rCVWmHxeUEUhueIQLffrSbuI19eHW4D3s2NeOo4DVe0OP4OjJ
	fuZP3r0CGDEms6xYtGQWWXR1bAfv092BMoWwHtUC9
X-Gm-Gg: ASbGncstjpuakNQHX9f9a/LeZRz+1vYxjRMkKPdiu07hlqfe+TDJa2Wkn/mwaWG2FNP
	ZH2IZGCjYFBlyaVBoAUKGFTEODwIEQdlwK656O6YL6cROi3raSKfz3cbVxT3JzjUS7+CNdmqZi6
	rANXERubv/pm1umKYOYLKUHu0=
X-Google-Smtp-Source: AGHT+IGPu59FaDGH5BEkXJJ7svic3UgDeQqapGND2AunCs9qXYZnqI4o1kWAywADMLlCU4WGGSFlE+fbrGMmBQWyplk=
X-Received: by 2002:a05:6402:524e:b0:5e5:d9e5:c4d7 with SMTP id
 4fb4d7f45d1cf-5f62860fdcdmr16126430a12.28.1745421811890; Wed, 23 Apr 2025
 08:23:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250422191939.555963-1-jkangas@redhat.com>
In-Reply-To: <20250422191939.555963-1-jkangas@redhat.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Wed, 23 Apr 2025 20:53:20 +0530
X-Gm-Features: ATxdqUESCavL9HzimYlvlWteFP-krmBUrVLSD6RMVwG58YA294DJfz9zHgN2yXY
Message-ID: <CAO_48GELW3ax5Q3h9=qpWBJJa0Uy3eJwFkEcbaz4ZT56Gq513A@mail.gmail.com>
To: Jared Kangas <jkangas@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: E892C459B1
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.208.48:from];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.48:from];
	URIBL_BLOCKED(0.00)[linaro.org:dkim,mail.gmail.com:mid,mail-ed1-f48.google.com:helo,mail-ed1-f48.google.com:rdns];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	R_DKIM_ALLOW(0.00)[linaro.org:s=google];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: P2EH6MSU3GSVIVR2GCA6I7JWEAEA2SMU
X-Message-ID-Hash: P2EH6MSU3GSVIVR2GCA6I7JWEAEA2SMU
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, mripard@kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/2] dma-buf: heaps: Use constant name for CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P2EH6MSU3GSVIVR2GCA6I7JWEAEA2SMU/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hello Jared,

On Wed, 23 Apr 2025 at 00:49, Jared Kangas <jkangas@redhat.com> wrote:
>
> Hi all,
>
> This patch series is based on a previous discussion around CMA heap
> naming. [1] The heap's name depends on the device name, which is
> generally "reserved", "linux,cma", or "default-pool", but could be any
> arbitrary name given to the default CMA area in the devicetree. For a
> consistent userspace interface, the series introduces a constant name
> for the CMA heap, and for backwards compatibility, an additional Kconfig
> that controls the creation of a legacy-named heap with the same CMA
> backing.
>
> The ideas to handle backwards compatibility in [1] are to either use a
> symlink or add a heap node with a duplicate minor. However, I assume
> that we don't want to create symlinks in /dev from module initcalls, and
> attempting to duplicate minors would cause device_create() to fail.
> Because of these drawbacks, after brainstorming with Maxime Ripard, I
> went with creating a new node in devtmpfs with its own minor. This
> admittedly makes it a little unclear that the old and new nodes are
> backed by the same heap when both are present. The only approach that I
> think would provide total clarity on this in userspace is symlinking,
> which seemed like a fairly involved solution for devtmpfs, but if I'm
> wrong on this, please let me know.

Thanks indeed for this patch; just one minor nit: the link referred to
as [1] here seems to be missing. Could you please add it? This would
make it easier to follow the chain of discussion in posterity.
>
> Changelog:
>     v2: Use tabs instead of spaces for large vertical alignment.
>
> Jared Kangas (2):
>   dma-buf: heaps: Parameterize heap name in __add_cma_heap()
>   dma-buf: heaps: Give default CMA heap a fixed name
>
>  Documentation/userspace-api/dma-buf-heaps.rst | 11 ++++---
>  drivers/dma-buf/heaps/Kconfig                 | 10 +++++++
>  drivers/dma-buf/heaps/cma_heap.c              | 30 ++++++++++++++-----
>  3 files changed, 40 insertions(+), 11 deletions(-)
>
> --
> 2.49.0
>

Best,
Sumit
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
