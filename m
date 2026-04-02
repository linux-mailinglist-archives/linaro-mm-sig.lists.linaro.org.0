Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aBViJXr5zWkdkAYAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 07:07:06 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0FD383D96
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 02 Apr 2026 07:07:06 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id E07F8401F0
	for <lists+linaro-mm-sig@lfdr.de>; Thu,  2 Apr 2026 05:07:04 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	by lists.linaro.org (Postfix) with ESMTPS id 353393F70C
	for <linaro-mm-sig@lists.linaro.org>; Thu,  2 Apr 2026 05:07:01 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b="Qv8rU/PH";
	dmarc=pass (policy=none) header.from=linaro.org;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.44 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	arc=pass ("google.com:s=arc-20240605:i=1")
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b9bfcbaa81eso66780066b.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 01 Apr 2026 22:07:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775106420; cv=none;
        d=google.com; s=arc-20240605;
        b=MZDnJnbhbm00qiApWnPW0MuMBHBlaUojtRf9OzfGy0Ww2N6MVDtrgfpO7NPeTeNIWl
         t/f62PQKIPGC0fZl3mrp9rbMVaZ6SBLkxRhuNMS1IQ7ocSOnIO7kEyl+3oLs7Iehi4Pe
         R/4zk3et5yDfFHbxZ21FK2eW/1DsVBUndRAIpYGsXOVKo3YxpDJVKlpWDq+ff+InC9T1
         qkNynzP2VZpnK75mlp61t1lk5qf0klCDMhGplYC8vbSY4eDkKEsZWPzwl/Y+QNgWifDI
         ilM2Hpgs2loNf30DKMt88zGhi/jTsVw18cBfGj2nkFJUYTFud8JEcRP6GXkKdGudBGIu
         6SKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Qf3x6hVmCFdUqtHFD5VJaVdwz6bPu+MVKVWepeQR03o=;
        fh=XM/Zfuwyq5TZx1T02M2ea6A1N2Sv3/hvKNNrrja4u6c=;
        b=jivFoDqjI7V8oAVdjF83VCCaY5JdZHBbjByldUgrIY1hrOl8RcfmUHBsV5ip2OzJpo
         bDedA9jFbmq7FzcOf+2+SL8ZINL994e5oEsPcYUh0ULzgE3dnSshxEwJIz+h8hV9S8uR
         SXg3IG/mhe2AvGQCz/HGxSMql1Ip9iOIMNxD2tjG7EIchQDAqi1AaGpyRKXCmj2tmLr5
         kBW1oPiBp4evVtCKvMXfTpKqpYCivSVlzA3dUShSWbuh/Qh5jbywlWJhFGgyaEF6PB4U
         QfCwNE1oZ7sMS0c+gajP7KCWLMwRwyIUT90214p8iVaQZOHtGKtqLoJFjVZFkk278vTd
         2APw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1775106420; x=1775711220; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qf3x6hVmCFdUqtHFD5VJaVdwz6bPu+MVKVWepeQR03o=;
        b=Qv8rU/PHEvoW6OBN0jsbHljFBSK7VHrvtxD/ie9xQtksuS/R1O3U15vF54Coam69gm
         lEUK1LL2raj4WDX0l4RrFIBhH9tnyp+QPOkn8W4yZuH7Zhns/l3bcYlyxtXfgVKGszFc
         ha+1yvQpmHG7ZhFN06CVhoPjzEZ7n3fGZBzVLnnQwi40rNC1ZCziHilCYGVdh+lbamKc
         Ars8vKGKtme0z81fhVfREsDJUCW8lvrUWRgr/z3ZixHHkleqflyr3fcVupuz4C+gdzh0
         N0RfomQfiMUIk9rOLcmeDM6eXfaUPpQn4+zlqlAMDvL6idiluMhV4BmTWyi+XzGRMlgK
         snaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775106420; x=1775711220;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Qf3x6hVmCFdUqtHFD5VJaVdwz6bPu+MVKVWepeQR03o=;
        b=G928ovt1M4Luu3uVMMTp7nlF6WapMdpGJNrOqofBbpPlQoNOSBCxlejObWJld21OJU
         FrxMwcKYqpz0s900pFcttDmtOGP8mw/Tr/Dh1ZjE4ixnTA6h34KoV9MlMKdDr5MBmyFl
         DDbgsKUZBEHDpbTKEEiPR5g6TerdaNYjp9bJq4XWLIscr8gyv6I6JAXNxQBs7nRZZ77K
         4AR//Z50QDuYR4L5VO526wSLBEBzu0VbzXW0VjBpLsUzHqXyhWEoUZCUN9E2VUKvn+mp
         sxuAM96ejEMJtpVrzCzwtbGEviCXrthQo/thXoiu/bfq7KlNMQizj64Nsd2WLjroKxVr
         X5IQ==
X-Forwarded-Encrypted: i=1; AJvYcCXH3h5Wa7Nko15S4VhIJbX4zuFzF1SEl9Fs2iJEgnZEPqI9CWKdCs5T0VVwGMCL/8mgccJ+1paxTnnQ3Kny@lists.linaro.org
X-Gm-Message-State: AOJu0YwDcpF3h74s8D2rFceadipoeKskhaLrAQ01fPMDkor5SXXeOiFE
	Sb7FlJrGA8NMictai6p1vfmgaNxf/ipB4szv3U3/V4OZTX33LsTHudVvhFuKInkP7uoxLLpjKwO
	CAlbvHbS/a2rOCv3YaUAxe4WRyDc61p+KhHGCbqwBMBP/
X-Gm-Gg: ATEYQzwYRKs1xPJwzZpbomeXlnD14Gqv4DLNUXwBEFhJFnDxO8pQ8GdceAwxtxuuJrQ
	RbAV9DNDdAfmL2QcALvreKeFXu1PkEEO6LmzKiC61SP2h/gptJe90Tdu8Oer22EORT+DAsXvW8n
	yxDrbXzN4WYK4/Bvo9JVbU3JkWtCu/HApmC167tp84HbhSoPB4oL0mtCPgfI+OEp5RZyZcYYnm2
	RtwkkTFkDofrBAuk8pq+5cDDOzuNKRW2GIrbKHhZNMq4PbPGfRUU95ASZRGchG4/3G3/PaA5j8E
	kADM2537B5YPnhv7FVItjiZRCAY9oiD6wbGt+/c=
X-Received: by 2002:a17:906:f185:b0:b97:4e42:23ef with SMTP id
 a640c23a62f3a-b9c138f8b82mr248056566b.16.1775106419953; Wed, 01 Apr 2026
 22:06:59 -0700 (PDT)
MIME-Version: 1.0
References: <CGME20260331100026eucas1p19bdc2aaca4c9a48c6f6ac8fec71478d8@eucas1p1.samsung.com>
 <20260331-dma-buf-heaps-as-modules-v4-0-e18fda504419@kernel.org> <46397de2-eedf-4e09-a83a-3b683d154fe7@samsung.com>
In-Reply-To: <46397de2-eedf-4e09-a83a-3b683d154fe7@samsung.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Thu, 2 Apr 2026 10:36:48 +0530
X-Gm-Features: AQROBzCJbHUqpXNhrktgFRPzZ2TP3XLnRpMznWDVTmhDI0Xxoe_pLYi4105Frnw
Message-ID: <CAO_48GEFQE_FJjuq1UqP=DC6LJE8jjE3C+4FdAyB4uEZDsnFJw@mail.gmail.com>
To: Marek Szyprowski <m.szyprowski@samsung.com>
X-Spamd-Bar: ----
Message-ID-Hash: 3HWJ5DPK4F6YVPTOGGQJ322DEXM4BCY4
X-Message-ID-Hash: 3HWJ5DPK4F6YVPTOGGQJ322DEXM4BCY4
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Maxime Ripard <mripard@kernel.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, "T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Robin Murphy <robin.murphy@arm.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, Albert Esteve <aesteve@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, iommu@lists.linux.dev, linux-mm@kvack.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/8] dma-buf: heaps: Turn heaps into modules
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/3HWJ5DPK4F6YVPTOGGQJ322DEXM4BCY4/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [0.09 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	NEURAL_SPAM(0.00)[0.568];
	DMARC_POLICY_ALLOW(0.00)[linaro.org,none];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[sumit.semwal@linaro.org,linaro-mm-sig-bounces@lists.linaro.org];
	R_DKIM_REJECT(0.00)[linaro.org:s=google];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:-];
	DBL_BLOCKED_OPENRESOLVER(0.00)[samsung.com:email,linaro.org:email,linaro.org:url,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns]
X-Rspamd-Queue-Id: 1E0FD383D96
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

SGVsbG8gTWF4aW1lLA0KDQpPbiBUdWUsIDMxIE1hciAyMDI2IGF0IDE4OjI0LCBNYXJlayBTenlw
cm93c2tpIDxtLnN6eXByb3dza2lAc2Ftc3VuZy5jb20+IHdyb3RlOg0KPg0KPiBPbiAzMS4wMy4y
MDI2IDEyOjAwLCBNYXhpbWUgUmlwYXJkIHdyb3RlOg0KPiA+IFRoZSByZWNlbnQgaW50cm9kdWN0
aW9uIG9mIGhlYXBzIGluIHRoZSBvcHRlZSBkcml2ZXIgWzFdIG1hZGUgcG9zc2libGUNCj4gPiB0
aGUgY3JlYXRpb24gb2YgaGVhcHMgYXMgbW9kdWxlcy4NCj4gPg0KPiA+IEl0J3MgZ2VuZXJhbGx5
IGEgZ29vZCBpZGVhIGlmIHBvc3NpYmxlLCBpbmNsdWRpbmcgZm9yIHRoZSBhbHJlYWR5DQo+ID4g
ZXhpc3Rpbmcgc3lzdGVtIGFuZCBDTUEgaGVhcHMuDQo+ID4NCj4gPiBUaGUgc3lzdGVtIG9uZSBp
cyBwcmV0dHkgdHJpdmlhbCwgdGhlIENNQSBvbmUgaXMgYSBiaXQgbW9yZSBpbnZvbHZlZCwNCj4g
PiBlc3BlY2lhbGx5IHNpbmNlIHdlIGhhdmUgYSBjYWxsIGZyb20ga2VybmVsL2RtYS9jb250aWd1
b3VzLmMgdG8gdGhlIENNQQ0KPiA+IGhlYXAgY29kZS4gVGhpcyB3YXMgc29sdmVkIGJ5IHR1cm5p
bmcgdGhlIGxvZ2ljIGFyb3VuZCBhbmQgbWFraW5nIHRoZQ0KPiA+IENNQSBoZWFwIGNhbGwgaW50
byB0aGUgY29udGlndW91cyBETUEgY29kZS4NCj4gPg0KPiA+IExldCBtZSBrbm93IHdoYXQgeW91
IHRoaW5rLA0KPiA+IE1heGltZQ0KPiA+DQo+ID4gMTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
ZHJpLWRldmVsLzIwMjUwOTExMTM1MDA3LjEyNzU4MzMtNC1qZW5zLndpa2xhbmRlckBsaW5hcm8u
b3JnLw0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJu
ZWwub3JnPg0KDQpUaGFuayB5b3UgZm9yIHRoaXMgcGF0Y2ggc2VyaWVzOyBub3cgdGhhdCBpdCBp
cyBuZWVkZWQgYnkgbW9yZSBmb2xrcywNCkkgdGhpbmsgd2UgY2FuIG1lcmdlIHRoaXMuDQoNCk1h
cmVrLCBJJ2xsIGNvb3JkaW5hdGUgd2l0aCB5b3Ugb24gdGhpcyAtIHRoYW5rIHlvdSENCg0KQmVz
dCwNClN1bWl0Lg0KDQoNCj4NCj4NCj4gQXBwbGllZCBhZ2FpbiBwYXRjaGVzIDEtNSB0byBteSBk
bWEtbWFwcGluZy1mb3ItbmV4dCBicmFuY2guIEkgaG9wZSB0aGlzIHRpbWUgaXQNCj4NCj4gd29u
J3QgY2F1c2UgbmV3IHByb2JsZW1zIGluIGxpbnV4LW5leHQuDQo+DQo+DQo+IEhlcmUgaXMgYSBz
dGFibGUgYnJhbmNoIHRvIGFwcGx5IHJlbWFpbmluZyBkbWEtYnVmIGhlYXBzIHBhdGNoZXM6DQo+
DQo+IGh0dHBzOi8vd2ViLmdpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9t
c3p5cHJvd3NraS9saW51eC5naXQvbG9nLz9oPWRtYS1jb250aWctZm9yLTcuMS1tb2R1bGVzLXBy
ZXAtdjQNCj4NCg0KPg0KPiBCZXN0IHJlZ2FyZHMNCj4gLS0NCj4gTWFyZWsgU3p5cHJvd3NraSwg
UGhEDQo+IFNhbXN1bmcgUiZEIEluc3RpdHV0ZSBQb2xhbmQNCj4NCg0KDQotLQ0KVGhhbmtzIGFu
ZCByZWdhcmRzLA0KDQpTdW1pdCBTZW13YWwgKGhlIC8gaGltKQ0KU2VuaW9yIFRlY2ggTGVhZCAt
IFBsYXRmb3JtcyBhbmQgVmlydHVhbGlzYXRpb24NCkxpbmFyby5vcmcg4pSCIEFybSBTb2x1dGlv
bnMgYXQgTGlnaHQgU3BlZWQNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlz
dHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1z
aWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
