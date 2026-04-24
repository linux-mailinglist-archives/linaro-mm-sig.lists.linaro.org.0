Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CfyBWL462kKTgAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Apr 2026 01:10:26 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD6B463F82
	for <lists+linaro-mm-sig@lfdr.de>; Sat, 25 Apr 2026 01:10:25 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 94D4D40699
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 24 Apr 2026 23:10:24 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lists.linaro.org (Postfix) with ESMTPS id 010E8405D5
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 23:10:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=redhat.com header.s=mimecast20190719 header.b=ZqFY4eIs;
	dmarc=pass (policy=quarantine) header.from=redhat.com;
	spf=pass (lists.linaro.org: domain of lyude@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=lyude@redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777072221;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=N09YNoupJhmv1sapC/t38hsbn3OUvdSVBkUzd+3dwtM=;
	b=ZqFY4eIslT8Q1waeozySBBATmcm+VJkXqaiX0644uUplJJ5m4tyZu4gobXC4Sg3gRH3YUu
	yEkHsJDH7hKzVNrgGKYQB8xR+RJY5xUVoRZNMyfKNE0/4fLPqbc/37REr/dH7H+DXb4OGL
	1ZXcVIjWrATIykP39ilcExl2HYV8zZU=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-294-6pfV0v1UMZa5cjVqWT5UEg-1; Fri, 24 Apr 2026 19:10:18 -0400
X-MC-Unique: 6pfV0v1UMZa5cjVqWT5UEg-1
X-Mimecast-MFC-AGG-ID: 6pfV0v1UMZa5cjVqWT5UEg_1777072218
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8eb52a22eb6so1227274485a.0
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 16:10:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777072218; x=1777677018;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N09YNoupJhmv1sapC/t38hsbn3OUvdSVBkUzd+3dwtM=;
        b=NHmxyVyRv4MA5r8l5KspidOGcUd7BF1Vf+mIZOr2r2o8IFHrhb7x5pSCgAzwZeTklG
         KB7yhmNQVz7zlVLqVl19PI+hwzj1HvWdksUxV2pQuIVrfAXy1QyARcRsWz+KVsNmP4NJ
         uMkl49dkRwpJcazPfKUSqlrWOekpc+j7Xja4Pc9OzpWR/tRQsjiDis5tlcxdTfMGlosu
         NpTU3rKChbhqPVEpXdb6XXYS4XwhPVUQXCIs6wI4oe40F28U+5qWDpD3kBf4I/x5U0qm
         8lEV9uOWfNBQa5Ud2a1XJaGdpgyUj1PyL9LaY1LotE1m6uzVc+YP75J3rH7b1Fd7Ka+D
         lMMw==
X-Forwarded-Encrypted: i=1; AFNElJ97TwwfMYArunTb1av9xgeXTg0gISdaEkSi6xzbS+DPC4zASHe8htIPFz461eMJyj8IDvxJF2FuItpDEOf7@lists.linaro.org
X-Gm-Message-State: AOJu0Yz6NUGAy3qKytJ/KMf78x/VfhkXPSUnK98FGasH6ieY9KE00roj
	QAOZ635gbHhu/+oNrt3V8bkyfAnOQvexJjff72Sb8Uw2wEXoy2AxlMKtXMqS0NUQLE2IQKTtnOa
	fD9jISnZh6G/7IpTwAgNkJTELO9pmXIbccWPtHM+r1jTmniOFZSULgcQs6WOQXYiBJ4gq
X-Gm-Gg: AeBDievVjwIsd2UrUp4QBOUK37rsXdIigtXJvdmqCfxCjJ0Flc/3neZ6acAPpu3pyFt
	qdBDN/zXHVNfsTTC8zCgdjk4mR6Mq/GOXjkjNu/hDPO2SfoJu/Mi7lv0NGZnTGZ4If+Mdn/kOjq
	xpHRe5w6fuSVc/5I0d0CDfR7MTP9PY81ugL4lq6wQUcLMnnGKRr3n3DuFqXtLK+JqISCNTdPCDk
	UirBLy7+TEN7eFSBDOYSdevF9n5qT/mcNEOkt9uIINPeYV2U0PnfuEDsUR0dtOrEbPTBE1AHpX+
	739zcCrsWfhgjd4ziCOS23kz/ixEjqqB4mJphauUoPnazBiscgdTVHScBXND9SB66gDwk1uJCCu
	25K7d8KH9cYsrm5VcZyBK+T5xfQud
X-Received: by 2002:a05:620a:f0b:b0:8eb:cbf8:85e7 with SMTP id af79cd13be357-8ebcbf89261mr3123560885a.34.1777072217921;
        Fri, 24 Apr 2026 16:10:17 -0700 (PDT)
X-Received: by 2002:a05:620a:f0b:b0:8eb:cbf8:85e7 with SMTP id af79cd13be357-8ebcbf89261mr3123553685a.34.1777072217335;
        Fri, 24 Apr 2026 16:10:17 -0700 (PDT)
Received: from [192.168.8.4] ([100.0.180.93])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8e7d69ad48asm1913863785a.19.2026.04.24.16.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 16:10:16 -0700 (PDT)
Message-ID: <ed26658c461020547e058b237575324adcbaca59.camel@redhat.com>
From: lyude@redhat.com
To: Alexandre Courbot <acourbot@nvidia.com>
Date: Fri, 24 Apr 2026 19:10:14 -0400
In-Reply-To: <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
References: <20260421235346.672794-1-lyude@redhat.com>
	 <20260421235346.672794-5-lyude@redhat.com>
	 <DI0MI6UF325Y.2TDWZGCN3WGIG@nvidia.com>
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: bR6BnxyHLoVC3sq2s5n0T54dQgcdY7pY7VEnxjxViLI_1777072218
X-Mimecast-Originator: redhat.com
X-Spamd-Bar: --
Message-ID-Hash: KBJU6RN5MLBGSIXVNUT5EEQGFSVSKVZN
X-Message-ID-Hash: KBJU6RN5MLBGSIXVNUT5EEQGFSVSKVZN
X-MailFrom: lyude@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: nouveau@lists.freedesktop.org, Gary Guo <gary@garyguo.net>, Daniel Almeida <daniel.almeida@collabora.com>, rust-for-linux@vger.kernel.org, Danilo Krummrich <dakr@kernel.org>, dri-devel@lists.freedesktop.org, Matthew Maurer <mmaurer@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, christian.koenig@amd.com, Asahi Lina <lina@asahilina.net>, Miguel Ojeda <ojeda@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Simona Vetter <simona@ffwll.ch>, Alice Ryhl <aliceryhl@google.com>, Boqun Feng <boqun@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, Krishna Ketan Rai <prafulrai522@gmail.com>, linux-media@vger.kernel.org, Shankari Anand <shankari.ak0208@gmail.com>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>, linaro-mm-sig@lists.linaro.org, Asahi Lina <lina+kernel@asahilina.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v12 4/5] rust: drm: gem: Introduce shmem::SGTable
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KBJU6RN5MLBGSIXVNUT5EEQGFSVSKVZN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 9BD6B463F82
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[redhat.com : SPF not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[redhat.com:s=mimecast20190719];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[28];
	ARC_NA(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,garyguo.net,collabora.com,vger.kernel.org,kernel.org,google.com,gmail.com,oracle.com,amd.com,asahilina.net,ffwll.ch,linaro.org,lists.linaro.org,linuxfoundation.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:-];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.972];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[lyude@redhat.com,linaro-mm-sig-bounces@lists.linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email]

DQpPbiBGcmksIDIwMjYtMDQtMjQgYXQgMDA6MDEgKzA5MDAsIEFsZXhhbmRyZSBDb3VyYm90IHdy
b3RlOg0KPiBUaGVyZSBhcmUgNCBzaXRlcyB3aGVyZSB3ZSBhY3F1aXJlIGFuZCByZWxlYXNlIHRo
ZSBETUEgcmVzdiBsb2NrLA0KPiBlYWNoDQo+IG9mIHdoaWNoIHJlcXVpcmUgdW5zYWZlIGJsb2Nr
cyBhbmQgY2FycnlpbmcgdGhlIHJpc2sgdGhhdCB3ZSBmb3JnZXQNCj4gcmVsZWFzaW5nIHRoZSBs
b2NrIGluIHRoZSBlbmQuIEZvciB0aGlzIG1ldGhvZCBpbiBwYXJ0aWN1bGFyIHdlIG5lZWQNCj4g
dG8NCj4ganVtcCB0aHJvdWdoIGhvb3BzIGEgYml0IGFuZCBzdG9yZSB0aGUgcmV0dXJuIHZhbHVl
IGludG8gYSB0ZW1wb3JhcnkNCj4gdmFyaWFibGUgc28gd2UgY2FuIHVubG9jayB0aGUgRE1BIHJl
c2VydmF0aW9uLg0KPiANCj4gTGV0J3MgZG8gb3Vyc2VsdmVzIGEgZmF2b3IgYW5kIGltcGxlbWVu
dCBhIHNtYWxsLCBwcml2YXRlIGd1YXJkIHR5cGU6DQo+IA0KPiDCoMKgwqAgc3RydWN0IERtYVJl
c3ZHdWFyZDwnYSwgVDogRHJpdmVyT2JqZWN0PigmJ2EgT2JqZWN0PFQ+KTsNCj4gDQo+IMKgwqDC
oCBpbXBsPCdhLCBUOiBEcml2ZXJPYmplY3Q+IERtYVJlc3ZHdWFyZDwnYSwgVD4gew0KPiDCoMKg
wqDCoMKgwqDCoCBmbiBuZXcob2JqZWN0OiAmJ2EgT2JqZWN0PFQ+KSAtPiBTZWxmIHsNCj4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCAvLyBTQUZFVFk6IFRoaXMgbG9jayBpcyBpbml0aWFsaXplZCB0
aHJvdWdob3V0IHRoZQ0KPiBsaWZldGltZSBvZiBgb2JqZWN0YA0KPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIHVuc2FmZSB7IGJpbmRpbmdzOjpkbWFfcmVzdl9sb2NrKG9iamVjdC5yYXdfZG1hX3Jl
c3YoKSwNCj4gcHRyOjpudWxsX211dCgpKSB9Ow0KPiANCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCBTZWxmKG9iamVjdCkNCj4gwqDCoMKgwqDCoMKgwqAgfQ0KPiDCoMKgwqAgfQ0KPiANCj4gwqDC
oMKgIGltcGw8J2EsIFQ+IERyb3AgZm9yIERtYVJlc3ZHdWFyZDwnYSwgVD4NCj4gwqDCoMKgIHdo
ZXJlDQo+IMKgwqDCoMKgwqDCoMKgIFQ6IERyaXZlck9iamVjdCwNCj4gwqDCoMKgIHsNCj4gwqDC
oMKgwqDCoMKgwqAgZm4gZHJvcCgmbXV0IHNlbGYpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCAvLyBTQUZFVFk6IFdlIGFyZSByZWxlYXNpbmcgdGhlIGxvY2sgZ3JhYmJlZCBkdXJpbmcgdGhl
DQo+IGNyZWF0aW9uIG9mIHRoaXMgb2JqZWN0Lg0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHVu
c2FmZSB7IGJpbmRpbmdzOjpkbWFfcmVzdl91bmxvY2soc2VsZi4wLnJhd19kbWFfcmVzdigpKQ0K
PiB9Ow0KPiDCoMKgwqDCoMKgwqDCoCB9DQo+IMKgwqDCoCB9DQo+IA0KPiBUaGVyZSBoZXJlIHlv
dSB3b3VsZCBqdXN0IGRvDQo+IA0KPiDCoMKgwqAgbGV0IF9kbWFfcmVzdiA9IERtYVJlc3ZHdWFy
ZDo6bmV3KHNlbGYpOw0KDQpJIHRob3VnaHQgb2YgZG9pbmcgdGhpcyBidXQgbG9zdCB0cmFjayBv
ZiBob3cgbWFueSB0aW1lcyBJIHdhcyBhY3R1YWxseQ0KZ3JhYmJpbmcgdGhpcyBsb2Nr4oCmDQpC
VFcgLSB3YW50IG1lIHRvIGp1c3QgZ2l2ZSB5b3UgYXV0aG9yc2hpcCBvbiB0aGUgcGF0Y2ggZm9y
IGFkZGluZw0KRG1hUmVzdkd1YXJkPyBTaW5jZSBvbiBteSBicmFuY2ggSSd2ZSBwcmV0dHkgbXVj
aCBvbmx5IGp1c3QgYWRkZWQgdHdvDQppbmxpbmUgYW5ub3RhdGlvbnMsIGl0J3Mgb3RoZXJ3aXNl
IGlkZW50aWNhbCB0byB3aGF0IHlvdSB3cm90ZSBoZXJlLg0KDQpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAt
LSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBl
bWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
