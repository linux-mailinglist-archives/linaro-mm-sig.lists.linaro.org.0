Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C24D3A9F0
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 14:09:33 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2B6F040141
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 19 Jan 2026 13:09:32 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by lists.linaro.org (Postfix) with ESMTPS id CD7B13F6FF
	for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 13:09:25 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=linaro.org header.s=google header.b=G7MNb0jd;
	spf=pass (lists.linaro.org: domain of sumit.semwal@linaro.org designates 209.85.218.51 as permitted sender) smtp.mailfrom=sumit.semwal@linaro.org;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=none) header.from=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-b8708930695so662382966b.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 19 Jan 2026 05:09:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768828165; cv=none;
        d=google.com; s=arc-20240605;
        b=EQ1VnnVpuD3PSk5j/3ZFVmpDng8qjLb0HjS9hcnO/cMQRb+4P0lJU18JXp+It9/G21
         muVmmlZgiezh/Y20m+UO4r4cJFYS+SDKYJAluh8iSJogIv03TELsGVRron/u1W+57Q7n
         uMAsJtn1QUbM+LOwhDFjtUB4+IuuLGaoetZPJBTbq9lsN6Z26mf0yA7Xv0Ee8Wbf3Ljh
         R3lyjB+e9OAXAXSr8pX7jvs0pwK24IZiHTX2j2JhfnCR1bWY5UOrwbb2+LEwcJL+FiKx
         Eh6xArIJMo6n4+QXDbKunKkFwejOzbWDlo2v3oDTCBQhO+bc6JBwmc+SqtrhTiSHX/s8
         wGQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=dq0JDh/8icBDBSEsY1eC6bpJ7R/xK2j7R0ikxEAxkoA=;
        fh=aoaY189VUJiyHysW0rQ19D+78nYsvweYspsaglCsznQ=;
        b=BUdw1YICEbr+rE5IhDHTY+JThailPGTgHEHIcATv+QqK3aSMKyeCLesivupFe2zFPf
         8crp8gElC7Ngu/SVxWtTcUi/guyvodJ2d55B7chjrShhLxO0J4hgAtjUbGlulF5a/qqj
         eNM6vmDzeGTqSglIV3wpDJoY1wSBdrrdlSyqWW3oXJ/DLEv5zIRnMWtaTu3GInaOlqSp
         5xJh5bduGvdMCCAQ68O9NJlvRnbuTPA7W3kKi7fRKg4Ev0oGrOHKOo8fLUNvTDtm7LIx
         DyYy4Z++TnDneQdP3kpFRVELmvJRjhVhVEs1Tu6bxWD6+1yl4MpySdwyFQpCvVzqjyo/
         bGUg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768828165; x=1769432965; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dq0JDh/8icBDBSEsY1eC6bpJ7R/xK2j7R0ikxEAxkoA=;
        b=G7MNb0jd9RG6SmBCbb4nGUquoDGg2VQjm5kWP45ZUtX/zZK37P9FYkE4gnthwgp6WP
         72ABFjLvjyE91UsK4sA9glITmm49SOtWmvmEl+feszgod6XiyFrzBNlgVs/3WwyKox3E
         hycDgE4J7VNIviFcpQjJMs+5ZNQZucgkZ46IqoX/DGdTOo8E/Nk+Grv06zNU0stG2Q/i
         L/Uy0Tr2D75d3E4/1vb1wc2wF8Luj1MHV5Di0u841UG0qoMjFG+jpltIWDMnpszG0Oa1
         Wd+0qyumRbpaQGkONVQ86bc50KuUEUZviei63jOYy3cCnmdeQY3/jB8l5OH4rQIkvZ3e
         7B0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768828165; x=1769432965;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=dq0JDh/8icBDBSEsY1eC6bpJ7R/xK2j7R0ikxEAxkoA=;
        b=TSGcNWHzyXc8Ci/UhlkE3YvpIc5z+7KNvwcehIpVdb0LyAilUNdbps6Jq8Ugz6aVkn
         8vAP03OYsdrMl8V1BDvUFRLjh4Yck3Kb+19uegTrLCWNRRqPeJmCinhldV9IvlzICj5q
         e80abcteDfJvFRws7OgnDdxzmdffNqJ362sE/fil6iky8Xuwvs2SBjH5Ekw9h9RnWiwb
         dQFqqJlsXl8BSmcAJKB5NWMsP7W0pbIY0+7lksfaA8Cz6LUc9OhbhMsgecgPiU4UfuZG
         9LnNnh2f/civbINdXYdaxMaVRKyMg3B0wjLZXRAE8Qj137Wy382zNSMwP22m/m3qnL21
         IOng==
X-Forwarded-Encrypted: i=1; AJvYcCWq94VpTa6DMZ7NL+ipVBkA+vg5DEubtaXu+Ro6Ml9Zqkdb45HFJ4NInt9xk3ukzQHL9Eh20Tk6TspSi/Gf@lists.linaro.org
X-Gm-Message-State: AOJu0YyID+q5e/9dFAUHLSculi/XshKOZHPwGlo3l/fn5JK9zXGyP/7f
	FbgrcmUUhFlD8AJmld9ggyCq/yNTPjKLXvH4QT4Ai9MJf+3K9mhga8e0KN/n1/ywZGYP2+O9Sjp
	LuxO4ixmJ1TbXtKn1U7k9oDdGFF9drPdi9FZ3mUFmPXud
X-Gm-Gg: AY/fxX6zNelhN68JVue8N2ewEOHbCVYvIAiIJFa0p8wp2PhMo8hP585YmyZmicSaI1B
	jeFNgeoHJz/V6LIBSHJC9pq/qZyCpmT/kcehl9NsEJRGOqOB+/sBRwHY9vd8AoFn48YGX55XIfd
	CdbgUwTTsYLlCM9J8wh1R8DTxeqQNZKH0PL/H963ByirvWcI68HNJdww6Kh+hwWhtZUX1j61RIU
	A4LhvRaXEahjusAotuWrCxZmAIA9+G1nLvUsgk1Z7w2MF+ZFR0ble2LW1xhcYk+BNt6ZfWDUYYI
	26v5KaGJuC6zT1V3lKHqFIUfmew=
X-Received: by 2002:a17:907:944c:b0:b87:324b:9ae1 with SMTP id
 a640c23a62f3a-b8796aee9ccmr1020227666b.40.1768828164660; Mon, 19 Jan 2026
 05:09:24 -0800 (PST)
MIME-Version: 1.0
References: <20260116-dmabuf-heap-system-memcg-v3-0-ecc6b62cc446@redhat.com>
 <20260116-dmabuf-heap-system-memcg-v3-2-ecc6b62cc446@redhat.com> <CABdmKX21XWwwOWZ969GT=DOu7_aofKR7E6+4iMggbELVM=zYAQ@mail.gmail.com>
In-Reply-To: <CABdmKX21XWwwOWZ969GT=DOu7_aofKR7E6+4iMggbELVM=zYAQ@mail.gmail.com>
From: Sumit Semwal <sumit.semwal@linaro.org>
Date: Mon, 19 Jan 2026 18:39:13 +0530
X-Gm-Features: AZwV_QirK4eHvVLrlVMfEp91UoJml_vMBrWLaPQVZT2bzdXxn7wRhnkQb0VhLYo
Message-ID: <CAO_48GHqPj_OXd0V-k6YG837wHBKBpOCjRbMN-kbkF=nK+_s2w@mail.gmail.com>
To: "T.J. Mercier" <tjmercier@google.com>
X-Rspamd-Queue-Id: CD7B13F6FF
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.218.51:from];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	DWL_DNSWL_BLOCKED(0.00)[linaro.org:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[linaro.org:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: GG26NQVWQC3WAMKYYUKCKRCWODH3A23T
X-Message-ID-Hash: GG26NQVWQC3WAMKYYUKCKRCWODH3A23T
X-MailFrom: sumit.semwal@linaro.org
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Eric Chanudet <echanude@redhat.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maxime Ripard <mripard@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 2/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/GG26NQVWQC3WAMKYYUKCKRCWODH3A23T/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gRXJpYywNCg0KT24gU2F0LCAxNyBKYW4gMjAyNiBhdCAwNDowNywgVC5KLiBNZXJjaWVy
IDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4gd3JvdGU6DQo+DQo+IE9uIEZyaSwgSmFuIDE2LCAyMDI2
IGF0IDEyOjA24oCvUE0gRXJpYyBDaGFudWRldCA8ZWNoYW51ZGVAcmVkaGF0LmNvbT4gd3JvdGU6
DQo+ID4NCj4gPiBUaGUgc3lzdGVtIGRtYS1idWYgaGVhcCBsZXRzIHVzZXJzcGFjZSBhbGxvY2F0
ZSBidWZmZXJzIGZyb20gdGhlIHBhZ2UNCj4gPiBhbGxvY2F0b3IuIEhvd2V2ZXIsIHRoZXNlIGFs
bG9jYXRpb25zIGFyZSBub3QgYWNjb3VudGVkIGZvciBpbiBtZW1jZywNCj4gPiBhbGxvd2luZyBw
cm9jZXNzZXMgdG8gZXNjYXBlIGxpbWl0cyB0aGF0IG1heSBiZSBjb25maWd1cmVkLg0KPiA+DQo+
ID4gUGFzcyBfX0dGUF9BQ0NPVU5UIGZvciBzeXN0ZW0gaGVhcCBhbGxvY2F0aW9ucywgYmFzZWQg
b24gdGhlDQo+ID4gZG1hX2hlYXAubWVtX2FjY291bnRpbmcgcGFyYW1ldGVyLCB0byB1c2UgbWVt
Y2cgYW5kIGFjY291bnQgZm9yIHRoZW0uDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBFcmljIENo
YW51ZGV0IDxlY2hhbnVkZUByZWRoYXQuY29tPg0KPg0KPiBSZXZpZXdlZC1ieTogVC5KLiBNZXJj
aWVyIDx0am1lcmNpZXJAZ29vZ2xlLmNvbT4NCg0KVGhhbmsgeW91IGZvciB0aGUgc2VyaWVzOyBM
R1RNLCBJJ2xsIHB1c2ggaXQgdG9uaWdodCB0byBkcm0tbWlzYy1uZXh0Lg0KDQpCZXN0LA0KU3Vt
aXQuDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5h
cm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcK
VG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3Rz
LmxpbmFyby5vcmcK
