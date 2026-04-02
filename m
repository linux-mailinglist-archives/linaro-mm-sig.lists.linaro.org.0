Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GfZOIvzzWlLjgYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 06:41:47 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 71238383B09
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 06:41:47 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id F4202401F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 04:41:45 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id 37D8A3F7FB
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 04:41:42 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=G1KNFvl4;
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.51 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b9825ba7f9dso287457866b.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Apr 2026 21:41:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775104901; cv=none;
        d=google.com; s=arc-20240605;
        b=Zx1ePGfoYEV+7EHM2Hms4hL/pOYxojdJIfiAmrDWUjVcJBCAeQeOji/kc/D/+KKbDZ
         pVmUtQTohSYpBwRgFJ+ZbFuLXyBw0eRF1hyDvRAWygJFelJaSx65yhbocF5PBYPAeAbG
         mm79BdIYYrmY3zYJsCxpB29GTPqOzILITH/wCSpVC7KQ3HvRUyg73ZZw4iUW+hw75CI1
         rk/lKGEqEfB1EMqXwvDb0tXQ/lG1+q0/eU2X99OQS/sQlnvjl1udBhCe14m2LSXBwSFp
         kpZu1LnLw/uhQ4l10AyBfO2LDnYbieRQU7lnEtyYi65q+6qPqKG3cfu4hfftnZMXHxfb
         yqTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MsqizXttng34qJSYG1+nQy1RthHCf+vtWgekNCi7+qE=;
        fh=F5qKBKh+HQPJJ3TSdEWOlPsyB4TR6gz6664Teqak/Wk=;
        b=P/i0QQrueYHZaZmKkn2Sj+Q3SXarnbClqSFfLMgYzwYved3F4HrD53KRZm78BugwHu
         90yYyF+8Ky6Qdau9GM4AAdwVn8WjOvc+GACi6pniFu5iKRa7MdTdT32KVF+A3yWGE45D
         Zqmjs0hIF/6nkdYKdMjDZpKiabM+dBRrgTpnk4pIRjmeElIZ0i0CQdqfevePvQbLZZBt
         UgKe+mFtQNZXPpvh1XCsOyz93+7QV+lRHNQ2p15zJxKbhPSBzxzTCMK0DWngmBHNpBzx
         wFGf1rPE2dRVh8xS6c9tnYDkGLbYzy4aj80TIWIjEW/QIKcN+wT55dcbR7tYwPh+sB4F
         mIDw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775104901; x=1775709701; darn=lists.linaro.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MsqizXttng34qJSYG1+nQy1RthHCf+vtWgekNCi7+qE=;
        b=G1KNFvl4vb2RNwXIQj9Q8aCIbTlJvgLtLVZe3vApTxgAMNPyLNOzet1s/IAf6cl26g
         dIr/gXrlrIefSr83XH52a9GIYe2QL9RtVm91Gnvm8iJ/ujAnGP7Qd/jXQDYIc/S3Qk2K
         047dJna2xZwTwZo0rIEw4s5HIZriLcaC9TGwjjdym7QjvNv6Q8BwM7aTgqAZhbs4CdYq
         zZD+batbqbHogB8XHRFlfVIIkLO+qZXYNvmnzX5ihxN3OJb80cbXeRi8/6DXGXQ57dgw
         lZu9jUvA8pidtzyQLB/ggqs9GctK6u8US9WYdZ2s+r5mAWfn2AZBx3BkKJWp5g+c/xZc
         RRgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775104901; x=1775709701;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MsqizXttng34qJSYG1+nQy1RthHCf+vtWgekNCi7+qE=;
        b=bn7cK5NoJZr8EtANAe1RH/TQgDTjjKuZ9cuf3Fs8++mcseadlw638RZYl/hAmWCi9V
         k2jOTZTaFFFzsXbfy/UMryotAUhWpxIFJwACxJixq1dxzfGn7cU7ucYnn3qCLlgfs9bE
         nDToulpvLO9m6slSFDkKAJTodZ+NWtdx2oUdasHUYzH9lQ89njAXJzzE/qilmABu6i01
         Mq+d8PqhHRXF1iErCk3aPnnN3KZR+dfo7qMxf/DX2u1ev+k3yMDNgNNQlJ2/jiFM3ORC
         1uaux3CBoYl7goukI8VFmPtXmPNKrEF9hAgZlxJs+rfcvff/BQqXI/cUM/xWQaogmF0M
         ZVIA==
X-Forwarded-Encrypted: i=1; AJvYcCWxuNRRenZ27IOinG+UlTG6sxe+ISN8UX7MnKsyMf1VEHLkr1AIkSD8py6JOX9jwblTdukQDzrugJqJX84q@lists.linaro.org
X-Gm-Message-State: AOJu0Yza5IRsVa4waJQVN10FlonZ0htobnXAMmdbI+jx4QPWgZ1LfUlI
	5xwZj+LycTbNV06Fo8LzIGQzw1ukVOWqHuORYTrz2J9V7sHzDVxqyaRuAp6ZOakmrkvFFw8oYMx
	7atARrekW9VDI+Wr4vc8Xt+3fN7njtuHixjBQlWHXcpln
X-Gm-Gg: ATEYQzzsax25vDjdzSkOVDPuiihbjh8A9eX0r5BDcYtoIECT2VwUNA1fjvIx7Z1J3d1
	0RY7KdOKfVEkkzcZC7MIBVc4qaegFCZ+USRRRYzAsooCZfdPv0t1fMdKX8iijxzgCAYcqKwCBtT
	n5Kph2gzJJsPkjrHVAu6PjuimCYN6692HynGjsLlaTrpIJDDjqNBnv8E1UBp+J889tw6/vW3osR
	NyOCVHCxyGK4aGf2mg5/kPVHXInUmgSRBSndtlYRa7tE5z21ejKLUooCo9u+uuQJJSel39WdJC0
	HZPkDGrWwH5Ta6gXuEbF/4LPkuaq9x7mlHXsjX8=
X-Received: by 2002:a17:907:8694:b0:b93:8275:795a with SMTP id
 a640c23a62f3a-b9c46fedc2cmr44691666b.15.1775104901064; Wed, 01 Apr 2026
 21:41:41 -0700 (PDT)
MIME-Version: 1.0
References: <20260325192352.437608-1-jiri@resnulli.us>
In-Reply-To: <20260325192352.437608-1-jiri@resnulli.us>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 2 Apr 2026 10:11:29 +0530
X-Gm-Features: AQROBzCoqOVd8w8IT8q-wzhadg7W4rdnhn-HGLlu-Tm0fuk9WqMGP5WDrs9ZghY
Message-ID: <CAO_48GEUXpcFBiyJAMgTcGPSq56-mZ0qnO3FrFRM2LoGd8W6HA@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: -----
Message-ID-Hash: JXURMXFI5R2SJN35U4IABKZMNBYQB46Z
X-Message-ID-Hash: JXURMXFI5R2SJN35U4IABKZMNBYQB46Z
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 0/2] dma-buf: heaps: system: add an option to allocate explicitly shared/decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JXURMXFI5R2SJN35U4IABKZMNBYQB46Z/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.01 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	NEURAL_SPAM(0.00)[0.695];
	DKIM_TRACE(0.00)[linaro.org:-];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,linaro.org:email,resnulli.us:email]
X-Rspamd-Queue-Id: 71238383B09
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Jiri,

On Thu, 26 Mar 2026 at 00:53, Jiri Pirko <jiri@resnulli.us> wrote:
>
> From: Jiri Pirko <jiri@nvidia.com>
>
> Confidential computing (CoCo) VMs/guests, such as AMD SEV and Intel TDX,
> run with private/encrypted memory which creates a challenge
> for devices that do not support DMA to it (no TDISP support).
>
> For kernel-only DMA operations, swiotlb bounce buffering provides a
> transparent solution by copying data through shared memory.
> However, the only way to get this memory into userspace is via the DMA
> API's dma_alloc_pages()/dma_mmap_pages() type interfaces which limits
> the use of the memory to a single DMA device, and is incompatible with
> pin_user_pages().
>
> These limitations are particularly problematic for the RDMA subsystem
> which makes heavy use of pin_user_pages() and expects flexible memory
> usage between many different DMA devices.
>
> This patch series enables userspace to explicitly request shared
> (decrypted) memory allocations from new dma-buf system_cc_shared heap.
> Userspace can mmap this memory and pass the dma-buf fd to other
> existing importers such as RDMA or DRM devices to access the
> memory. The DMA API is improved to allow the dma heap exporter to DMA
> map the shared memory to each importing device.

Thank you for the patch series, it looks good to me.

Marek, if you are ok, please could you take it through your tree, with my
Acked-by: Sumit Semwal <sumit.semwal@linaro.org>

Best,
Sumit.
>
> Based on dma-mapping-for-next e7442a68cd1ee797b585f045d348781e9c0dde0d
>
> Jiri Pirko (2):
>   dma-mapping: introduce DMA_ATTR_CC_SHARED for shared memory
>   dma-buf: heaps: system: add system_cc_shared heap for explicitly
>     shared memory
>
>  drivers/dma-buf/heaps/system_heap.c | 103 ++++++++++++++++++++++++++--
>  include/linux/dma-mapping.h         |  10 +++
>  include/trace/events/dma.h          |   3 +-
>  kernel/dma/direct.h                 |  14 +++-
>  kernel/dma/mapping.c                |  13 +++-
>  5 files changed, 132 insertions(+), 11 deletions(-)
>
> --
> 2.51.1
>
_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
