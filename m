Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJzJCn4fpWnd3wUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 06:26:22 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CABD1D312B
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 02 Mar 2026 06:26:21 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EC8903ED23
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  2 Mar 2026 05:26:19 +0000 (UTC)
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	by lists.linaro.org (Postfix) with ESMTPS id E35193ED23
	for <linaro-mm-sig@lists.linaro.org>; Mon,  2 Mar 2026 05:26:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20230601 header.b=fjNLhCB+;
	spf=pass (lists.linaro.org: domain of airlied@gmail.com designates 209.85.160.175 as permitted sender) smtp.mailfrom=airlied@gmail.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-50698970941so51084581cf.0
        for <linaro-mm-sig@lists.linaro.org>; Sun, 01 Mar 2026 21:26:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772429177; cv=none;
        d=google.com; s=arc-20240605;
        b=baRqHtZmg1pxCYj7s0WPK+94GB1/yoBgYGIZORq/KYC3NXfxQFmaF2lH6Og4So5e+s
         sZ6U1uSXh+ytUoj73AKvmQxKyb5fvKTkGWN46FK9bQW+bt9wQbjeLT9tHLJR/iiCibki
         NTFl2hgKlTKPZvuBlgxgrLpN5ZhRIaPs7GrlUqs/xdEACOfcAogu3BIZKsoJds8pTWzt
         kUott/Kl2ahizBF0E8JBKPKkR0WDHUenKlMyh9PZoVbQW2QbDYs0JcIZcWiicIkdgjio
         nXw8sWY6jTAGvhdMOxKK+G7BwXNuocfY23Sq+gcKPnMYS2x/nyLggnH/OvRtpl/4P6Kf
         IQpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=rNpLqQXBYOorAHCllRmNXHlMvCZoey1fxBa1rcoB5e8=;
        fh=VnSGbhfxOG5zM2PkCuGcxyz/aUixSKIiR7DNIuFkTY4=;
        b=ZMchumsSmiefOPtEm3ZSli3cEERmmL/uoX0/ULFtn1kQo+3HzhwHSk7kOmHFcCXUZ4
         kjxKY8ETvmNsgni1V62bFEtd3p89bMxsm201dHsHBHesZXNssN0ZpISKVyRK5F05X0A6
         7j9U0CHhnqpGpN98NNysQybS6FjwrLYt+IAY6dsC9Fc4HX2q7d2np0gq82W2uTEubcEo
         1p5VZWethWt82OI5tpZs5YCWvJr9SRbk+ERPJsmUpH3lG5hcrGKXc8d7YmoatU9nqgV8
         mXtsYj8Q2GrdjFNUetAEmms7ohTdF05WgABbyxi4c4XvA9Um8kntdp+/v0wOB3G37rrg
         SXEQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772429177; x=1773033977; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rNpLqQXBYOorAHCllRmNXHlMvCZoey1fxBa1rcoB5e8=;
        b=fjNLhCB+CmXaFxUEubYnCkFSzKBzdWwkoowcL96BgJobWDH2VgZo+Y0Ez6hjbd0+DB
         NfmgWrpjR1KZiBYffXpPP4HIGsjZmW0GUq1akcwtPUrI04INm4kJWDszWhMtCdCiiCcm
         27s3cDdcYv/a0YQUgv9ni2Hk63hvVAAHZgoqhicJrZciYRkHIUbtugnsZq5qWKW4uYyp
         RDUQRnqtB+lAiN1ip7Vk9BKdDLMYYOJK02TRrQCo9g3qp/VKCDxZMk7JqsOUTwt+8pfL
         1npztSAh8qaXnHNl0ZbRrXt8mT+H1ixwOOEhOZbFXdm6YAgIO/C8IPBxAX+/uwJdJS7b
         dUgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772429177; x=1773033977;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rNpLqQXBYOorAHCllRmNXHlMvCZoey1fxBa1rcoB5e8=;
        b=iprfSRVjYxZa+q8w/1/Rr0BPUMQOfo8B3sVjZ3MFpHfK7yaJWF1Xry3Le/ir6qm3bG
         wo3AIdBT5oZhQCQzXQYQwOU2RWzeXm90A5b3lUOcXue0NTlKdqe32lY2mJt2O5bXKDv4
         kf0QB2g10ALA4+Nnyrda2zVFMkdDPyZSNa2SBhVE+Ldq/QBTst1w6gCPtJ8d6uw49kYH
         Jl07dsqB2MbsTT92FJGMNsLj5pYo5BUERoqsIwpA8Ad4YoF5H7Vp+gAlt869vZwWMfaT
         mvocTGAOL/FLlB5giwqxnF1S0wskNp0gyCMMFYL092IT1w3U77NBJNudkUeVc1r4SDO0
         8zvA==
X-Forwarded-Encrypted: i=1; AJvYcCXeBKFPzWTBy/opaU/122PdGDDPShC7xkXPW3fTW96gDzniy2wAr+LX7jk8s6dLqdCoKxKCy9kCxmY6hmrf@lists.linaro.org
X-Gm-Message-State: AOJu0YxPV5KNzRSdp0+H9UBcOHXtGOMNwjfMa5AD0+2eVXVX1UXCoZEh
	H8Vo8nNh2Yixlz94QU/AHvBWhvJtcN9s40lNZty4hrwQ9vGrXGk9jkaPFae7xrVR3qOhpHb4a04
	/RAOTKcvGF84GAqhkny7OdHELHPF+naE=
X-Gm-Gg: ATEYQzy29RttvpgE+dJVMMSACD6Sv4LHRXvZAS7ikwjshA1g4uTT9jEIJXj7DL7L+8K
	gNfy/Bbpb0gEnh2mZ2Q9b7V9sjiKYMmzsG/lCiXoatt16ssTo2mqCtqpZuDEPSo7UT+VQuQx5ej
	SSr4SyitgXiLY9l0b5raz9n93MgUgtxQ5dAt6UV6nsppeHwPC878UMpvVJEM60xKXjXiFG3s/0H
	3v9hPpJOoWY0PW0b+BmSgRfqVAKGgMVQ9CByoQFFp5Z0MGq0EjipMgkKgcUDi6W08o3gF84KKV9
	gYq723P1bjU8PHR6fyPe2voUXZEoZXw+ALozN9Kr+wqxUdPOWqkThyGDCrv8C1V2RfE=
X-Received: by 2002:ac8:7fd5:0:b0:506:9fd8:f65e with SMTP id
 d75a77b69052e-507528a59bdmr151673531cf.60.1772429177369; Sun, 01 Mar 2026
 21:26:17 -0800 (PST)
MIME-Version: 1.0
References: <20260218-dmabuf-heap-cma-dmem-v2-0-b249886fb7b2@redhat.com>
 <CABdmKX0LpKJ9tw48oQh7=3CF0UR5uFtgo0OMwQhHBB40LnijyQ@mail.gmail.com>
 <a446b598-5041-450b-aaa9-3c39a09ff6a0@amd.com> <20260224-solemn-spider-of-serendipity-0d8b94@houat>
 <56400505-8a13-4cb2-864c-cb785e4b38d4@amd.com> <CAPM=9ty5mbMAVHPO4mRy1jKGnpChr7gK6uMtco2=j7MMJGpZdg@mail.gmail.com>
 <d1b287c9-46ff-4345-a410-7e1cfefb5c66@amd.com>
In-Reply-To: <d1b287c9-46ff-4345-a410-7e1cfefb5c66@amd.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 2 Mar 2026 15:26:05 +1000
X-Gm-Features: AaiRm50W0fvfAVhf0ruGga4uliXFXx9vNuU5MHSLrll0LdDEQpXsLFepA1L85R8
Message-ID: <CAPM=9twnKZYOGchQ0cziSt5yUQxCXNWoKyBiQib2XWvkMiN=GA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
X-Spamd-Bar: -----
Message-ID-Hash: ZB6N6KNEWZMVKZAXBYLG62HWUF3RHKVP
X-Message-ID-Hash: ZB6N6KNEWZMVKZAXBYLG62HWUF3RHKVP
X-MailFrom: airlied@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Maxime Ripard <mripard@redhat.com>, "T.J. Mercier" <tjmercier@google.com>, Eric Chanudet <echanude@redhat.com>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>, Lorenzo Stoakes <lorenzo.stoakes@oracle.com>, "Liam R. Howlett" <Liam.Howlett@oracle.com>, Vlastimil Babka <vbabka@suse.cz>, Mike Rapoport <rppt@kernel.org>, Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Albert Esteve <aesteve@redhat.com>, linux-mm@kvack.org, Yosry Ahmed <yosryahmed@google.com>, Shakeel Butt <shakeel.butt@linux.dev>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/3] dma-buf: heaps: cma: enable dmem cgroup accounting
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZB6N6KNEWZMVKZAXBYLG62HWUF3RHKVP/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.983];
	FROM_NEQ_ENVFROM(0.00)[airlied@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[wikipedia.org:url,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 5CABD1D312B
X-Rspamd-Action: no action

T24gVGh1LCAyNiBGZWIgMjAyNiBhdCAyMTozMiwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToNCj4NCj4gT24gMi8yNi8yNiAwMDo0MywgRGF2ZSBBaXJs
aWUgd3JvdGU6DQo+ID4+Pj4NCj4gPj4+PiBVc2luZyBtb2R1bGUgcGFyYW1ldGVycyB0byBlbmFi
bGUvZGlzYWJsZSBpdCBnbG9iYWxseSBpcyBqdXN0IGENCj4gPj4+PiB3b3JrYXJvdW5kIGFzIGZh
ciBhcyBJIGNhbiBzZWUuDQo+ID4+Pg0KPiA+Pj4gVGhhdCdzIGEgcHJldHR5IGdvb2QgaWRlYSEg
SXQgd291bGQgaW5kZWVkIGJlIGEgc29sdXRpb24gdGhhdCBjb3VsZA0KPiA+Pj4gc2F0aXNmeSBl
dmVyeW9uZSAoSSBhc3N1bWU/KS4NCj4gPj4NCj4gPj4gSSB0aGluayBzbyB5ZWFoLg0KPiA+Pg0K
PiA+PiBGcm9tIHdoYXQgSSBoYXZlIHNlZW4gd2UgaGF2ZSB0aHJlZSBkaWZmZXJlbnQgdXNlIGNh
c2VzOg0KPiA+Pg0KPiA+PiAxLiBsb2NhbCBkZXZpY2UgbWVtb3J5IChWUkFNKSwgR1RUL0NNQSBh
bmQgbWVtY2cgYXJlIGNvbXBsZXRlbHkgc2VwYXJhdGUgZG9tYWlucyBhbmQgeW91IHdhbnQgdG8g
aGF2ZSBjb21wbGV0ZWx5IHNlcGFyYXRlIHZhbHVlcyBhcyBsaW1pdCBmb3IgdGhlbS4NCj4gPj4N
Cj4gPj4gMi4gbG9jYWwgZGV2aWNlIG1lbW9yeSAoVlJBTSkgaXMgc2VwYXJhdGUuIEdUVC9DTUEg
YXJlIGFjY291bnRlZCB0byBtZW1jZywgeW91IGNhbiBzdGlsbCBoYXZlIHNlcGFyYXRlIHZhbHVl
cyBhcyBsaW1pdCBzbyB0aGF0IG5vYm9keSBvdmVyIGFsbG9jYXRlcyBDTUEgKGZvciBleGFtcGxl
KS4NCj4gPj4NCj4gPj4gMy4gQWxsIHRocmVlIGFyZSBhY2NvdW50ZWQgdG8gbWVtY2cgYmVjYXVz
ZSBzeXN0ZW0gbWVtb3J5IGlzIGFjdHVhbGx5IHVzZWQgYXMgZmFsbGJhY2sgaWYgYXBwbGljYXRp
b25zIG92ZXIgYWxsb2NhdGUgZGV2aWNlIGxvY2FsIG1lbW9yeS4NCj4gPj4NCj4gPj4gSXQncyBk
ZWJhdGFibGUgd2hhdCBzaG91bGQgYmUgdGhlIGRlZmF1bHQsIGJ1dCB3ZSBjbGVhcmx5IG5lZWQg
dG8gaGFuZGxlIGFsbCB0aHJlZSB1c2UgY2FzZXMuIFBvdGVudGlhbGx5IGV2ZW4gb24gdGhlIHNh
bWUgc3lzdGVtLg0KPiA+DQo+ID4NCj4gPiBHaXZlIG1lIGNhc2VzIHdoZXJlIDEgb3IgMyBhY3R1
YWxseSBtYWtlIHNlbnNlIGluIHRoZSByZWFsIHdvcmxkLg0KPiA+DQo+ID4gSSBjYW4gbWF5YmUg
dGFrZSAxIGlmIENNQSBpcyBqdXN0IG9sZCBzY2hvb2wgQ01BIGNhcnZlZCBvdXQgcHJlYm9vdCBz
bw0KPiA+IGl0J3Mgbm90IGluIHRoZSBtYWluIG1lbW9yeSBwb29sLCBidXQgaW4gdGhhdCBjYXNl
IGl0J3MganVzdCBlcXVpdiB0bw0KPiA+IGRldmljZSBtZW1vcnkgcmVhbGx5DQo+DQo+IFdlbGwg
SSB0aGluayAjMSBpcyBwcmV0dHkgbXVjaCB0aGUgZGVmYXVsdCBmb3IgZEdQVXMgb24gYSBkZXNr
dG9wLiBUaGF0J3Mgd2h5IEkgbWVudGlvbmVkIGl0IGZpcnN0Lg0KDQpCdXQgSSBkb24ndCB0aGlu
ayBpdCdzIHdoYXQgd2Ugd291bGQgd2FudCwgaWYgc29tZW9uZSBhbGxvY2F0ZSBhDQpzeXN0ZW0g
bWVtb3J5IG9iamVjdCB0aGVuIHdlIHNob3VsZCBtZW1jZyBhY2NvdW50IGl0LiBCdXQgaW4gdGhp
cw0Kc2NlbmFyaW8gaXQncyB3aGVyZSB3ZSByZWFsbHkgaGF2ZSB0byBmYWNlIGV2aWN0aW9uLCBh
bmQgbWF5YmUgaW4gdGhpcw0Kc2NlbmFyaW9zIGl0IG1ha2VzIHNlbnNlIHRvIHN0YXRlIHRoYXQg
d2UgbmVlZCB0byByZXNlcnZlIG1lbWNnIHNwYWNlDQpmb3Igc3dhcHBpbmcgb2JqZWN0cywgYm90
aCBvdXQgb2YgVlJBTSBhbmQgaW50byBzd2FwIGl0c2VsZi4NCg0KSSdtIHN0YXJ0aW5nIHRvIHRo
aW5rIHRoZXJlIGlzbid0IGFub3RoZXIgZ29vZCB3YXkgdG8gZGVhbCB3aXRoDQpkeW5hbWljIHBv
d2VyIGFuZCBzdXNwZW5kL3Jlc3VtZSBpZiB3ZSBkb24ndCBoYXZlIHNvbWUgYWNjb3VudGluZyBm
b3INCm1vdmluZyBvYmplY3RzIG91dCBvZiBWUkFNIGludG8gc3lzdGVtIG1lbW9yeSwgaXQncyBq
dXN0IHdoZXRoZXIgd2UNCmNhbiBkbyBzb21ldGhpbmcgc3BlY2lhbCB0byBhY2NvdW50IGZvciBp
dCwgYnV0IG5vdCBkZXN0cm95IHRoZQ0KcHJvY2VzcyBvbiBiZWhhbGYgb2YgYW5vdGhlciBwcm9j
ZXNzIGRvaW5nIHRoZSB3cm9uZyB0aGluZy4NCg0KPg0KPiA+IElmIHNvbWV0aGluZyBpcyBpbiB0
aGUgbWFpbiBtZW1vcnkgcG9vbCwgaXQgc2hvdWxkIGJlIGFjY291bnRlZCBmb3INCj4gPiB1c2lu
ZyBtZW1jZy4gWW91IGNhbm5vdCByZW1vdmUgbWVtb3J5IGZyb20gdGhlIG1haW4gbWVtb3J5IHBv
b2wNCj4gPiB3aXRob3V0IGFjY291bnRpbmcgZm9yIGl0Lg0KPg0KPiBUaGF0J3Mgd2hhdCBJJ20g
c3Ryb25nbHkgZGlzYWdyZWVpbmcgb24uIFNlZSB0aGUgcGFnZSBjYWNoZSBpcyBub3QgYWNjb3Vu
dGVkIHRvIG1lbWNnIGVpdGhlciwgc28gd2hlbiB5b3Ugb3BlbiBhIGZpbGUgYW5kIHRoZSBrZXJu
ZWwgY2FjaGVzIHRoZSBiYWNraW5nIHBhZ2VzIHRoYXQgZG9lc24ndCByZWR1Y2UgdGhlIGFtb3Vu
dCB5b3UgY2FuIGFsbG9jYXRlIHRocm91Z2ggbWFsbG9jLCBkb2Vzbid0IGl0Pw0KDQpTbyB0aGUg
cGFnZSBjYWNoZSBpcyBhY2NvdW50ZWQgYWNjb3JkaW5nIHRvIFNoYWtlZWwsIHNvIGNhbiB3ZSBm
aW5kDQpzb21lIG90aGVyIGV4YW1wbGUuIEkgcmVhbGx5IHRoaW5rIHRoaXMgaXMgYSBiYWQgaWRl
YSwgcGFydGl0aW9uaW5nIGENCnNpbmdsZSByZXNvdXJjZSBpbnRvIHR3byBjb21wZXRpbmcgcG9v
bHMgaXNuJ3QgZ29pbmcgdG8gd29yayB0aGF0DQp3ZWxsLg0KDQo+DQo+IEluIG90aGVyIHdvcmRz
IHN5c3RlbSBtZW1vcnkgYmVjb21lcyB0aGUgc3dhcCBvZiBkZXZpY2UgbG9jYWwgbWVtb3J5LiBK
dXN0IHRoaW5rIGFib3V0IHdoeSBtZW1jZyBkb2Vzbid0IGxpbWl0cyBzd2FwIGJ1dCBvbmx5IGhv
dyBtdWNoIGlzIHN3YXBwZWQgb3V0Lg0KDQpCdXQgd2Ugc3RpbGwgbmVlZCBzd2FwIGZvciBzeXN0
ZW0gbWVtb3J5IGFzIHdlbGwsIGJ1dCB0aGVyZSBhcmUNCnN5c3RlbXMgd2l0aCBubyBzd2FwIGNv
bmZpZ3VyZWQsIGFuZCBvbiB0aG9zZSBJIHRoaW5rIHdlIG5lZWQgdG8gYmUNCmludGVncmF0ZWQg
d2l0aCBtZW1jZyBhbnl3YXlzIHRvIG1ha2UgaXQgd29yay4NCg0KPiBGb3IgdGhvc2UgdXNlIGNh
c2VzIHlvdSB3YW50IHRvIGhhdmUgYSBoYXJkIHN0YXRpYyBsaW1pdCBvbiBob3cgbXVjaCBzeXN0
ZW0gbWVtb3J5IGNhbiBiZSB1c2VkIGFzIHN3YXAuIFRoYXQncyB3aHkgd2Ugb3JpZ2luYWxseSB1
c2VkIHRvIGhhdmUgdGhlIHBlciBkcml2ZXIgZ3R0c2l6ZSwgdGhlIGdsb2JhbCBUVE0gcGFnZSBs
aW1pdCBldGMuLi4NCj4NCj4gVGhlIHByb2JsZW0gaXMgdGhhdCB3ZSB3ZWFrZW5lZCB0aG9zZSBs
aW1pdGF0aW9ucyBiZWNhdXNlIG9mIHRoZSBBUFUgdXNlIGNhc2UgYW5kIHRoYXQgaW4gdHVybiBy
ZXN1bHRlZCBpbiBhbGwgdGhvc2UgcHJvYmxlbXMgd2l0aCBicm93c2VycyBvdmVyIGFsbG9jYXRp
bmcgc3lzdGVtIG1lbW9yeSBldGMuLi4uDQo+DQo+IE5vdyBjZ3JvdXBzIHNob3VsZCBwcm92aWRl
IGFuIGFsdGVybmF0aXZlIGFuZCBJIHN0aWxsIHRoaW5rIHRoYXQgdGhpcyBpcyB0aGUgcmlnaHQg
YXBwcm9hY2ggdG8gc29sdmUgdGhpcywgYnV0IGluIHRoaXMgYWx0ZXJuYXRpdmUgSSB0aGluayB3
ZSB3YW50IHRvIHByZXNlcnZlIHRoZSBvcmlnaW5hbCBpZGVhIG9mIHNlcGFyYXRlIGRvbWFpbnMg
Zm9yIGRHUFVzLg0KPg0KPiA+IE5vdyB3ZSBjYW4gYWRkIGdwdSBsaW1pdHMgdG8gbWVtY2csIHRo
YXQNCj4gPiB3YXMgZ29pbmcgdG8gbWUgYSBuZXh0IHN0ZXAgaW4gbXkgc2VyaWVzLg0KPiA+DQo+
ID4gV2hldGhlciB3ZSBoYXZlIHRoYXQgYXMgYSBwZXJjZW50YWdlIG9yIGEgaGFyZCBsaW1pdCwg
d2Ugd291bGQganVzdA0KPiA+IHNheSBHUFUgY2FuIGNvbnN1bWUgOTUlIG9mIHRoZSBjb25maWd1
cmVkIG1heCBmb3IgdGhpcyBjZ3JvdXAuDQo+DQo+IFRoYXQgaXMgb25seSB1c2VmdWwgb24gQVBV
cyB3aGljaCBkb24ndCBoYXZlIGxvY2FsIG1lbW9yeSBiZWNhdXNlIHRob3NlIG1ha2UgYWxsIG9m
IHRoZWlyIGFsbG9jYXRpb25zIHRocm91Z2ggc3lzdGVtIG1lbW9yeS4NCj4NCj4gZEdQVXMgc2hv
dWxkIGJlIG11Y2ggbW9yZSBsaW1pdGVkIGluIHRoYXQgcmVnYXJkLg0KDQpTbyB5b3UgdGhpbmsg
d2Ugc2hvdWxkIGxpbWl0IHRoZSBzeXN0ZW0gbWVtb3J5IGFsbG9jYXRpb25zIG9uIGRHUFUuDQpJ
J20gd29ycmllZCBhYm91dCBHVFR8VlJBTSBhbGxvY2F0aW9ucyB3aGljaCBvbmNlIGV2aWN0ZWQs
IHRoZXJlIG1pZ2h0DQpiZSBubyByZWFzb24gdG8gcHVzaCBiYWNrIGludG8gVlJBTSBhbmQgdGhh
dCBlbmRpbmcgdXAgYXMgYSBiYWNrZG9vcg0KdG8gYWxsb2NhdGluZyBhIGxvdCBvZiBzeXN0ZW0g
bWVtb3J5IGFuZCBieXBhc3NpbmcgbWVtY2cuIEkgZG9uJ3QNCnJlYWxseSBsaWtlIHRoZSBpZGVh
IG9mIGJ5cGFzc2luZyBtZW1jZyBhdCBhbGwuDQoNCj4NCj4gPiAzIHRvIG1lIGp1c3Qgc291bmRz
IGxpa2Ugd2UgaGF2ZW4ndCBmaWd1cmVkIG91dCBmYWxsYmFjayBvcg0KPiA+IHN1c3BlbmQvcmVz
dW1lIGFjY291bnRpbmcgeWV0LCB3aGljaCBpcyB0cnVlLCBidXQgSSdtIG5vdCBzdXJlIHRoZXJl
DQo+ID4gaXMgYSByZWFzb24gZm9yIDMgdG8gZXhpc3Qgb3V0c2lkZSBvZiB0aGUgd2UgZG9uJ3Qg
a25vdyBob3cgdG8gYWNjb3VudA0KPiA+IGZvciB0ZW1wb3Jhcnkgc3RvcmFnZSBvZiBzd2FwcGVk
IG91dCBWUkFNIG9iamVjdHMuDQo+DQo+IE1hcmlvIGhhcyBmaXhlZCBvciBpcyBhdCBsZWFzdCB3
b3JraW5nIG9uIHRoZSBzdXNwZW5kL3Jlc3VtZSBwcm9ibGVtcy4gU28gSSBkb24ndCBjb25zaWRl
ciB0aGF0IGFuIGlzc3VlIGFueSBtb3JlLg0KPg0KPiBUaGUgdXNlIGNhc2UgMyBoYXBwZW5zIG9u
IEhQQyBzeXN0ZW1zIHdoZXJlIGRldmljZSBsb2NhbCBtZW1vcnkgaXMgYmFzaWNhbGx5IGp1c3Qg
YSBjYWNoZS4gRm9yIGV4YW1wbGUgdGhpcyBvbmUgaGVyZTogaHR0cHM6Ly9lbi53aWtpcGVkaWEu
b3JnL3dpa2kvRnJvbnRpZXJfKHN1cGVyY29tcHV0ZXIpDQo+DQo+IEluIHRoaXMgdXNlIGNhc2Ug
eW91IGRvbid0IGNhcmUgaWYgYSBidWZmZXIgaXMgaW4gZGV2aWNlIGxvY2FsIG1lbW9yeSBvciBz
eXN0ZW0gbWVtb3J5LCB3aGF0IHlvdSBjYXJlIGFib3V0IGlzIHRoYXQgdGhpbmdzIGFyZSByZWxp
YWJsZSBhbmQgZm9yIHRoYXQgeW91ciB0YXNrIGF0IGhhbmQgc2hvdWxkbid0IGV4Y2VlZHMgYSBj
ZXJ0YWluIGxpbWl0Lg0KPg0KPiBFLmcuIHlvdSBydW4gY29tcHV0YXRpb24gQSB3aGljaCBjYW4g
dXNlIDEwMEdCIG9mIHJlc291cmNlcyBhbmQgd2hlbiBjb21wdXRhdGlvbiBCIHN0YXJ0cyBjb25j
dXJyZW50bHkgeW91IGRvbid0IHdhbnQgQSB0byBzdWRkZW5seSBmYWlsIGJlY2F1c2UgaXQgbm93
IGZpZ2h0cyB3aXRoIEIgZm9yIHJlc291cmNlcy4NCj4NCj4gPiBMaWtlIGl0IG1pZ2h0IGJlIHdl
IG5lZWQgdG8gaGF2ZSBpdCBzbyB3ZSBoYXZlIGEgbGltaXRlZCB0cmFuc2ZlciBwb29sDQo+ID4g
b2Ygc3lzdGVtIG1lbW9yeSBmb3IgVlJBTSBvYmplY3RzIHRvICJsaXZlIGluIiBidXQgd2UgbW92
ZSB0aGVtIHRvDQo+ID4gc3dhcCBhcyBzb29uIGFzIHBvc3NpYmxlIG9uY2Ugd2UgZ2V0IHRvIHRo
ZSBsaW1pdCBvbiB0aGF0LiBOb3cgd2hhdCB3ZQ0KPiA+IGRvIG9uIHN5c3RlbXMgd2hlcmUgbm8g
c3dhcCBpcyBhdmFpbGFibGUsIHRoYXQgZ2V0cyBpbnRvIEkndmUgbm8gaWRlYQ0KPiA+IHNwYWNl
Lg0KPiA+DQo+ID4gU3RhdGljIHBhcnRpdGlvbmluZyBtZW1jZyB1cCBpbnRvIGEgZG1lbSBhbmQg
bWVtY2cgaXNuJ3QgZ29pbmcgdG8NCj4gPiBzb2x2ZSB0aGlzLCB3ZSBzaG91bGQgc29sdmUgaXQg
aW5zaWRlIG1lbWNnLg0KPg0KPiBXZWxsIGl0J3MgY2VydGFpbmx5IHBvc3NpYmxlIHRvIHNvbHZl
IGFsbCBvZiB0aGlzIGluIG1lbWNnLCBidXQgSSBkb24ndCB0aGluayBpdCdzIHZlcnkgZWxlZ2Fu
dC4NCj4NCj4gU3RhdGljIHBhcnRpdGlvbmluZyBiZXR3ZWVuIG1lbWNnIGFuZCBkbWVtZSBmb3Ig
dGhlIGRHUFUgY2FzZSBhbmQgbWVyZ2VkIGFjY291bnRpbmcgZm9yIHRoZSBBUFUgY2FzZSBieSBk
ZWZhdWx0IGFuZCB0aGVuIGdpdmluZyB0aGUgc3lzdGVtIGFkbWluaXN0cmF0b3IgdG8gZXZlbnR1
YWxseSBzd2l0Y2ggdG8gdXNlIGNhc2UgMyBzb3VuZHMgbXVjaCBtb3JlIGZsZXhpYmxlIHRvIG1l
Lg0KPg0KPiBBdCBsZWFzdCB0aGUgb2J2aW91cyBhZHZhbnRhZ2UgaXMgdGhhdCB5b3UgZG9uJ3Qg
c3RhcnQgdG8gYWRkIG1vZHVsZSBwYXJhbWV0ZXJzIHRvIFRUTSwgRE1BLWJ1ZiBoZWFwcyBhbmQg
ZHJpdmVycyBpZiB0aGV5IHNob3VsZCBvciBzaG91bGQgbm90IGFjY291bnQgdG8gbWVtY2csIGJ1
dCByYXRoZXIga2VlcCBhbGwgdGhlIGxvZ2ljIGluc2lkZSBjZ3JvdXBzLg0KDQpJIGRvbid0IHRo
aW5rIHdlIHNob3VsZCBoYXZlIHRvIHN0YXRpYyBwYXJ0aXRpb24gYXQgYWxsIGhlcmUsIGl0J3MN
Cmp1c3QgYXNraW5nIGZvciBwcm9ibGVtcyBsYXRlciwgYW5kIGl0IHdpdGhvdXQgcHJvcGVyIGFj
Y291bnRpbmcgd2lsbA0KY2F1c2UgYSBidW5jaCBvZiByZWNsYWltIHVubmVjZXNzYXJpbHkuDQoN
CkRhdmUuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5v
cmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxp
c3RzLmxpbmFyby5vcmcK
