Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id C01A8AFB4B6
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 15:35:36 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D4A5C45509
	for <lists+linaro-mm-sig@lfdr.de>; Mon,  7 Jul 2025 13:35:35 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by lists.linaro.org (Postfix) with ESMTPS id 6130D3F6DD
	for <linaro-mm-sig@lists.linaro.org>; Mon,  7 Jul 2025 13:35:21 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=NYw8avjw;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.208.43 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-60c60f7eeaaso4613592a12.0
        for <linaro-mm-sig@lists.linaro.org>; Mon, 07 Jul 2025 06:35:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751895320; x=1752500120; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iglN2fDJo6Jj8oOAA17PlpCWLQPcfqHRK3QqDqJauNc=;
        b=NYw8avjwUcFhkT5wKOFQmzcZNrMF+bZkbhbh8bo68HYoPITPbvdIxP1oT/tE9oRrp8
         3vTpviAYFAw1isJe3eOMr+IlaM/sd/1OaUzusVLn8bXeCJvSy8Zi5zfdzZmfXg79/esj
         pgQziuChaYzTTIHk4Ema3PnzlyczYjo9o1e8qTy4HiedzJwo3seG7wrg8jvBNABZ6w0G
         QL0hr7pGD8m6tK+L0X/5u87626MRDGBtHR0MHyL1zw+TqH3GnxE2CYI6koHW1xzya0vE
         B4qRmq8VsrVl958P2d0J8abMJjV9otGyHMgWP4f4eSVY7Th2dtNBAUAAj21wHiF1tuov
         IRHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751895320; x=1752500120;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iglN2fDJo6Jj8oOAA17PlpCWLQPcfqHRK3QqDqJauNc=;
        b=TPdRu0diFi9+QAb/c2s1DwgGh9wnMkfMY8wE+nh7O0jJJY/oNq6V5zV69nsSW5DqWU
         5JpQM7C1WfL88dmeY7MvHSCfS7kwaQuxKOPoN2iyom14oJRVHpgmv8D+k5AUtT2prcwQ
         MMDgRdylizi9h9PjvXH79qzoDVgWl6mFSAYRpQDXrCCi9lR3rXpNJ0eiedPWkcPC60fK
         aQ46CcE59MjCW5LcR7qWW0nJB81jhuVOiGumrodzSsWkmhMlH5oA2Qe9YRsXO2R8pxa3
         aZd4IxlWUDbtTORhjGt1EA6jPgFAY80RCrvOeTNjA0bMkIK7DeYOq1wdJOHLeIgaukYn
         dJnA==
X-Forwarded-Encrypted: i=1; AJvYcCUta4X4KCGsw1EQwSvLvq1cOa+9fSKKiLyzw8IjJA4bcZ7w3gozVAKcM2HnPDwj2sG6Tbv/SZiSVEIoDbfH@lists.linaro.org
X-Gm-Message-State: AOJu0Yyodxf7BwnHeCaYFNHqOTEqTbQf6Z6P83/9mYSm0pPo909ODPC1
	9o1s0ioSdREXc+18FxitICeOwi4v8ktcMWwJWXh8RMuPoZNpKRs4UL5ayTT8MtoRuzLh+2QQd0B
	X9YSGuzBf9Je7hnoI7/ROAbk3/xtGCqRro7+ysNZRgoEz
X-Gm-Gg: ASbGnctsiPBDEn/UPIqhwwNouM6ruC2Amtak2T7Qav3AoxT1yDAND+PFVGjyW/k6s+M
	KTMUeZDmIwMjerV0XFFpQwoqzZH3t3jYjF03F9WJOCWGqzWDxOZRVrPDoKOtfXgIMWwusb+lZFt
	lJdaitMrDKUlNy47T2Mcg+xCB7QltO/8rvKv1gqmySI6vWViW07U7Nq7YySAqMgSTZouXZ73r5W
	jIjpY7UwxwU8Q==
X-Google-Smtp-Source: AGHT+IET++QyEw80P77BIRzs6JWa9kHBMfwtkMIUTg5pCT3exqjnCE5AHFUJIOdI1A973C72FUTiNPTJJ/5qE+IOutw=
X-Received: by 2002:a50:eb0c:0:b0:607:32e8:652 with SMTP id
 4fb4d7f45d1cf-60ff3c0d6e8mr6977121a12.19.1751895320263; Mon, 07 Jul 2025
 06:35:20 -0700 (PDT)
MIME-Version: 1.0
References: <20250610131231.1724627-1-jkangas@redhat.com> <aGvHUTC7Kbe9lru3@jkangas-thinkpadp1gen3.rmtuswa.csb>
In-Reply-To: <aGvHUTC7Kbe9lru3@jkangas-thinkpadp1gen3.rmtuswa.csb>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Mon, 7 Jul 2025 19:05:09 +0530
X-Gm-Features: Ac12FXyRxHcDe4-WqyYgc42A2U_9x5Uy_U3EHMTjmhyPcBLa1jvXKcYwtoIgS80
Message-ID: <CAO_48GHtUG_hTFvLVQfG06FxdO_6z5m0WofXKh=WhgCjNguxPg@mail.gmail.com>
To: Jared Kangas <jkangas@redhat.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 6130D3F6DD
X-Spamd-Bar: ---
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.43:from];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid,mail-ed1-f43.google.com:rdns,mail-ed1-f43.google.com:helo];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DNSWL_BLOCKED(0.00)[209.85.208.43:from];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
Message-ID-Hash: D5TCFQJ4BZ3GVJIH66AUYC4REIZCGCRE
X-Message-ID-Hash: D5TCFQJ4BZ3GVJIH66AUYC4REIZCGCRE
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, tjmercier@google.com, christian.koenig@amd.com, mripard@kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 0/3] dma-buf: heaps: Use constant name for CMA heap
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/D5TCFQJ4BZ3GVJIH66AUYC4REIZCGCRE/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gSmFyZWQsDQoNCk9uIE1vbiwgNyBKdWwgMjAyNSBhdCAxODo0MCwgSmFyZWQgS2FuZ2Fz
IDxqa2FuZ2FzQHJlZGhhdC5jb20+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEp1biAxMCwgMjAyNSBh
dCAwNjoxMjoyOEFNIC0wNzAwLCBKYXJlZCBLYW5nYXMgd3JvdGU6DQo+ID4gSGkgYWxsLA0KPiA+
DQo+ID4gVGhpcyBwYXRjaCBzZXJpZXMgaXMgYmFzZWQgb24gYSBwcmV2aW91cyBkaXNjdXNzaW9u
IGFyb3VuZCBDTUEgaGVhcA0KPiA+IG5hbWluZy4gWzFdIFRoZSBoZWFwJ3MgbmFtZSBkZXBlbmRz
IG9uIHRoZSBkZXZpY2UgbmFtZSwgd2hpY2ggaXMNCj4gPiBnZW5lcmFsbHkgInJlc2VydmVkIiwg
ImxpbnV4LGNtYSIsIG9yICJkZWZhdWx0LXBvb2wiLCBidXQgY291bGQgYmUgYW55DQo+ID4gYXJi
aXRyYXJ5IG5hbWUgZ2l2ZW4gdG8gdGhlIGRlZmF1bHQgQ01BIGFyZWEgaW4gdGhlIGRldmljZXRy
ZWUuIEZvciBhDQo+ID4gY29uc2lzdGVudCB1c2Vyc3BhY2UgaW50ZXJmYWNlLCB0aGUgc2VyaWVz
IGludHJvZHVjZXMgYSBjb25zdGFudCBuYW1lDQo+ID4gZm9yIHRoZSBDTUEgaGVhcCwgYW5kIGZv
ciBiYWNrd2FyZHMgY29tcGF0aWJpbGl0eSwgYW4gYWRkaXRpb25hbCBLY29uZmlnDQo+ID4gdGhh
dCBjb250cm9scyB0aGUgY3JlYXRpb24gb2YgYSBsZWdhY3ktbmFtZWQgaGVhcCB3aXRoIHRoZSBz
YW1lIENNQQ0KPiA+IGJhY2tpbmcuDQo+ID4NCj4gPiBUaGUgaWRlYXMgdG8gaGFuZGxlIGJhY2t3
YXJkcyBjb21wYXRpYmlsaXR5IGluIFsxXSBhcmUgdG8gZWl0aGVyIHVzZSBhDQo+ID4gc3ltbGlu
ayBvciBhZGQgYSBoZWFwIG5vZGUgd2l0aCBhIGR1cGxpY2F0ZSBtaW5vci4gSG93ZXZlciwgSSBh
c3N1bWUNCj4gPiB0aGF0IHdlIGRvbid0IHdhbnQgdG8gY3JlYXRlIHN5bWxpbmtzIGluIC9kZXYg
ZnJvbSBtb2R1bGUgaW5pdGNhbGxzLCBhbmQNCj4gPiBhdHRlbXB0aW5nIHRvIGR1cGxpY2F0ZSBt
aW5vcnMgd291bGQgY2F1c2UgZGV2aWNlX2NyZWF0ZSgpIHRvIGZhaWwuDQo+ID4gQmVjYXVzZSBv
ZiB0aGVzZSBkcmF3YmFja3MsIGFmdGVyIGJyYWluc3Rvcm1pbmcgd2l0aCBNYXhpbWUgUmlwYXJk
LCBJDQo+ID4gd2VudCB3aXRoIGNyZWF0aW5nIGEgbmV3IG5vZGUgaW4gZGV2dG1wZnMgd2l0aCBp
dHMgb3duIG1pbm9yLiBUaGlzDQo+ID4gYWRtaXR0ZWRseSBtYWtlcyBpdCBhIGxpdHRsZSB1bmNs
ZWFyIHRoYXQgdGhlIG9sZCBhbmQgbmV3IG5vZGVzIGFyZQ0KPiA+IGJhY2tlZCBieSB0aGUgc2Ft
ZSBoZWFwIHdoZW4gYm90aCBhcmUgcHJlc2VudC4gVGhlIG9ubHkgYXBwcm9hY2ggdGhhdCBJDQo+
ID4gdGhpbmsgd291bGQgcHJvdmlkZSB0b3RhbCBjbGFyaXR5IG9uIHRoaXMgaW4gdXNlcnNwYWNl
IGlzIHN5bWxpbmtpbmcsDQo+ID4gd2hpY2ggc2VlbWVkIGxpa2UgYSBmYWlybHkgaW52b2x2ZWQg
c29sdXRpb24gZm9yIGRldnRtcGZzLCBidXQgaWYgSSdtDQo+ID4gd3Jvbmcgb24gdGhpcywgcGxl
YXNlIGxldCBtZSBrbm93Lg0KPiA+DQo+ID4gQ2hhbmdlbG9nOg0KPiA+DQo+ID4gdjQ6DQo+ID4g
ICAtIEZpeCBFUlJfUFRSKCkgdXNhZ2UgZm9yIG5lZ2F0aXZlIHJldHVybiB2YWx1ZS4NCj4gPg0K
PiA+IHYzOg0KPiA+ICAgLSBFeHRyYWN0IGRvY3VtZW50YXRpb24gbWFya3VwIGZpeCB0byBzZXBh
cmF0ZSBwYXRjaC4NCj4gPiAgIC0gQWRqdXN0IERFRkFVTFRfQ01BX05BTUUgcGVyIGRpc2N1c3Np
b24gaW4gWzJdLg0KPiA+ICAgLSBXYXJuIGlmIHRoZSBsZWdhY3kgaGVhcCBuYW1lIGFuZCB0aGUg
ZGVmYXVsdCBoZWFwIG5hbWUgYXJlIHRoZSBzYW1lLg0KPiA+ICAgLSBGaXggRE1BQlVGX0hFQVBT
X0NNQV9MRUdBQ1kgcHJvbXB0Lg0KPiA+ICAgLSBUb3VjaCB1cCBjb21taXQgbG9nIHdvcmRpbmcu
DQo+ID4NCj4gPiB2MjoNCj4gPiAgIC0gVXNlIHRhYnMgaW5zdGVhZCBvZiBzcGFjZXMgZm9yIGxh
cmdlIHZlcnRpY2FsIGFsaWdubWVudC4NCj4gPg0KPiA+IFsxXTogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvYWxsL2Y2NDEyMjI5LTQ2MDYtNDFhZC04YzA1LTdiYmJhMmViNmUwOEB0aS5jb20vDQo+
ID4gWzJdOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvQ0FORGhOQ3JvZTZaQnROX289Yzcx
a3pGRmFXSy1mRjVyQ2RucjlQNWgxc2dQT1dTR1N3QG1haWwuZ21haWwuY29tLw0KPiA+DQo+ID4g
SmFyZWQgS2FuZ2FzICgzKToNCj4gPiAgIERvY3VtZW50YXRpb246IGRtYS1idWY6IGhlYXBzOiBG
aXggY29kZSBtYXJrdXANCj4gPiAgIGRtYS1idWY6IGhlYXBzOiBQYXJhbWV0ZXJpemUgaGVhcCBu
YW1lIGluIF9fYWRkX2NtYV9oZWFwKCkNCj4gPiAgIGRtYS1idWY6IGhlYXBzOiBHaXZlIGRlZmF1
bHQgQ01BIGhlYXAgYSBmaXhlZCBuYW1lDQo+ID4NCj4gPiAgRG9jdW1lbnRhdGlvbi91c2Vyc3Bh
Y2UtYXBpL2RtYS1idWYtaGVhcHMucnN0IHwgMTEgKysrLS0tDQo+ID4gIGRyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9LY29uZmlnICAgICAgICAgICAgICAgICB8IDEwICsrKysrKw0KPiA+ICBkcml2ZXJz
L2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYyAgICAgICAgICAgICAgfCAzNiArKysrKysrKysrKysr
KystLS0tDQo+ID4gIDMgZmlsZXMgY2hhbmdlZCwgNDYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRp
b25zKC0pDQo+ID4NCj4gPiAtLQ0KPiA+IDIuNDkuMA0KPiA+DQo+DQo+IEhpIFN1bWl0LA0KPg0K
PiBKdXN0IHdhbnRlZCB0byBjaGVjayBpbiBvbiB0aGlzIHNpbmNlIGRpc2N1c3Npb24gaGFzIGRp
ZWQgZG93biB0aGlzDQo+IGl0ZXJhdGlvbjogd2hhdCdzIHRoZSBzdGF0dXMgb24gdGhpcyBzZXJp
ZXM/IElmIHRoZXJlJ3MgYW55dGhpbmcgSSBjYW4NCj4gZG8gdG8gaGVscCwgSSdtIGhhcHB5IHRv
IGxlbmQgYSBoYW5kLg0KDQpJJ20gc29ycnksIEkgaGFkIHRvIGJlIG91dCBmb3IgYSBiaXQgZHVl
IHRvIHNvbWUgcGVyc29uYWwgcmVhc29uczsNCm92ZXJhbGwgaXQgbG9va3MgZ29vZCB0byBtZS4g
SSdsbCBhcHBseSBpdCB2ZXJ5IHNvb24uDQoNClRoYW5rIHlvdSBmb3IgeW91ciBwYXRpZW5jZSEN
Cg0KPg0KPiBUaGFua3MsDQo+IEphcmVkDQpCZXN0LA0KU3VtaXQuDQo+DQoNCg0KLS0gDQpUaGFu
a3MgYW5kIHJlZ2FyZHMsDQoNClN1bWl0IFNlbXdhbCAoaGUgLyBoaW0pDQpTZW5pb3IgVGVjaCBM
ZWFkIC0gQW5kcm9pZCwgUGxhdGZvcm1zIGFuZCBWaXJ0dWFsaXNhdGlvbg0KTGluYXJvLm9yZyDi
lIIgQXJtIFNvbHV0aW9ucyBhdCBMaWdodCBTcGVlZA0KX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
