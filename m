Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MJ5nBqcS4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id A095F411F75
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:47:34 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id B9D0540705
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:47:33 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id C4986402AE
	for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 17:15:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=YSMjRkq7;
	spf=pass (lists.linaro.org: domain of echanude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=echanude@redhat.com;
	dmarc=pass (policy=quarantine) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1771434900;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=xm1Nmfmv6nKrRksdRVhDRN/vEcg8hHt9kLWtxxaZhMo=;
	b=YSMjRkq7hUm60KdJ5Pu5kIGYhCT/81QFixY/3Xc8W7niG/KiP6wMDEy0mr6HOODgsDp7Q+
	fuFJg0YY7jU1HZUjJvyLhsFtXSmZz5rC/R8tX74w0StopzH/BO0I4rRJp3GojUYFpoDTx9
	GlT157no/AISC/zJm9Pu5lFa0wXWA+g=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-18-VFL1fl68MhG3vS-UmJleGg-1; Wed, 18 Feb 2026 12:14:59 -0500
X-MC-Unique: VFL1fl68MhG3vS-UmJleGg-1
X-Mimecast-MFC-AGG-ID: VFL1fl68MhG3vS-UmJleGg_1771434898
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89463017976so1615176d6.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 18 Feb 2026 09:14:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771434898; x=1772039698;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xm1Nmfmv6nKrRksdRVhDRN/vEcg8hHt9kLWtxxaZhMo=;
        b=DhU642cFowqCWWU6pwU3mBiicMqlhkdwazdfTNyqPDSgWmrbGjx8N5OwqjoEh3neqV
         pvbfFsbbbC1cvJh235u7K0bkKYXMDnNeloahs8YGCauCmjN2jEb9/79ATj6CUEe/wiIr
         b+iRBmjRpVWS3H850KhXNMyJy5sycRTRsyE3XIT1vksfRlZnRH8C8YVJPEAN755Ql2CV
         v/XrUm1twWBM2eu33iTr7dLrnjn2J/uvKz7AiHakHRjG0VI3TbsWrXOq6hg0J3CaDz/4
         dsGMWmPmX7/DjGX0j03ZD/4/8eFNpGTVeR9V2Dis0ldIfBJdZiuzi9k+OMUGlgFXky1R
         pMmA==
X-Forwarded-Encrypted: i=1; AJvYcCWCTh/XpXONtSN6f8gTGpXEVBrnLpGPiY6BIsgwGUxbK9bGywOAOdM4yrpVDMLHUu2tGAePLYB8dKUfCmgm@lists.linaro.org
X-Gm-Message-State: AOJu0YxY0LFr9Bnq4IdnVbhMIy4HgMP0BGx6sV0kpWHesAJnIGEGXETc
	mUiGecrQhf4NcA3kS9s6Voh8+Chh1vKmYCyLT19k7kSPB++8AiSVmASJIN2WQc12W7Vav+NCS72
	POFKGwg5QJ+07V0R7liazujtYF29Q7cidLRSw9mF9g+qfpy4vqrlmVRu/TkvgX4robPeV
X-Gm-Gg: AZuq6aJSJfoKWIChxrgWWV6DgIcpfriNJfT4O2653rajFRy61IB4DXTWknhcCAM3raR
	NAYQKpL9/fVRJaAFEyHlJ1cSGiRGNFCsbI7G/NwJUxXYFlwneMh2/8k3qq40jZvLudoA9p9nlgu
	re4StDhKQpp5LQsdR/7YTr4HdNmXjILQCjomqdc771wp96fEAVSZf7DNmEo53G+/cksj/aTMIDG
	eW7xNq2unCueguDc+6qzxUWrYn08VSNz6ap5jbe4wrlpbMIr0SIl05ZDxTT19IPIqve+SkukY+m
	SoTwadS4TEnwT539jveaO8KKsoKMmn8Rpq0i1q/juD9MA+eIibglqrRbjBX3bkm0Z50/g92FTAF
	nAAQb56AcZSkRZkk+6RKlOsNV61zrkEP6v7cDJ19bLJkVzkVRh0pP0sARkSF24yA=
X-Received: by 2002:a05:6214:c21:b0:894:73b9:d31c with SMTP id 6a1803df08f44-8974047b86cmr215132976d6.33.1771434898344;
        Wed, 18 Feb 2026 09:14:58 -0800 (PST)
X-Received: by 2002:a05:6214:c21:b0:894:73b9:d31c with SMTP id 6a1803df08f44-8974047b86cmr215132386d6.33.1771434897854;
        Wed, 18 Feb 2026 09:14:57 -0800 (PST)
Received: from localhost (pool-100-17-19-56.bstnma.fios.verizon.net. [100.17.19.56])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8971cca6fddsm186357896d6.19.2026.02.18.09.14.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Feb 2026 09:14:57 -0800 (PST)
From: Eric Chanudet <echanude@redhat.com>
Date: Wed, 18 Feb 2026 12:14:09 -0500
Message-Id: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/23NQQ6CMBCF4auQWTumLQSpK+5hWIx0arsokBYbD
 eHuVuLS5feS+WeDxNFzgmu1QeTsk5+nAnWqYHQ0PRi9KQYlVCuk6tAEuj8tOqYFx0DFHNA2Ugl
 SxjbUQTldIlv/OrK3odj5tM7xfXzJ8rv+grX4H8wSJdZtc2HSumat+8jG0Xoe5wDDvu8fvz0pl
 7kAAAA=
X-Change-ID: 20260128-dmabuf-heap-cma-dmem-f4120a2df4a8
To: Sumit Semwal <sumit.semwal@linaro.org>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>,
 "T.J. Mercier" <tjmercier@google.com>,
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>
X-Mailer: b4 0.14.2
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: _kRiHcQ1GMI6CiwKN0aUFVlUYVeD86k445byLsvfzVg_1771434898
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: ----
X-MailFrom: echanude@redhat.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: KE5LXPMKQIXXAOIK6EUQBWMPNN2R74XM
X-Message-ID-Hash: KE5LXPMKQIXXAOIK6EUQBWMPNN2R74XM
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:40:30 +0000
CC: linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Maxime Ripard <mripard@redhat.com>, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Eric Chanudet <echanude@redhat.com>, Maxime Ripard <mripard@kernel.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KE5LXPMKQIXXAOIK6EUQBWMPNN2R74XM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [2.99 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	DATE_IN_PAST(1.00)[1367];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[redhat.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[echanude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.701];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: A095F411F75
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

An earlier series[1] from Maxime introduced dmem to the cma allocator in
an attempt to use it generally for dma-buf. Restart from there and apply
the charge in the narrower context of the CMA dma-buf heap instead.

In line with introducing cgroup to the system heap[2], this behavior is
enabled based on dma_heap.mem_accounting, disabled by default.

dmem is chosen for CMA heaps as it allows limits to be set for each
region backing each heap. The charge is only put in the dma-buf heap for
now as it guaranties it can be accounted against a userspace process
that requested the allocation.

[1] https://lore.kernel.org/all/20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org/
[2] https://lore.kernel.org/all/20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com/

Signed-off-by: Eric Chanudet <echanude@redhat.com>
---
Changes in v2:
- Rebase on Maxime's introduction of dmem to the cma allocator:
  https://lore.kernel.org/all/20250310-dmem-cgroups-v1-0-2984c1bc9312@kernel.org/
- Remove the dmem region registration from the cma dma-buf heap
- Remove the misplaced logic for the default region.
- Link to v1: https://lore.kernel.org/r/20260130-dmabuf-heap-cma-dmem-v1-1-3647ea993e99@redhat.com

---
Eric Chanudet (1):
      dma-buf: heaps: cma: charge each cma heap's dmem

Maxime Ripard (2):
      cma: Register dmem region for each cma region
      cma: Provide accessor to cma dmem region

 drivers/dma-buf/heaps/cma_heap.c | 15 ++++++++++++++-
 include/linux/cma.h              |  9 +++++++++
 mm/cma.c                         | 20 +++++++++++++++++++-
 mm/cma.h                         |  3 +++
 4 files changed, 45 insertions(+), 2 deletions(-)
---
base-commit: 948e195dfaa56e48eabda591f97630502ff7e27e
change-id: 20260128-dmabuf-heap-cma-dmem-f4120a2df4a8

Best regards,
-- 
Eric Chanudet <echanude@redhat.com>

_______________________________________________
Linaro-mm-sig mailing list -- linaro-mm-sig@lists.linaro.org
To unsubscribe send an email to linaro-mm-sig-leave@lists.linaro.org
