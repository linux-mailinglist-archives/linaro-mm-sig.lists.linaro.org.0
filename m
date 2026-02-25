Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJX2BC9Tn2mraAQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:53:19 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA4C19CF32
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 20:53:18 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 9A80E402AF
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 25 Feb 2026 19:53:17 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	by lists.linaro.org (Postfix) with ESMTPS id 4B06A401AF
	for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 19:53:15 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=xWLouGJI;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.51 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-48371d2f661so12305e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 25 Feb 2026 11:53:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772049194; cv=none;
        d=google.com; s=arc-20240605;
        b=B3brhcbAvUhLcEzyeGJpmvp6wa7Z81pWWBK/gwMTmfk5YSjMvQSvHIronrnH5t/0dT
         mBGKIIfRQW7xEu3o5VznxxMbqOx8HkXB9x3L+cUGU/Ng4o7Zln7VGaVOKDvBLZeoZO9I
         c/sLoKdyp4Z7oEG6v4Js/YKryabDO9EnUHN0/4UGXIKG6zZveTcdwqT0gqACT2CdJRAb
         Y6S8QGXVb5JYXzIxQLsdCkGihP7oi16V3txpXSrR75KezrhIIkXMuqxZeMq61Hha/9+O
         oXTL6Z0am5to9qJ+VKlrre08JiDLh22hd+3m70h3rwfdBJtldaKFZS2F9j7jD//GX3vo
         t24Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hACZJJD++mSXl52TK006Yejdc4mpWUq5FI/WaqBAg/g=;
        fh=hS1KgIYZFdG0gUOhk1Lno5bapoTs42TNsoBJe56Ip3M=;
        b=LG50ZQwS1iFigtLmyguABvNxNoEl1qNCvwTgQVJkzOBviIYGMLX6p66DRKpQdBF+Qu
         iExcskFyUdFx7cF7uYoSRxppT27gGYvzaM1yjpGtuPduITcwLiJrXlh7X1in0f36Efju
         D0xFA1YYVFJmBcoUkcEwWPnN2HNarotbcIcrMsnkB30IfhYGf60l3FXC1PgtXfvb4amf
         sw/hYDeZnx6MVPo3x+r/SX8FLvuSdw1YRBQlTcRB3vO0+Bq96lFbCyXhXkfwG5uODLAB
         BzZHl88F8LGqmnNM/Xm+wXGsNJB8BAs67LvNZ1+6ouo1rhV/AfXsJ3C5yFW2atg8kykw
         pM2Q==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772049194; x=1772653994; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hACZJJD++mSXl52TK006Yejdc4mpWUq5FI/WaqBAg/g=;
        b=xWLouGJIKKOdgovxthoXsc7oNLeaOYwG/4oUEjGslSZryPn9NYoTQXZwMaBQKJgMgB
         541n4pDQ6pvDRCue3HaKExrc/MbYdVVw9k60g6y/onYQ4UkxmQ/fQbXp3ekrhoLwfZcV
         vW8Nd5DOQvieYFEsVL3DWWf38cVQpYRl7th57g6xty0XgVRiXapNBEldMgd5g8QTW+eY
         Z31hFAlf0o6flkSMCa8eWLWAheX/9mNUP62GrhinWuOuZbCSf/lBpvCvr2NumD9wrYLU
         xZmkwF+xmJX4ovgBuwkkQ97+BFYMn3MqkNv2Y7CgwDTCnfA5Vgyr1LdjeahYF4Fglpvk
         dzLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772049194; x=1772653994;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hACZJJD++mSXl52TK006Yejdc4mpWUq5FI/WaqBAg/g=;
        b=d+v7Mysin4XO/S3fqI7879aZpxcT1/r9Lt5swW9JLLlzNeZ5mqPZkJ3L1Z68nGmL+o
         wgXNzH7572tp3N6tfTHpOlLRcHalWcG2kavvksU+7lp3SrYxbUGHU0mu29hTNYNq1oqh
         U54cHmLMYrya4InhGY8Oyl/TKMETws9fngGo2i6Pcpc02g2inOqB7WSyGk6W4efaMEoV
         K0u++GiSmJ83Nbc8do91j7LLcrzq1NyJ9zf847qJ33ARAiF2J4A0k5ePxddSsqurJhoJ
         YauiVeSAcjG7nYYEox3xWZW/SExWPIIXf/skCcE7BRJK2pk64RY+QkKm9DsudQoW6b07
         l3oQ==
X-Forwarded-Encrypted: i=1; AJvYcCUEoWZ7QsrH07t4FSqtuDVr5h27E8umnZvuJFnivIaQ4CA7wobpJw2HXqt/jvW69RMIR6i9jGj3NftQTSoe@lists.linaro.org
X-Gm-Message-State: AOJu0Yx++IalDDFlRaUF1U+f+HfEaEyzcRf7/pXI4Pto2+X2J3D82Bhf
	uDZ8yKPlMLxfIeMusnoynsL3rjlsNyuIWFQNKmZqMvNTnR/36k8R9dM1ykswt2kZUuHa9a5/GLi
	CIqB/617sSmloFTr6uKqhvZPlF9e5AzKhrSaicqGV
X-Gm-Gg: ATEYQzysk/w1yBDHiVjYtnJb/I02+ZUAhWJw+H6kQd8v3aBh2ugDxzd7IhJI5tFFzDG
	kr3w35LPDds5iMl+I8YtQOJmTIJxNxU7GAcBOewF7V+FqQ+zW9B8mlq6UgMtyrHF3fRDiyg6xdP
	TjV+zEmwHusjeE2pTce4aoZn++x3lHI2ytFGSZNUvKHSSFFL/U0xFGhOZOHU1bZMSskwJrqZWau
	dyjhKSa7fCwwPAhl0gsyx0eiwA80PYVsa4JVl5aUd16sv07+xgfJ0TmQpspSmGR9osifbHuxnWJ
	h6EX91cdgxm0VK/CiKDVtBqXgxsuvDytkqBCrK6rZ/2brG7U/+gpQV7x0oaOEge10RBWEw==
X-Received: by 2002:a05:600c:214:b0:480:683f:743d with SMTP id
 5b1f17b1804b1-483c318c6b5mr64755e9.14.1772049193912; Wed, 25 Feb 2026
 11:53:13 -0800 (PST)
MIME-Version: 1.0
References: <20260225-dma-buf-heaps-as-modules-v1-0-2109225a090d@kernel.org> <20260225-dma-buf-heaps-as-modules-v1-5-2109225a090d@kernel.org>
In-Reply-To: <20260225-dma-buf-heaps-as-modules-v1-5-2109225a090d@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 25 Feb 2026 11:53:01 -0800
X-Gm-Features: AaiRm53o2gSjT2_weYbg6Rd6sN6ASK7REyXNCnGoEQl1VXmkJdy1tVVm-ZBs7YY
Message-ID: <CABdmKX2KfL6q2nNAkZJ3r-Pp5JPq-sj2VpQp5bU5Hct68bedwg@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Spamd-Bar: ----
Message-ID-Hash: 3YYCPNMZSMIXASMPEM5NWPG3M5ZQMHRI
X-Message-ID-Hash: 3YYCPNMZSMIXASMPEM5NWPG3M5ZQMHRI
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 5/7] dma-buf: heaps: Export mem_accounting parameter
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3YYCPNMZSMIXASMPEM5NWPG3M5ZQMHRI/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[21];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tjmercier@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.986];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,mail.gmail.com:mid,linaro.org:email]
X-Rspamd-Queue-Id: 9BA4C19CF32
X-Rspamd-Action: no action

T24gV2VkLCBGZWIgMjUsIDIwMjYgYXQgODo0MuKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFRoZSBtZW1fYWNjb3VudGluZyBrZXJuZWwgcGFyYW1l
dGVyIGlzIHVzZWQgYnkgaGVhcHMgdG8ga25vdyBpZiB0aGV5DQo+IHNob3VsZCBhY2NvdW50IGFs
bG9jYXRpb25zIGluIHRoZWlyIHJlc3BlY3RpdmUgY2dyb3VwIGNvbnRyb2xsZXJzLg0KPg0KPiBT
aW5jZSB3ZSdyZSBnb2luZyB0byBhbGxvdyBoZWFwcyB0byBjb21waWxlIGFzIG1vZHVsZXMsIHdl
IG5lZWQgdG8NCj4gZXhwb3J0IHRoYXQgdmFyaWFibGUuDQo+DQo+IFNpZ25lZC1vZmYtYnk6IE1h
eGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4NCg0KUmV2aWV3ZWQtYnk6IFQuSi4gTWVy
Y2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8t
bW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBs
aW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
