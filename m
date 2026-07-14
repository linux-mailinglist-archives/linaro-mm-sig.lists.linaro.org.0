Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qmhaFbhIVmpO2wAAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 16:33:28 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCF7755DF2
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 16:33:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=qZbGcfyz;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id A476F4097A
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 14 Jul 2026 14:33:26 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id 1E5C8404A8
	for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 14:33:23 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-493f2e39e81so18035365e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 14 Jul 2026 07:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784039602; x=1784644402; darn=lists.linaro.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yqr76+rJ8iwHayK7NjLGqhPMmOMQyjm2NesJQTgS2Xo=;
        b=qZbGcfyz/a492ynvkMA0ImoN2KDg4SMajOUlqRwZvMIMsg+Uf4f+P0pUvsDnm5/UkL
         Bfmc463P6ngCOwpk1Wghoy7XyO8MteVoU+GoxF1pWVWRnHogJVHdSRkZfY76XWRPjEAC
         ef8W5PDYgKq37be5kh0MsAJaSVaR/rT5jt85BNc98+fV4GBiXPXbjnB7t3RJ8ikkCq12
         WZIbK1iWIzHBI45nEuCuCOUHFVgQml6q8l0dE5VfVRLR8aU27G5XEQldDGWvwMWyRzfV
         QwkSCf5iIkd5wKsS/cQ1c0FpFryQb7KZXhKMMyyNejcog0HcEqVc5AUg3xAdatZCO1hW
         K9Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784039602; x=1784644402;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yqr76+rJ8iwHayK7NjLGqhPMmOMQyjm2NesJQTgS2Xo=;
        b=OWZzgZw4hbu6u9wQjf9mVFEmoCKNjPF46USQ5RBbAMFcbUQhRYcWi1yV8duYZpPxAe
         CEct/LvPdBUooJl2UtvnGjmpOJBfV6cZvH0Naq1qkj7AD21nSJajYI9BAYCJpeCbf2KQ
         yAbi0Jl8IkQLv6pYIZyH0t44NDve6sm9u9s/mdA2B6p9a5B+lB40cASTJwCA6weiyrWc
         kVdwjSxHl2Z5PXaCsZwlUTiNdy7lTJlHZq//1xDkCbtip/yEOGBonqbP6uqXQbHbPmr5
         CQs+/wRlF9Hw7vy9Wayb1X8gNzPtDVVjQfzSTqIn8CpUEqLB/NBMa03pSbMrA3BrA8d0
         gVzw==
X-Forwarded-Encrypted: i=1; AHgh+RrJ/kkX5RHRf2t2I+1UXQFWsMYx6Db49+RFNc6NwpenToLKJU+axfsNtTjMmE+iXc1RNQzqX071uiW2fF7t@lists.linaro.org
X-Gm-Message-State: AOJu0YxkOr738685pUqTEQXZVNjvDKBoBGdRpZry5sE3/3TLQxdaIEJF
	fuWH2Ir99XiQbCQlzRGsbZQDGt6ifu9bXeUqipcCRTVEkQOsvY2plQh4
X-Gm-Gg: AfdE7cmS3gp3DdGXl57AhxvcNaW8JsW2y0EI89GexL9IG3Jd3OQvkZerBN33hhzrZci
	6n+5cBTnZV6Ufgs7l47XvB0oG41N+x2hpBKf9kXEipN1lwMpXfrj5mvkvQc3DBWHcOrOagX6BOP
	0ZXRLTpGmPcUB94RnZxxO3s1hnhfeSLog/9z+Dqn9YKxbVT9/viCnkQ35hrrXzm3EsH0SnUQOrz
	u+MIXTclxiMjraz106PnZsyv/RXN4ZGjsps1aFILCwD9E37B7SRTNkoZRxWAklc6ZQ1vWtjnxuV
	pweYSJTNLbllrPZg7LYxESJMlZf0EyBVlP8phbw3v1Hy/ow6Wbobgl/7/HC896Is6YDa5Jl168d
	9DVKigRld2J9VciNtFOAL/Z2dr2GodciCj+a6p/QmVIkOO08dQ0mEPIPm3e+H3lmqbEi4rl61gU
	mUTNSkcvF4YAZlhfnQ/7VahmMF3T8iYi6m3Rt833WLmYQ2KJoxew==
X-Received: by 2002:a05:600c:3e1b:b0:493:e890:9e0b with SMTP id 5b1f17b1804b1-493f883157bmr144382565e9.26.1784039601550;
        Tue, 14 Jul 2026 07:33:21 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493f2e0f165sm270374515e9.0.2026.07.14.07.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 07:33:20 -0700 (PDT)
Date: Tue, 14 Jul 2026 15:33:19 +0100
From: David Laight <david.laight.linux@gmail.com>
To: =?UTF-8?B?5a+/5p+P6IO9?= <shoubaineng@gmail.com>
Message-ID: <20260714153319.07b2b1e1@pumpkin>
In-Reply-To: <CAGCp47zPkd6MWcMpxobphJp6giufpnJL46iFQMt9p76gb7OtKA@mail.gmail.com>
References: <CABdmKX21NHc2=9Sk2F-BFpu6is0vTg-QXLE+wiFNEPdsWWjvog@mail.gmail.com>
	<20260714114654.3885457-1-shoubaineng@gmail.com>
	<20260714114654.3885457-2-shoubaineng@gmail.com>
	<20260714141359.7758575d@pumpkin>
	<CAGCp47zPkd6MWcMpxobphJp6giufpnJL46iFQMt9p76gb7OtKA@mail.gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
Message-ID-Hash: 4IZZ7CMRPH36MPFPGTMEIU5HNKLHTXVM
X-Message-ID-Hash: 4IZZ7CMRPH36MPFPGTMEIU5HNKLHTXVM
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: Sumit Semwal <sumit.semwal@linaro.org>, Christian =?UTF-8?B?S8O2bmln?= <christian.koenig@amd.com>, "T . J . Mercier" <tjmercier@google.com>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, Sandeep Patil <sspatil@android.com>, "Andrew F . Davis" <afd@ti.com>, Srinivas Kandagatla <srini@kernel.org>, stable@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3 1/2] dma-buf: dma-heap: don't publish fd before copy_to_user() succeeds
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/4IZZ7CMRPH36MPFPGTMEIU5HNKLHTXVM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.19 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:shoubaineng@gmail.com,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:tjmercier@google.com,m:benjamin.gaignard@collabora.com,m:Brian.Starkey@arm.com,m:jstultz@google.com,m:sspatil@android.com,m:afd@ti.com,m:srini@kernel.org,m:stable@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:linux-kernel@vger.kernel.org,m:linux-arm-msm@vger.kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ACCF7755DF2

T24gVHVlLCAxNCBKdWwgMjAyNiAyMTozODowNyArMDgwMA0K5a+/5p+P6IO9IDxzaG91YmFpbmVu
Z0BnbWFpbC5jb20+IHdyb3RlOg0KDQo+IEhpIERhdmlkLA0KPiANCj4gVGhhbmtzIGZvciB0aGUg
ZmVlZGJhY2suDQo+IA0KPiBUaGUgY29uY2VybiBpcyBub3QganVzdCBhYm91dCB0aGUgRUZBVUxU
IHJldHVybiDigJQgaXQncyBhYm91dCB0aGUgcmFjZQ0KPiB3aW5kb3cgYmV0d2VlbiBmZF9pbnN0
YWxsKCkgYW5kIGNvcHlfdG9fdXNlcigpLiAgT25jZSBmZF9pbnN0YWxsKCkNCj4gcmV0dXJucywg
dGhlIGZkIGlzIGltbWVkaWF0ZWx5IG9ic2VydmFibGUgYnkgb3RoZXIgdGhyZWFkcyBpbiB0aGUg
c2FtZQ0KPiBwcm9jZXNzICh2aWEgL3Byb2Mvc2VsZi9mZCwgU0NNX1JJR0hUUywgZXRjLiksIGV2
ZW4gYmVmb3JlDQo+IGNvcHlfdG9fdXNlcigpIGhhcyBhIGNoYW5jZSB0byBmYWlsLiAgVGhlIHRy
aWdnZXJpbmcgY29uZGl0aW9uIGlzIGENCj4gZGVsaWJlcmF0ZSBtcHJvdGVjdCgpIGZsaXAsIG5v
dCBhIGNvcnJ1cHRlZCBoZWFwLg0KDQpUaGF0IGlzIHdoYXQgbWFrZXMgZG9pbmcgdGhlIGNsb3Nl
IHdyb25nLg0KQnV0IHRoYXQgaXMgYSBwcm9ncmFtIGFnZ3Jlc3NpdmVseSB0cnlpbmcgdG8gaGl0
IHRoZSB0aW1pbmcgd2luZG93LA0Kbm90IGEgbm9ybWFsIHByb2dyYW0gdGhhdCBoYXMgbWFuYWdl
ZCB0byBwYXNzIGFuIGludmFsaWQgcG9pbnRlci4NClRoZSBtb3N0IGxpa2VseSByZWFzb24gZm9y
IGEgcmVhbCBwcm9ncmFtIHBhc3NpbmcgYW4gaW52YWxpZCBwb2ludGVyDQppcyBhIGNvcnJ1cHRl
ZCBoZWFwIChhc3N1bWluZyB0aGUgc3R1cGlkIGNvZGluZyBlcnJvcnMgYXJlIGZpeGVkKS4NCg0K
SXQgaXMgcmVhbGx5IG5vIGRpZmZlcmVudCBmcm9tIHRoZSBzb2Nrb3B0IGNvZGUgdGhhdCByZWNl
aXZlcw0KU0NNX1JJR0hUUyBtZXNzYWdlcy4NCkluIHRoYXQgY2FzZSBvbmNlIHlvdSd2ZSByZW1v
dmVkIHRoZSBGSUxFIGZyb20gdGhlIHNvY2tldCAob3Igc2ltaWxhcikNCnlvdSByZWFsbHkgZG9u
J3Qgd2FudCB0byBoYXZlIHRvIHB1dCBpdCBiYWNrIGJlY2F1c2UgdGhlIHdyaXRlIHRvIHRoZQ0K
c29ja29wdCBidWZmZXIgb3IgbGVuZ3RoIGZpZWxkIGZhaWxzLg0KVGhlIGNoYW5jZSBvZiBjb3Jy
ZWN0bHkgcmV2ZXJ0aW5nIHRoZSBrZXJuZWwgc3RhdGUgaXMgc21hbGwgLSBhbmQgd29uJ3QNCmJl
IHRlc3RlZC4NCg0KCURhdmlkDQoNCj4gDQo+IFRoZSBmaXggaXRzZWxmIGlzIHNtYWxsIGFuZCBm
b2xsb3dzIHRoZSBzdGFuZGFyZCBrZXJuZWwgaWRpb206DQo+IGdldF91bnVzZWRfZmRfZmxhZ3Mo
KSByZXNlcnZlcyB0aGUgZmQgd2l0aG91dCBwdWJsaXNoaW5nIGl0LCBzbyB0aGUNCj4gd2luZG93
IGJldHdlZW4gcmVzZXJ2YXRpb24gYW5kIGluc3RhbGwgaXMgZW50aXJlbHkgdW5kZXIga2VybmVs
IGNvbnRyb2wuDQo+IA0KPiBCYWluZW5nDQo+IA0KPiBEYXZpZCBMYWlnaHQgPGRhdmlkLmxhaWdo
dC5saW51eEBnbWFpbC5jb20+IOS6jjIwMjblubQ35pyIMTTml6XlkajkuowgMjE6MTTlhpnpgZPv
vJoNCj4gDQo+ID4gT24gVHVlLCAxNCBKdWwgMjAyNiAxOTo0Njo1MyArMDgwMA0KPiA+IEJhaW5l
bmcgU2hvdSA8c2hvdWJhaW5lbmdAZ21haWwuY29tPiB3cm90ZToNCj4gPiAgDQo+ID4gPiBETUFf
SEVBUF9JT0NUTF9BTExPQyBhbGxvY2F0ZXMgYSBkbWEtYnVmIGFuZCBpbnN0YWxscyBhbiBmZCBp
bnRvIHRoZQ0KPiA+ID4gY2FsbGVyJ3MgZmQgdGFibGUgdmlhIGRtYV9idWZfZmQoKSAtPiBmZF9p
bnN0YWxsKCkgYmVmb3JlDQo+ID4gPiBkbWFfaGVhcF9pb2N0bCgpIGNvcGllcyB0aGUgcmVzdWx0
IGJhY2sgdG8gdXNlcnNwYWNlLiAgSWYgdGhlIHRyYWlsaW5nDQo+ID4gPiBjb3B5X3RvX3VzZXIo
KSBmYWlscywgdXNlcnNwYWNlIG5ldmVyIGxlYXJucyB0aGUgZmQgbnVtYmVyLCBidXQgdGhlDQo+
ID4gPiBmZCAoYW5kIHRoZSB1bmRlcmx5aW5nIGRtYS1idWYgcmVmZXJlbmNlKSBhcmUgYWxyZWFk
eSB2aXNpYmxlIHRvDQo+ID4gPiBvdGhlciB0aHJlYWRzIGluIHRoZSBzYW1lIHByb2Nlc3MgYW5k
IGFyZSBsZWFrZWQgZm9yIHRoZSBsaWZldGltZSBvZg0KPiA+ID4gdGhlIHByb2Nlc3MuDQo+ID4g
Pg0KPiA+ID4gVGhlIG9idmlvdXMgImNsb3NlIGl0IG9uIHRoZSBmYWlsdXJlIHBhdGgiIGZpeCBp
cyB1bnNhZmU6IG9uY2UNCj4gPiA+IGZkX2luc3RhbGwoKSBoYXMgcnVuLCBhbm90aGVyIHRocmVh
ZCBjYW4gYWxyZWFkeSBkdXAoKSB0aGUgZmQsIHNlbmQNCj4gPiA+IGl0IHZpYSBTQ01fUklHSFRT
LCBvciBjbG9zZSgpIGl0IGFuZCBsZXQgaXRzIG51bWJlciBiZSByZXVzZWQsIHNvIGENCj4gPiA+
IHN1YnNlcXVlbnQgY2xvc2VfZmQoKSBmcm9tIHRoZSBpb2N0bCBwYXRoIGNhbiBvcGVyYXRlIG9u
IGFuIHVucmVsYXRlZA0KPiA+ID4gZmlsZS4gIFRoaXMgd2FzIHBvaW50ZWQgb3V0IGJ5IENocmlz
dGlhbiBLw7ZuaWcgb24gdjEgWzFdLiAgDQo+ID4gLi4uDQo+ID4NCj4gPiBNeSAyYzoNCj4gPg0K
PiA+IFRoZSBvdGhlciBvcHRpb24gaXMganVzdCB0byBsZWF2ZSBpdCBhcyBhICdwcm9ibGVtIGZv
ciB1c2VyIHNwYWNlJy4NCj4gPiBObyByZWFzb25hYmxlIHByb2dyYW0gaXMgZ29pbmcgdG8gaGFu
ZGxlIHRoZSBFRkFVTFQgcmV0dXJuIGJ5IGRvaW5nDQo+ID4gYW55dGhpbmcgb3RoZXIgdGhhbiBl
eGl0aW5nLg0KPiA+IEV2ZW4gZ2V0dGluZyBhbiBFRkFVTFQgaXMgcmVhbGx5IGFuIGluZGljYXRp
b24gdGhhdCB0aGUgYXBwbGljYXRpb24NCj4gPiBpcyBhbHJlYWR5IGluIGEgcmVhbCBtZXNzIC0g
bW9zdCBsaWtlbHkgd2l0aCBhIGJhZGx5IGNvcnJ1cHRlZCBoZWFwLg0KPiA+DQo+ID4gQW55dGhp
bmcgZWxzZSBsZWF2ZXMgZXJyb3IgcmVjb3ZlcnkgY29kZSBpbiB0aGUga2VybmVsIHRoYXQgaXMg
cHJldHR5DQo+ID4gbXVjaCBuZXZlciBleGVjdXRlZCBhbmQgb3BlbiB0byBhIHZhcmlldHkgb2Yg
YnVncy4NCj4gPiBXaGlsZSB0aGUgcmVjb3ZlcnkgaGVyZSBpcyBwcm9iYWJseSBvaywgdGhlcmUg
YXJlIHNvbWUgc29ja29wdCBjYWxscw0KPiA+IHdoZXJlIGl0IGlzIGFsbCBtb3JlIGNvbXBsaWNh
dGVkLg0KPiA+DQo+ID4gICAgICAgICBEYXZpZA0KPiA+ICANCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3Qg
LS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4g
ZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
