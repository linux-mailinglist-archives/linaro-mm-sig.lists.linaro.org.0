Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SMYjHkQV4WnoogAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:58:44 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9EC41231E
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 18:58:43 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E19B2453E6
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 16 Apr 2026 16:58:42 +0000 (UTC)
Received: from out-179.mta1.migadu.com (out-179.mta1.migadu.com [95.215.58.179])
	by lists.linaro.org (Postfix) with ESMTPS id DEEC43F824
	for <linaro-mm-sig@lists.linaro.org>; Thu, 26 Feb 2026 13:45:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linux.dev header.s=key1 header.b=vajud8Gg;
	spf=pass (lists.linaro.org: domain of shakeel.butt@linux.dev designates 95.215.58.179 as permitted sender) smtp.mailfrom=shakeel.butt@linux.dev;
	dmarc=pass (policy=none) header.from=linux.dev
Date: Thu, 26 Feb 2026 05:45:30 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.dev; s=key1;
	t=1772113550;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dkIMrpYm1KdU3cU9ItJMZ6NttQZCM67l72DH8n80OYE=;
	b=vajud8GgT9YD52qua+5kbAsn1oe1msd/UJT+JLadvyyKmV6nd6QrfsG3Ptke+6XOJCq0UQ
	FF67owIaltxgRWsC03zZafdS9jeMvQ0c96JpnSdzKqkaP8upii2KeCA7cZDWHY1cpzJEtS
	Hw0OGY+MjxwUrFqDy3UK5cIfcO1+ayo=
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Shakeel Butt <shakeel.butt@linux.dev>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Message-ID: <aaBNYqv2xJ4QEyh4@linux.dev>
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
 <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com>
 <20260224-solemn-spider-of-serendipity-0d8b94@houat>
 <56400505-8a13-4cb2-864c-cb785e4b38d4@amd.com>
 <CAPM=9ty5mbMAVHPO4mRy1jKGnpChr7gK6uMtco2=j7MMJGpZdg@mail.gmail.com>
 <d1b287c9-46ff-4345-a410-7e1cfefb5c66@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d1b287c9-46ff-4345-a410-7e1cfefb5c66@amd.com>
X-Migadu-Flow: FLOW_OUT
X-Spamd-Bar: ---
X-MailFrom: shakeel.butt@linux.dev
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: MOIB5PTBUF7EZD6OZMAJAMU5W7ZATBYN
X-Message-ID-Hash: MOIB5PTBUF7EZD6OZMAJAMU5W7ZATBYN
X-Mailman-Approved-At: Thu, 16 Apr 2026 16:47:29 +0000
CC: Dave Airlie <airlied@gmail.com>, Maxime Ripard <mripard@redhat.com>, "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Yosry Ahmed <yosryahmed@google.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/MOIB5PTBUF7EZD6OZMAJAMU5W7ZATBYN/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	DATE_IN_PAST(1.00)[1179];
	R_DKIM_REJECT(1.00)[linux.dev:s=key1];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[linux.dev : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_CC(0.00)[gmail.com,redhat.com,google.com,linaro.org,collabora.com,arm.com,linux-foundation.org,kernel.org,oracle.com,suse.cz,suse.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,kvack.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[shakeel.butt@linux.dev,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linux.dev:-];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.dev:mid,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: CD9EC41231E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVGh1LCBGZWIgMjYsIDIwMjYgYXQgMTI6MzI6NDJQTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToNCj4gT24gMi8yNi8yNiAwMDo0MywgRGF2ZSBBaXJsaWUgd3JvdGU6DQo+ID4+Pj4N
Cj4gDQo+ID4gSWYgc29tZXRoaW5nIGlzIGluIHRoZSBtYWluIG1lbW9yeSBwb29sLCBpdCBzaG91
bGQgYmUgYWNjb3VudGVkIGZvcg0KPiA+IHVzaW5nIG1lbWNnLiBZb3UgY2Fubm90IHJlbW92ZSBt
ZW1vcnkgZnJvbSB0aGUgbWFpbiBtZW1vcnkgcG9vbA0KPiA+IHdpdGhvdXQgYWNjb3VudGluZyBm
b3IgaXQuDQo+IA0KPiBUaGF0J3Mgd2hhdCBJJ20gc3Ryb25nbHkgZGlzYWdyZWVpbmcgb24uIFNl
ZSB0aGUgcGFnZSBjYWNoZSBpcyBub3QgYWNjb3VudGVkIHRvIG1lbWNnIGVpdGhlciwgc28gd2hl
biB5b3Ugb3BlbiBhIGZpbGUgYW5kIHRoZSBrZXJuZWwgY2FjaGVzIHRoZSBiYWNraW5nIHBhZ2Vz
IHRoYXQgZG9lc24ndCByZWR1Y2UgdGhlIGFtb3VudCB5b3UgY2FuIGFsbG9jYXRlIHRocm91Z2gg
bWFsbG9jLCBkb2Vzbid0IGl0Pw0KDQpQYWdlIGNhY2hlIGlzIGFjY291bnRlZC9jaGFyZ2VkIHRv
IG1lbWNnIGFuZCB1c3VhbGx5IGl0IGlzIHJlY2xhaW1hYmxlIG1lYW5pbmcNCml0IG1vc3QgcHJv
YmFibHkgZG9lc24ndCByZWR1Y2UgdGhlIGFtb3VudCBvZiBhbm9uIG1lbW9yeSB5b3UgY2FuIGFs
bG9jYXRlLg0KDQo+IA0KPiBGb3IgZEdQVXMgR1RUIGlzIGJhc2ljYWxseSBqdXN0IHRoZSBmYWxs
YmFjayB3aGVuIHlvdSBvdmVyIGFsbG9jYXRlIGxvY2FsIG1lbW9yeSAocGx1cyBhIGZldyB0aGlu
Z3MgZm9yIHVwbG9hZHMpLg0KPiANCj4gSW4gb3RoZXIgd29yZHMgc3lzdGVtIG1lbW9yeSBiZWNv
bWVzIHRoZSBzd2FwIG9mIGRldmljZSBsb2NhbCBtZW1vcnkuIEp1c3QgdGhpbmsgYWJvdXQgd2h5
IG1lbWNnIGRvZXNuJ3QgbGltaXRzIHN3YXAgYnV0IG9ubHkgaG93IG11Y2ggaXMgc3dhcHBlZCBv
dXQuDQoNCldoYXQgZG9lcyAibWVtY2cgZG9lc24ndCBsaW1pdHMgc3dhcCIgbWVhbj8NCg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
