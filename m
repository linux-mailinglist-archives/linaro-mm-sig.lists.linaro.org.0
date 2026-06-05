Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id TKuWMtNJKWoOTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:11 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 805C2668C3F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=VMh8C4Ns;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 982F140A1E
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:26:10 +0000 (UTC)
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by lists.linaro.org (Postfix) with ESMTPS id 0D1CB3F81B
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 16:02:59 +0000 (UTC)
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-96387977596so751498241.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 09:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780675378; x=1781280178; darn=lists.linaro.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GMM8rItwjOBKBZTiVFQDKLbinjfJL7SeunmDuhS3L9o=;
        b=VMh8C4Nswfu08mckFxwcKs9uzJ3tkoLeU0UnfFNMhQPaIieebHcG/1GeQ1wbbjJWt/
         cJdZkqylKvlkIZbTM2Em8bRd28YOCTqLQIqLGMEiGYIwqFOgzekHZcEhm/FJKhRy9Szl
         bHC+ky8sfGBy1bKeRn2LHRhrOc6bAcfzJnCkk2otto9ag3oQg0o77pmaYAiIzAjzKvoY
         HtVTxO3Ay/RBz58EZCt5ksZ5V9NSyPdyxhF59gD4EQieUakUrPMJ0737+nI0fgykDNYU
         LGipHNl/E5P1HvuNNJ0whdRHvud9P5CNQMKle8j5C++kjZxQrAQ+4A2vel6G7HTd5x7G
         536w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780675378; x=1781280178;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GMM8rItwjOBKBZTiVFQDKLbinjfJL7SeunmDuhS3L9o=;
        b=O1FJ/e7EFp2krAh9OxhedsgfwiIJaZFzat8H8ganakjhuWtrqcc/xYs9rPj3lh4idC
         fAQSG639QQTYh3PjeCjsh4zMtgCKp9qv4GK6o5oF148LPbRKLptmV75XP8gdOoVD8Ct4
         0JIECHZnk1uOiD5MZ6XB7ym+MjNXcFFa+hEznx8KBJqaiuoicI5JzKXbl8gsnU3kIJ/i
         4ozOTcUaGEHqaxJLucKXcU2Ui1bKtoJc3x1Ms7im0VBtFqe10A+Dz7llvJuoZpRCFJgW
         TSInAe1ceQ5ccJJDJQsyHydzsNarimR8jw8DYp8tt6A4vO2SuRFxMD887uQtXXau7gkF
         ofaw==
X-Forwarded-Encrypted: i=1; AFNElJ83qfHmyfBxQ7kqGcfm+v7fniCqDezlxSthAyWi7Atpf7T1G/VX2UalYBRo0KWGG9tuLDE34pYUGkeAAM1K@lists.linaro.org
X-Gm-Message-State: AOJu0YxN0AMSeG3mp+2bPhZRF9ZRSlBJsN8Guthj+YPw+4Mbd+OETL5S
	WAEWCFB+SsPxnIWbSBK+Ecs6m51a5WkIJJ6/WTFYvBItPzbEeC1RhfNz
X-Gm-Gg: Acq92OFT/6U+nUdltGCRAzLFoOcETawLXp1CE7Tf838/GvIDJjhprbLvVHNCoSOOnh+
	u9O5kErXiDlqkrm5PKgT8Z23kpFLrhu63FwIAVQgGbZrAys42fsLDk1Rx3ehHwbLf1WTGfgqsg6
	n6QShw99Dg+yHPVXTFpwvEEDXMVx9y0oSQMbVbhKs87TUST4BaocSmNPZ/wCCPCIku03W5DpRvu
	jYCkD4Pddo8s+XEP2Nrlh0Ogw9DWIQQ/KKRAt2E1WnyTRYym6IowPgPgtKw5sHk8Y5H/EWW2s3K
	3Xc9EA88KwEBNdIv207aH2RhIc7B/gzWElAptjMwQZuijFVYJldKVBsPy2k+oWwUNny7HbWHRRX
	HJrYw8LlMVkr5HX8LY3j+lWIvv1Z78SG6fEiu/V/711RehaKyl8rHp+m3lMStCCdaRAyEgilvhq
	gz2iFjTyWdON+caUe8HTMhG2AxtLbR5G9gZ6FL0V02C+07WC3+aTXt8jHavSI0UTS9wRzIIPmU
X-Received: by 2002:a05:6122:3d45:b0:573:a779:62cf with SMTP id 71dfb90a1353d-5ac4f952082mr2315135e0c.7.1780675378285;
        Fri, 05 Jun 2026 09:02:58 -0700 (PDT)
Received: from smtpclient.apple ([2804:7f1:c241:abe4:8c1d:3d1b:d7cb:e7e9])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96413f9afe7sm6908115241.6.2026.06.05.09.02.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2026 09:02:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
From: Daniel Almeida <dwlsalmeida@gmail.com>
In-Reply-To: <FEFE0522-FD7A-40DE-8B2A-09FE2F33F327@gmail.com>
Date: Fri, 5 Jun 2026 13:02:36 -0300
Message-Id: <48CE71C8-7A67-4D09-84C2-A0B83C32B169@gmail.com>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-5-phasta@kernel.org>
 <4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
 <20260603191405.4c75badb@fedora-2.home>
 <09096455-BA79-4E61-AD88-44DA57C5BEA8@gmail.com>
 <20260604101552.4232733b@fedora-2.home>
 <8ff2de94a50ed077a4cfe520a081f2b8b438a375.camel@mailbox.org>
 <FEFE0522-FD7A-40DE-8B2A-09FE2F33F327@gmail.com>
To: phasta@kernel.org
X-Mailer: Apple Mail (2.3826.700.81)
X-Spamd-Bar: -
X-MailFrom: dwlsalmeida@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: P7MSRC2S2GIP3JLUSWBVUHBI6QSZIEJD
X-Message-ID-Hash: P7MSRC2S2GIP3JLUSWBVUHBI6QSZIEJD
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:33 +0000
CC: Boris Brezillon <boris.brezillon@collabora.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoak
 es <ljs@kernel.org>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/P7MSRC2S2GIP3JLUSWBVUHBI6QSZIEJD/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[115];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:phasta@kernel.org,m:boris.brezillon@collabora.com,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:rostedt@goodmis.org,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:gregkh@linuxfoundation.org,m:igor.korotin@linux.dev,m:ljs@kernel.org,m:acourbot@nvidia.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:shankari.ak0208@gmail.com,m:manos@pitsidianak.is,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rcu@vger.kernel.org,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s:
 lists@lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[dwlsalmeida@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dwlsalmeida@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[collabora.com,kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	APPLE_MAILER_COMMON(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 805C2668C3F

DQo+PiANCj4+PiANCj4+PiBTbywgYnkgcGFzc2luZyBzZWxmIGJ5IHZhbHVlIHRvIHRoZSA6OmNh
bGxiYWNrKCksIHlvdSdyZSBiYXNpY2FsbHkNCj4+PiB0ZWxsaW5nIHVzZXJzICJoZXksIEJUVywg
ZG9uJ3QgZm9yZ2V0IHRvIGRlZmVyIHRoZSBkcm9wIHRvIHNvbWUNCj4+PiB3b3JrcXVldWUgaWYg
eW91IHRoaW5rIGl0J3Mgbm90IGF0b21pYy1zYWZlIi4gQW5kIGhvdyBjYW4gdXNlcnMga25vdw0K
Pj4+IHRoYXQgdGhlIHRoaW5nIHRoZXkncmUgYWJvdXQgdG8gZHJvcCBjYW4gYmUgZHJvcHBlZCBp
biBhdG9taWMgY29udGV4dD8NCj4+PiBUaGV5IGJhc2ljYWxseSBoYXZlIHRvIGF1ZGl0IHRoZSA6
OmRyb3AoKSBvZiBhbGwgdGhlIHJlc291cmNlcyB0aGV5DQo+Pj4gZW1iZWQgaW4gdGhlaXIgdHlw
ZSBpbXBsZW1lbnRpbmcgRmVuY2VDYi4gTm90IG9ubHkgdGhhdCwgYnV0IHRoZXkgYWxzbw0KPj4+
IGhhdmUgdG8gZGVzaWduIHRoZSB0aGluZyBzbyB0aGUgZGVmZXJyYWwgb2YgdGhpcyA6OmRyb3Ao
KSBkb2Vzbid0DQo+Pj4gYWxsb2NhdGUsIGJlY2F1c2UsIG9idmlvdXNseSwgYWxsb2NhdGluZyBp
biBhdG9taWMgY29udGV4dCBpcw0KPj4+IHRyaWNreS9mYWxsaWJsZS4gQUZBSUssIG5vbmUgb2Yg
dGhpcyBjYW4gYmUgc3BvdCBhdCBjb21waWxlLXRpbWUgKEkNCj4+PiByZW1lbWJlciBHYXJ5L0Rh
bmlsbyBtZW50aW9uaW5nIHRoYXQgd2UgY291bGQgdGVhY2ggdGhlIGtsaW50IGFib3V0DQo+Pj4g
c29tZSBvZiB0aGVzZSBydWxlcykuIFRoaXMgd291bGQgbGVhdmUgdXMgd2l0aCBydW50aW1lIGNo
ZWNrcyBsaWtlDQo+Pj4gbWlnaHRfc2xlZXAoKSwgYnV0IG1vc3Qgb2YgdGhlIEMgcHV0dGVycyAo
eHh4X3B1dChvYmplY3QpKSBkb24ndCBoYXZlDQo+Pj4gbWlnaHRfc2xlZXAoKSBpbiB0aGUgcGF0
aCB3aGVyZSB0aGUgZGVjcmVmIGRvZXNuJ3QgbGVhZCB0byBhIHJlZmNudD0wDQo+Pj4gc2l0dWF0
aW9uLg0KPj4+IA0KPj4+IFRMRFI7IENhbGwgdGhpcyBQVFNEIGlmIHlvdSB3YW50LCBidXQgdGhp
cyBpcyB0aGUgc29ydCBvZiBidWdzIEkNCj4+PiBzdHJ1Z2dsZWQgd2l0aCBvbiB0aGUgQyBzaWRl
LCBhbmQgSSBjYW4gcHJlZGljdCB0aGF0IHRoZSBleGFjdCBzYW1lDQo+Pj4gd2lsbCBoYXBwZW4g
aW4gcnVzdCBkcml2ZXJzIGlmIHdlIGV4cG9zZSB0aGUgRmVuY2VDYiBhcyBpdCBpcyBkZXNpZ25l
ZA0KPj4+IGhlcmUgYW5kIHdlIGRvbid0IGhhdmUgYSB3YXkgdG8gY2hlY2sgdGhlIHNvdW5kbmVz
cyBvZiB0aGUgRmVuY2VDYg0KPj4+IGltcGxlbWVudGF0aW9ucyBhdCBjb21waWxlIHRpbWUuDQo+
PiANCj4+IE15IGd1ZXNzIHdvdWxkIGJlIHRoYXQgdGhlIGV4aXN0ZW5jZSBvZiB1bnNhZmUtdHJh
aXRzIGlzIHRoZSBhZG1pc3Npb24NCj4+IG9mIFJ1c3QgdGhhdCB0aGlzIGp1c3QgY2Fubm90IGJl
IGd1YXJhbnRlZWQgYnkgZGVzaWduLg0KPj4gDQo+PiBJZiBhIGRyaXZlciBjYW5ub3Qga25vdyB3
aGV0aGVyIHRoaXMgb3IgdGhhdCBpcyBzYWZlIHRvIGRyb3AsIHRoZW4gaXQNCj4+IHdvdWxkIGhh
dmUgdG8gZGVmZXIgaXQncyBkcm9wcGluZy4gT3Igd291bGQgdGhlcmUgYmUgY2FzZXMgd2hlcmUg
dGhpcw0KPj4gYWxzbyBkb2Vzbid0IHdvcms/DQo+IA0KPiANCj4gQWx0aG91Z2ggSSB0b3RhbGx5
IHVuZGVyc3RhbmQgd2hlcmUgQm9yaXMgaXMgY29taW5nIGZyb20gaGVyZSwgYW5kIEkgYWdyZWUg
d2l0aA0KPiBoaW0sIHRoZSByZWFsaXR5IGlzIHRoYXQgdGhlIGN1cnJlbnQgJm11dCBzZWxmIGRl
c2lnbiBkb2VzbuKAmXQgc29sdmUgdGhpcy4gQW4NCj4gdW5zYWZlIHRyYWl0IGNvdWxkIHdvcmsg
YXMgYSBwaW5reS1wcm9taXNlIGJ5IGRyaXZlcnMsIHdoaWNoIGlzIGhhbGYtd2F5IHRoZXJlLg0K
PiANCj4gV2hhdCB3ZSBpZGVhbGx5IHdvdWxkIGxpa2UgdG8gaGF2ZSBpcyBhIGJvdW5kIHRob3Vn
aCwgc29tZXRoaW5nIGxpa2U6DQo+IA0KPiBUOiAhRHJvcA0KPiANCj4gSWYgSSByZWNhbGwgY29y
cmVjdGx5IHRoZXJlIHdlcmUgcGVvcGxlIHdvcmtpbmcgdG8gZ2V0IHN1cHBvcnQgZm9yIHRoYXQg
b24NCj4gUnVzdD8gSSB0aGluayB0aGVyZSBhcmUgdHdvIHRoaW5ncyBoZXJlOiAhVHJhaXQsIHdo
aWNoIGlzIG5vdCBzdXBwb3J0ZWQgZXhjZXB0DQo+IGZvciAhU2l6ZWQgSUlSQywgYW5kIGhhdmlu
ZyBhbiBhdXRvIHRyYWl0IHRoYXQgcmVwcmVzZW50cyB0eXBlcyB0aGF0IGltcGxlbWVudA0KPiBE
cm9wLCBzaW1pbGFyIHRvIFNlbmQgYW5kIFN5bmMuDQo+IA0KDQoNCkluIGZhY3QsIHBpbmcgdGhl
IHBpbi1pbml0IHBlb3BsZSBoZXJlLCBpLmUuOiBCZW5ubywgR2FyeSwgZXRjLiANCg0KV2hhdCBp
cyB0aGUgbWFnaWMgYmVoaW5kIOKAnE11c3ROb3RJbXBsRHJvcOKAnT8gUGVyaGFwcyB3ZSBjb3Vs
ZCBhcHBseSB0aGF0IGhlcmU/DQoNCuKAlCBEYW5pZWwKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGlu
YXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwg
dG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
