Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAKhIXQUEGphTQYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 10:31:48 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B585B09E1
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 10:31:48 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DADC040993
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 22 May 2026 08:31:46 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	by lists.linaro.org (Postfix) with ESMTPS id 7960F40984
	for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2026 08:31:36 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=E1GwQFaa;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.210.44 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-7de4a9cb8eeso6743523a34.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 22 May 2026 01:31:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779438696; cv=none;
        d=google.com; s=arc-20240605;
        b=em8+E/LmNdecF86nyHMTgygzwerkzxNzC6uKi6qzvgNAcy7chxZXKfoaEKGbmQ0QJH
         aVFE16/dHwTi545k88Oa5J46F7Rseubq86EFqfGCrldZSu7O6uPvnXE6JOzhwU5VpV1u
         jfEFCjap0VscFl4CrmyGK0wMBlTTXS6Oxkn5vZ+pyQOsUtxXXsoRPAT/vBucVpfbiAOx
         o2OViVJb2zimIdGCaNP7bWMGB/QlYX+L4LvhLCXKNx0yS2XU4awD5DcBmS8WHyjMimq2
         3DumtRbRfQQhVCbHLt4fJmgNDdoBYuxh3+Y9A+BjOHFVpRBe0DO6aUfogzahfg2wLVp0
         szsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9ThiWo7n+RoKO5Fmewf5eOm/6gdGdTn6HMevgFDP/mU=;
        fh=6FPKpwN25owXQg+nzoOyIrP6M7fjtnvCEZI4XcgLWzg=;
        b=drkEJYXLDaJCOaHtxMQSBHVKLyfyeNl4XJlMMTXt7e0thGP1beD1CUB2KCM6f+KizH
         kzmWbhEgh/RUUwW8BVdCZpUfZVS6gOnIvhJ6F+Oh6DEBBT5Pt48DPLPfRi7qpHYSZBqY
         j23F6LhLkkbi6xqgnJRRHar3R4jx+DMIJQwm0z2f3tnPFRWkYpDXGAupjZjxFQ/wo4uz
         sszcF9+CvQ1+WOihqD1Q3WDWxP4OLpDkkjoXZ/qZcLKRTyKzGQnLC61mrGO609JPNRNq
         KjPFXBHAX0Q/rDyPyDEsSow2Kab/Gm3tOg/8eZvI1S3YL7tndvZtjbrclJDyrwWBT5vK
         vfOQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779438696; x=1780043496; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9ThiWo7n+RoKO5Fmewf5eOm/6gdGdTn6HMevgFDP/mU=;
        b=E1GwQFaaEUIOc9QLEk5e4+Bl8iW6ZvGPVZYk5ZLOCvDSHPwhImDzrMMrvsUIx6UKrh
         kc73F4Lb/GcT1KWjg1VsHOicUY8CMpga52b4GDZFBUekilM8mkfvwpA0aaKOa/iTpd5u
         AFk1SMFbt+96+UzdlT+W4mAnHEhtfM7ovpPYvNJOOL7oYenjVrO5ichAHgm9wc0NOIYs
         87yltu1tKC5M2BagiAgPiHuvzaQhEkCJAAQG12bv9aDFkCVlEK350uGXfzROxhMgxaa4
         WaN2pV60/qcENIYp6s6fdVUQAeMiBqnp4slMhADYzazxrijOmcxmPUwkvdDuPF+5nC+e
         5PMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779438696; x=1780043496;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9ThiWo7n+RoKO5Fmewf5eOm/6gdGdTn6HMevgFDP/mU=;
        b=r5P+Xq/NZh+M/uWsjhrAO0Woei6fulUheICyP6FzQwEUJuZI90ddypHETNxCSTNDFN
         84XeCkzUFqnUhy/HAUUKUQjYCwFyFTiEk9vcwa8/J6RJ58VIbOVpJy97cf/GuOvOOYLo
         FC9F+HPQt6fMj1p1Aj1JI6MVb4nybC4yc1BI2upJzEWvtk/IVXJV0Oi9m9kDHXBCh+se
         H8YetV+q17ns/9+GpTW8mJzKSSII+h6uZQrMRK2M+K+C6uu0Zrff1vb3Qm2t43cXljw3
         KXFsMlX4cys1QBN2Fg3WtLV1fII5ugQzLGbI1zhx+J+wQt3gI3tw8z88u25iW7gI4Aiw
         L6Ag==
X-Forwarded-Encrypted: i=1; AFNElJ8VF3jdrYVQwy94spBsuHXV5tdEQZoSoc5XqGPlFHKgSEMvIshjPZxgzMFL5bw5EgeUqqkPuK4smTIiQezs@lists.linaro.org
X-Gm-Message-State: AOJu0Yz/VQJv9n7nEDMI8uRYoOJx+7Z3ZpZA2ywCRp9yzJlAW9x0wYHL
	biYLNfNH0xYYBX2Li9n74bncNOQIGBsM78xJNnBiLAsOUGtHeGjskqKOIZ4FnqrxnLQMYetqp5z
	xXgf7Is6PmiHN79lQm8v83NbkJ75inig=
X-Gm-Gg: Acq92OEWfh3O1yQLZ0PuNtNNv5Ok8QUxBJMRvvHZzDcEIFhSvpG4R7ZeOsI6IcrjS44
	sF/dsNDX/45t/sLKbFKp4yGuoGU++BTb2/RKnYmZI0tCUx7/xcgycd95sFVZp/x4nwya1SBXwcg
	VgXeKrH6TxXzyGEinLhGEws1m8MunrT4WY3+BFZsEAc9pUyxuQEaXR6svzZEx7EPVOB7gWasREh
	L0X8flCs4nn7TM4j+Q/e6uPXT3VBg8349ipwKBvaSVCzQdfS//k3vPQQvMmWVCNMEiXgNE/FHIr
	mK2SFXf31Q==
X-Received: by 2002:a05:6830:4707:b0:7d7:570b:6800 with SMTP id
 46e09a7af769-7e5feef54dbmr1560827a34.23.1779438695670; Fri, 22 May 2026
 01:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <20260521104335.28978-1-mikhail.v.gavrilov@gmail.com>
 <20260521150841.20625-1-mikhail.v.gavrilov@gmail.com> <20260521150841.20625-3-mikhail.v.gavrilov@gmail.com>
 <55aee3e4-9003-4694-b0fa-277a8c2bbbc4@amd.com>
In-Reply-To: <55aee3e4-9003-4694-b0fa-277a8c2bbbc4@amd.com>
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Date: Fri, 22 May 2026 13:31:23 +0500
X-Gm-Features: AVHnY4LSbTM-4tTWAVOgrISJCrLtgJ-GyODBgDohHuk9RVR7oadaYTWLeSuLNrM
Message-ID: <CABXGCsPPY3qX7Ad-a7==nmA5R7aejCTCrmWYpn-9OQQU=1eMMA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -----
Message-ID-Hash: MT3WT4JXIE2GQQAT27BA7JDJMP2I7YLO
X-Message-ID-Hash: MT3WT4JXIE2GQQAT27BA7JDJMP2I7YLO
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 2/2] drm/amdgpu: fix recursive ww_mutex acquire in amdgpu_devcoredump_format
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MT3WT4JXIE2GQQAT27BA7JDJMP2I7YLO/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.455];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.linaro.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:rdns,lists.linaro.org:helo,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 24B585B09E1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VGhhbmtzIGZvciB0aGUgcmV2aWV3LiB2NiB3aWxsOg0KDQogLSB0cmltIHRoZSBjb21taXQgbWVz
c2FnZTogZHJvcCB0aGUgcmVwcm9kdWNlciBwYXJhZ3JhcGgsIGtlZXAganVzdA0KICAgdGhlIHBy
b2JsZW0gZGVzY3JpcHRpb24gYW5kIHRoZSBzb2x1dGlvbg0KIC0gbW92ZSB0aGUgSUIgZHVtcGlu
ZyBpbnRvIGl0cyBvd24gZnVuY3Rpb24NCiAtIHJlcGxhY2UgdGhlIGJyZWFrLWJhc2VkIGZsb3cg
aW5zaWRlIGRybV9leGVjX3VudGlsX2FsbF9sb2NrZWQoKSB3aXRoDQogICBnb3RvIGVycm9yIGhh
bmRsaW5nLCBhbmQgZHJvcCB0aGUgbm93LXN1cGVyZmx1b3VzIGBsb2NrZWRgIHZhcmlhYmxlDQog
LSBub3QgY2FsbCBkcm1fZXhlY19maW5pKCkgaW4gdGhlIGxvY2tpbmcgaGVscGVyIG9uIHRoZSBl
cnJvciBwYXRoDQoNCk9uZSB0aGluZyBJJ2QgbGlrZSB0byBjb25maXJtIGJlZm9yZSByZXNwaW5u
aW5nIOKAlCB0aGUgIW1hcHBpbmcgY2FzZSBpbg0KdGhlIGxvY2tpbmcgbG9vcDoNCg0KbWFwcGlu
ZyA9IGFtZGdwdV92bV9ib19sb29rdXBfbWFwcGluZyh2bSwgcGZuKTsNCmlmICghbWFwcGluZykN
CiAgICBjb250aW51ZTsNCg0KWW91IGNvbW1lbnRlZCAiVGhhdCdzIGFsc28gYW4gZXJyb3IsIGl0
IGNvdWxkIGJlIHRoYXQgd2UganVzdCB3YW50IHRvDQpwcmludCB0aGUgSUIgc3RhcnQgYWRkcmVz
cyBpbiB0aGF0IGNhc2UuIg0KDQpNeSByZWFkaW5nOiBhIG1pc3NpbmcgbWFwcGluZyBpcyBub3Qg
ZmF0YWwgdG8gdGhlIHdob2xlIGR1bXAuIEZvciB0aGF0DQpJQiB0aGVyZSBpcyBzaW1wbHkgbm90
aGluZyB0byBsb2NrLCBzbyB0aGUgbG9ja2luZyBsb29wIHNob3VsZCBtb3ZlIG9uDQp0byB0aGUg
bmV4dCBJQiwgYW5kIHRoZSBjb250ZW50IGxvb3AgdGhlbiBzdGlsbCBlbWl0cyB0aGUNCiJJQiAj
TiAweDxhZGRyPiA8ZHc+IiBoZWFkZXIgd2l0aCBubyBib2R5IChpdCBhbHJlYWR5IGRvZXMgdGhp
cyB2aWENCmdvdG8gb3V0cHV0X2liX2NvbnRlbnQpLiBUaGUgZHVtcCBjb250aW51ZXMgZm9yIHRo
ZSByZW1haW5pbmcgSUJzLg0KDQpTbyBpbiB0aGUgbG9ja2luZyBsb29wIEknZCBrZWVwIGBjb250
aW51ZWAgZm9yICFtYXBwaW5nLCBhbmQgcmVzZXJ2ZQ0KZ290by1hYm9ydCBvbmx5IGZvciByZWFs
IGVycm9ycyAoZHJtX2V4ZWNfbG9ja19vYmooKSBmYWlsdXJlLCBWTSBub3QNCmZvdW5kKS4gSXMg
dGhhdCB3aGF0IHlvdSBpbnRlbmRlZCwgb3Igc2hvdWxkIGEgbWlzc2luZyBtYXBwaW5nIGFib3J0
DQp0aGUgd2hvbGUgSUIgZHVtcD8NCg0KLS0gDQpUaGFua3MsDQpNaWtlLg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
