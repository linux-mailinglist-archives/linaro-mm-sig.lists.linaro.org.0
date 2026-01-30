Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yJ4bN4q4fGm7OQIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:56:26 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 60C3FBB66A
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 14:56:26 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 76F4F3F99C
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 30 Jan 2026 13:56:25 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by lists.linaro.org (Postfix) with ESMTPS id 158143F7C4
	for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 13:56:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=ziepe.ca header.s=google header.b=Qr9j1xi7;
	spf=pass (lists.linaro.org: domain of jgg@ziepe.ca designates 209.85.219.41 as permitted sender) smtp.mailfrom=jgg@ziepe.ca;
	dmarc=none
Received: by mail-qv1-f41.google.com with SMTP id 6a1803df08f44-88a288811a4so21075606d6.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 30 Jan 2026 05:56:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1769781379; x=1770386179; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nHaCd4HrbYw78ScpRIoaj6AeaBJaVtnx8urFDLScj1Y=;
        b=Qr9j1xi7EgBYBglLnLOQxD1XomTqRHFCEWXMOlZm+HOt4LIB02qzNMD8HKEk5n6qz2
         IMQYkfoUK6muH7T6vYcsDl/smDj8AiiVKGc0GnmydBK2sjnE+jgM+F+3dEA533w1/ydd
         c5TdajJqg43J07HckRDXz/jLeIiNaQDYozJ/Vj0yThQLOIdoBg40MZINATmFSJ5g2x2B
         DA9xV75bGKpKZI6ZVvRcwZTMIVcc3rUO0s/1CZS5EH43pTeIjZRamhDgwtWptgWZj/vW
         8Nwede8XEWQizyKRAH3gkxRGHGq+hWVlcoPw++2pXRi7mnAFo1nhayycMcOCAI8FzIEb
         1qRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769781379; x=1770386179;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nHaCd4HrbYw78ScpRIoaj6AeaBJaVtnx8urFDLScj1Y=;
        b=KO0mR6aGm2L4r9E2P/q9kI4GDtnPDwKbNAj6lzmg33wCVdejXHTp8NQWW/hrwRDsza
         ZExc3iQoinlvz+5kfG+D2UjPPjVYeltyA361DNNb+1/YSqB0q1XVnBnHIrGsFaF2RdxB
         AUjDgzdBQB52oLW2ptbltVuUq+lQTXvTewsEhdordT1X4P4oYfZsWwNwPf/RBu1nd4zD
         22K8zS4RlGt4kXBUobgP4p43jVunJx8ParwebvHVZOCUWEET09n3ao2qSj94I8/QPVdv
         looXA0FyC3yYgBwYs1Cq8MKrH70GXfQq1wFSlr3l5mRc9gmuGdjHF4n50vCxvk2SHs3N
         waIA==
X-Forwarded-Encrypted: i=1; AJvYcCUXGbhymqxaQeXu2JtOPf/XpE2ZV2GGnxcHhmgQxJK7pZv9Ap3CTw4pLZSFPdktfNWfC4Y6RBwis78ipkmA@lists.linaro.org
X-Gm-Message-State: AOJu0YzHV+9SW0yZl+Ntc1FxZlzUJXJ1Qp9ng8JM4KTNRMM6xbNOkFKK
	efNtvNNa1WK6SCs/efCl80uo7z/U8U2wtIckYcjGuR0/yuM8uz27VftqksnfCBbwyOY=
X-Gm-Gg: AZuq6aKjKcAPKz6ggjY9rpn6vhZbKC05WLwgQw5cHiehdKnEEbGpA0VWVvFPTRRM8hb
	MMeVCNr+GMZT5mkuPfb24S+hvMuQxpluvK5lND7JAvmx8tcYsvVvRxZbl9dBXarFn2u9t2btLiV
	+s33is9vSe5tQt2Z6KLOiVklWuUIhpglGcqKPNQD9TqxYKYbpHDTP1vIQpqMve1ZoSTXR7537ds
	/LXlXZTWTRcnha4FLFHm419kAlMEybXhudXF0EL7I0gTkpNoyn+c8FgEWHl78BK61qDE96Qu2Nb
	RwoioYv4XwD6Ngh/7CH9H90zILbawLPJi5n0K7Mv505y7XvAPko3Dtkc/yZDOYwkHV+gaEq2QVX
	IEt6DbLH234C0SCt2dJfC5no53v9ummLNsXmkhDdPaQX0/2NhsCIq5rWcSPAW3rlAbmw1VzjrX9
	TadIR9Eq8y/Dm3fxQp8uy8UPyv8vL+rHHmchH4AF/3dIwxprNRmdQ9c9++FxBpy1Cb3rAnGdF4c
	YSidg==
X-Received: by 2002:a05:6214:2a48:b0:88a:529a:a53a with SMTP id 6a1803df08f44-894ea09691emr43666386d6.51.1769781379597;
        Fri, 30 Jan 2026 05:56:19 -0800 (PST)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-894d376da66sm59670316d6.50.2026.01.30.05.56.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jan 2026 05:56:19 -0800 (PST)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1vloyw-0000000AmRb-29H1;
	Fri, 30 Jan 2026 09:56:18 -0400
Date: Fri, 30 Jan 2026 09:56:18 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <20260130135618.GC2328995@ziepe.ca>
References: <20260124-dmabuf-revoke-v5-0-f98fca917e96@nvidia.com>
 <20260124-dmabuf-revoke-v5-4-f98fca917e96@nvidia.com>
 <31872c87-5cba-4081-8196-72cc839c6122@amd.com>
 <20260130130131.GO10992@unreal>
 <d25bead8-8372-4791-a741-3371342f4698@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d25bead8-8372-4791-a741-3371342f4698@amd.com>
X-Spamd-Bar: ---
Message-ID-Hash: GM4XHEDCKHDNZ57GDG4HWXKYS2I7IUW6
X-Message-ID-Hash: GM4XHEDCKHDNZ57GDG4HWXKYS2I7IUW6
X-MailFrom: jgg@ziepe.ca
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Leon Romanovsky <leon@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Alex Deucher <alexander.deucher@amd.com>, Simona Vetter <simona@ffwll.ch>, Gerd Hoffmann <kraxel@redhat.com>, Dmitry Osipenko <dmitry.osipenko@collabora.com>, Gurchetan Singh <gurchetansingh@chromium.org>, Chia-I Wu <olvaffe@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Lucas De Marchi <lucas.demarchi@intel.com>, Thomas =?utf-8?Q?Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Kevin Tian <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Felix Kuehling <Felix.Kuehling@amd.com>, Alex Williamson <alex@shazbot.org>, Ankit Agrawal <ankita@nvidia.com>, Vivek Kasireddy <vivek.kasireddy@intel.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kerne
 l@vger.kernel.org, amd-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, intel-xe@lists.freedesktop.org, linux-rdma@vger.kernel.org, iommu@lists.linux.dev, kvm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v5 4/8] vfio: Wait for dma-buf invalidation to complete
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GM4XHEDCKHDNZ57GDG4HWXKYS2I7IUW6/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.59 / 15.00];
	R_DKIM_REJECT(1.00)[ziepe.ca:s=google];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ziepe.ca];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,amd.com,ffwll.ch,redhat.com,collabora.com,chromium.org,gmail.com,linux.intel.com,suse.de,intel.com,8bytes.org,arm.com,shazbot.org,nvidia.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	RCPT_COUNT_TWELVE(0.00)[33];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[ziepe.ca:-];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jgg@ziepe.ca,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email]
X-Rspamd-Queue-Id: 60C3FBB66A
X-Rspamd-Action: no action

T24gRnJpLCBKYW4gMzAsIDIwMjYgYXQgMDI6MjE6MDhQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCg0KPiBUaGF0IHdvdWxkIHdvcmsgZm9yIG1lLg0KPiANCj4gUXVlc3Rpb24gaXMg
aWYgeW91IHJlYWxseSB3YW50IHRvIGRvIGl0IHRoaXMgd2F5PyBTZWUgdXN1YWxseQ0KPiBleHBv
cnRlcnMgdHJ5IHRvIGF2b2lkIGJsb2NraW5nIHN1Y2ggZnVuY3Rpb25zLg0KDQpZZXMsIGl0IGhh
cyB0byBiZSB0aGlzIHdheSwgcmV2b2tlIGlzIGEgc3luY2hyb25vdXMgdXNlciBzcGFjZQ0KdHJp
Z2dlcmVkIG9wZXJhdGlvbiBhcm91bmQgdGhpbmdzIGxpa2UgRkxSIG9yIGRldmljZSBjbG9zZS4g
V2UgY2FuJ3QNCmRlZmVyIGl0IGludG8gc29tZSBiYWNrZ3JvdW5kIG9wZXJhdGlvbiBsaWtlIHBt
Lg0KDQo+ID4+PiAgCQl9DQo+ID4+PiAgCQlmcHV0KHByaXYtPmRtYWJ1Zi0+ZmlsZSk7DQo+ID4+
DQo+ID4+IFRoaXMgaXMgYWxzbyBleHRyZW1lbHkgcXVlc3Rpb25hYmxlLiBXaHkgZG9lc24ndCB0
aGUgZG1hYnVmIGhhdmUNCj4gPj4gYSByZWZlcmVuY2Ugd2hpbGUgb24gdGhlIGxpbmtlZCBsaXN0
Pw0KDQpJZiB3ZSBob2xkIGEgcmVmY291bnQgd2hpbGUgb24gdGhlIGxpc3QgdGhlbiB0aGUgRkQg
Y2FuIG5ldmVyIGJlDQpjbG9zZWQuDQoNClRoZXJlIGlzIGxvY2tpbmcgcHJvdGVjdGluZyB0aGUg
bGlzdCBzbyB0aGF0IGl0IGlzIHNhZmUgYW5kIGNsb3NlDQpjb250aW51ZXMgdG8gd29yayByaWdo
dC4NCg0KSmFzb24NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGlu
YXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVh
dmVAbGlzdHMubGluYXJvLm9yZwo=
