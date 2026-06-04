Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id r3b8LXNJKWqyTgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:24:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 380A5668BCC
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:24:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=nQJ9K8P9;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4D0C540991
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:24:34 +0000 (UTC)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com [209.85.221.172])
	by lists.linaro.org (Postfix) with ESMTPS id 26BC940A1B
	for <linaro-mm-sig@lists.linaro.org>; Thu,  4 Jun 2026 00:43:30 +0000 (UTC)
Received: by mail-vk1-f172.google.com with SMTP id 71dfb90a1353d-59f967189e7so43632e0c.0
        for <linaro-mm-sig@lists.linaro.org>; Wed, 03 Jun 2026 17:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780533809; x=1781138609; darn=lists.linaro.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rym8UMbIPSnQ16D68tiaqUk5iYRBwLoCnDZwF31rnjM=;
        b=nQJ9K8P9cqrvWukyeQPNA5y10ZWyyzawT9l1xqATjD+qPgaciQ4Nua8D1Zh73eFGPb
         OL4TGedkQ8ND5nzg6/71uBSnqPIK/sruq5hqCxakr9Ft82cN9smPrJMyzjcHmIVWXwzH
         SiZhs3YCPAoHq/fhfxOLYndI8wqPTyzUe9lCY2wd7nuiv6cXYrOndkvgMOcvXBNnWtqE
         i6TGj0KiQ6OMZGCTp5rDklwaMtX5duznDWHEnIByLpqVezvPfnwlpoatSoPqqhGvrDp3
         iLTEIGkWYtOBSpLqRi2ngYiCI+4VDHu33dkyk7HfnGPtAPQndzxnN8cAkDxq1BUDXvJv
         Ag/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780533809; x=1781138609;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rym8UMbIPSnQ16D68tiaqUk5iYRBwLoCnDZwF31rnjM=;
        b=EXEuxX7PLNk/BBACLs2CtdGVI80KKTGe/IXX+HNykJHH4kNHccrNlG2RWCyj05mcz2
         5uS5/bY9Y4uJyJwt0SAqe25p12LuOt+XTui5tTGTdJYg1rypD9Was+6Bmlt39xcfETyk
         tymFCES19jrqHMrTbZzyGVy3BCpWSW6ziSxqR1J5yic1irm4VE0uRI3ELiTPR9KNmd6O
         P+wzuZJlePQ+akroruZyzTbb5DJ8lWE5PS0NG2RYjDN58vqhfrvoatsOn2gAjQI+PwbF
         ARBnyH4cL42umT+qbyXKr1E6jpmIKc9WdA8sDuxDPTv0gqnnAavgWGofwpO4Ipt68giO
         5+iA==
X-Forwarded-Encrypted: i=1; AFNElJ/B2Lbp3nH1jnba7w674LExkz6mlU8idwg6kpQnY7ae/VOJxr5lCkAQn6IgkqhtmtU+GKxzLslJVbgeUreK@lists.linaro.org
X-Gm-Message-State: AOJu0Yy2soXtI1L04JO0KeJfxEFLRVpxlZXpIprAlljDZdfE9CzRGeHT
	+XkaGMoHCQMBKdVd2yesv87f41IQ+5BiyRC8I7vFpabo9/SufNe2crSk
X-Gm-Gg: Acq92OFAzAQL3s3Nk1KndSSficNZXEjdFNmCHc5azsy3I+Dk+j60B3qCpqd71evdWyp
	Kg4dk1RZC0s9oYlp4azVorx1IyJOsV1ak4Xx9Z44hfJMmDGpXVAPE8AA+ZagVQNHOImeoYArjE4
	9L4dP0Hq2FYShTy4yCTdi+GdR1BV2OMtHd8WOsyMA2uFXmYSurhD/H1GMl2Ma4q3kgjLjrFduVh
	LkKGp71MU0EdzlpA3Jg2YkvkbnURI8K8f39RVqLjf5AzevKXBCld/yWSUILL4RJhzyX05++NxAu
	WiKTp+LW7zmC0VVGhYeFq8qcoLuKfApsSSJEjPE6KJXFosKwrhV+BtoekeigJLNxviJYcTHSczf
	rX4TDcsxaMJZLzfie5FQKeiGxfCRTzA/po4P1dhfdCanUdZLkPszD4Z3S2b/U1Oy1zo7VXLVv3f
	rFWTQZ5ZSxGy6/tXwifr2FldvGAUPMZAGZz/tC4chMAlWvvEQ/sFMe
X-Received: by 2002:a05:6122:e250:b0:56f:6cc0:681e with SMTP id 71dfb90a1353d-5a6e20460f6mr4443168e0c.1.1780533809510;
        Wed, 03 Jun 2026 17:43:29 -0700 (PDT)
Received: from smtpclient.apple ([179.165.169.30])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5a6d6dc3d3fsm4139948e0c.5.2026.06.03.17.43.18
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2026 17:43:28 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
From: Daniel Almeida <dwlsalmeida@gmail.com>
In-Reply-To: <20260603191405.4c75badb@fedora-2.home>
Date: Wed, 3 Jun 2026 21:43:05 -0300
Message-Id: <09096455-BA79-4E61-AD88-44DA57C5BEA8@gmail.com>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-5-phasta@kernel.org>
 <4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
 <20260603191405.4c75badb@fedora-2.home>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Mailer: Apple Mail (2.3826.700.81)
X-Spamd-Bar: ---
X-MailFrom: dwlsalmeida@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: G2N27IDPRS6XE6TUM7K4DELMWRCHOJL3
X-Message-ID-Hash: G2N27IDPRS6XE6TUM7K4DELMWRCHOJL3
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:22:52 +0000
CC: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kern
 el.org>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/G2N27IDPRS6XE6TUM7K4DELMWRCHOJL3/>
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
	DATE_IN_PAST(1.00)[154];
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
	FORGED_RECIPIENTS(0.00)[m:boris.brezillon@collabora.com,m:phasta@kernel.org,m:ojeda@kernel.org,m:boqun@kernel.org,m:gary@garyguo.net,m:bjorn3_gh@protonmail.com,m:lossin@kernel.org,m:a.hindborg@kernel.org,m:aliceryhl@google.com,m:tmgross@umich.edu,m:dakr@kernel.org,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:paulmck@kernel.org,m:frederic@kernel.org,m:neeraj.upadhyay@kernel.org,m:joelagnelf@nvidia.com,m:josh@joshtriplett.org,m:urezki@gmail.com,m:rostedt@goodmis.org,m:mathieu.desnoyers@efficios.com,m:jiangshanlai@gmail.com,m:qiang.zhang@linux.dev,m:gregkh@linuxfoundation.org,m:igor.korotin@linux.dev,m:ljs@kern el.org,m:acourbot@nvidia.com,m:fujita.tomonori@gmail.com,m:prafulrai522@gmail.com,m:shankari.ak0208@gmail.com,m:manos@pitsidianak.is,m:linux-kernel@vger.kernel.org,m:rust-for-linux@vger.kernel.org,m:linux-media@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:linaro-mm-sig@lists.linaro.org,m:rcu@vger.kernel.org,m:fujitatomonori@gmail.com,m:shankariak0208@gmail.com,s
 :lists@lfdr.de];
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
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,google.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,linuxfoundation.org,kern el.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	APPLE_MAILER_COMMON(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 380A5668BCC

DQoNCj4gT24gMyBKdW4gMjAyNiwgYXQgMTQ6MTQsIEJvcmlzIEJyZXppbGxvbiA8Ym9yaXMuYnJl
emlsbG9uQGNvbGxhYm9yYS5jb20+IHdyb3RlOg0KPiANCj4gT24gV2VkLCAzIEp1biAyMDI2IDEz
OjQxOjAyIC0wMzAwDQo+IERhbmllbCBBbG1laWRhIDxkd2xzYWxtZWlkYUBnbWFpbC5jb20+IHdy
b3RlOg0KPiANCj4+PiArICAgIC8vLyBDYWxsZWQgd2hlbiB0aGUgZmVuY2UgaXMgc2lnbmFsZWQu
DQo+Pj4gKyAgICAvLy8NCj4+PiArICAgIC8vLyBUaGlzIGlzIGNhbGxlZCBmcm9tIHRoZSBmZW5j
ZSBzaWduYWxpbmcgcGF0aCwgd2hpY2ggbWF5IGJlIGluIGludGVycnVwdA0KPj4+ICsgICAgLy8v
IGNvbnRleHQgb3Igd2l0aCBsb2NrcyBoZWxkLCB3aGljaCBpcyB3aHkgYHNlbGZgIGlzIG9ubHkg
Ym9ycm93ZWQsIHNvIHRoYXQNCj4+PiArICAgIC8vLyBpdCBjYW5ub3QgZHJvcC4gSW1wbGVtZW50
YXRpb25zIG11c3Qgbm90IHNsZWVwIG9yIHBlcmZvcm0NCj4+PiArICAgIC8vLyBsb25nLXJ1bm5p
bmcgb3BlcmF0aW9ucy4NCj4+PiArICAgIC8vLw0KPj4+ICsgICAgLy8vIEFuIGltcGxlbWVudGF0
aW9uIGxpa2VseSB3YW50cyB0byBpbmZvcm0gaXRzZWxmIChlLmcuLCB0aHJvdWdoIGEgd29yayBp
dGVtKQ0KPj4+ICsgICAgLy8vIHdpdGhpbiB0aGlzIGNhbGxiYWNrIHRoYXQgdGhlIGFzc29jaWF0
ZWQgW2BGZW5jZUNiUmVnaXN0cmF0aW9uYF0gY2FuIG5vdyBiZQ0KPj4+ICsgICAgLy8vIGRyb3Bw
ZWQuDQo+Pj4gKyAgICBmbiBjYWxsZWQoJm11dCBzZWxmKTsgIA0KPj4gDQo+PiBUaGlzIGlzIGEg
Y2VudHJhbCBwb2ludC4gV2UgaWRlYWxseSB3b3VsZCB3YW50IHRoaXMgdG8gY29uc3VtZSBzZWxm
LCBiZWNhdXNlIHdlDQo+PiBtYXkgd2FudCB0byBtb3ZlIHRoaW5ncyBvdXQgb2YgdGhlIGNhbGxi
YWNrLiAgDQo+IA0KPiBUaGlzIG9uZSBjb21lcyBmcm9tIG1lLiBUaGUgcmF0aW9uYWxlIGJlaW5n
IHRoYXQgOjpjYWxsZWQoKSBpcyBjYWxsZWQNCj4gZnJvbSBhbiBhdG9taWMgY29udGV4dCwgYW5k
IHRoZSByZXNvdXJjZXMgYXR0YWNoZWQgdG8gdGhlIGNhbGxiYWNrIGRhdGENCj4gbWlnaHQgcmVx
dWlyZSBhY3F1aXJpbmcgb3RoZXIgc2xlZXBpbmcgbG9ja3MgdG8gYmUgcmVsZWFzZWQsIGFuZA0K
PiBzb21ldGltZXMgeW91IGRvbid0IGV2ZW4gbm90aWNlIGltbWVkaWF0ZWx5IGJlY2F1c2Ugc2Fp
ZCByZXNvdXJjZXMgYXJlDQo+IHJlZmNvdW50ZWQsIGFuZCB0aGUgbG9jayBpcyBvbmx5IGFjcXVp
cmVkIHdoZW4geW91IGhhcHBlbiB0byBiZSB0aGUNCj4gbGFzdCBvd25lci4gWWVzLCB0aG9zZSBj
YW4gYmUgY2F1Z2h0IGF0IHJ1bnRpbWUgaWYgdGhlIEMgc2lkZSBpcw0KPiBwcm9wZXJseSBhbm5v
dGF0ZWQgd2l0aCBtaWdodF9zbGVlcCgpLCBidXQgdGhhdCdzIG5vdCBhbHdheXMgdGhlIGNhc2Uu
DQo+IA0KPiBJZiB3ZSBkZWZlciB0aGUgZHJvcCBvZiB0aGUgZGF0YSBvbmx5IHdoZW4gdGhlIEZl
bmNlQ2IgaXMNCj4gZHJvcHBlZC9yZWN5Y2xlZCwgd2UncmUgYXQgbGVhc3Qgbm90IGNvbnN0cmFp
bmVkIGJ5IHRoaXMgInJ1bnMgaW4NCj4gYXRvbWljIGNvbnRleHQiIHRoaW5nLg0KPiANCg0KVGhp
cyBkZXNpZ24gZG9lcyBub3Qgc29sdmUgaXQsIGJlY2F1c2Ugb25lIGNhbiBxdWl0ZSB0cml2aWFs
bHkgZ2V0IGFyb3VuZCB0aGlzDQpyZXN0cmljdGlvbiB1c2luZyBPcHRpb248VD4gYXMgSSBzYWlk
LiBJZiB5b3VyIHBvaW50IGlzIOKAnGRvbuKAmXQgcnVuIGFueSBkcm9wKCkgaGVyZeKAnSwNCnRo
ZW4gJm11dCBzZWxmIGRvZXNu4oCZdCBkbyBpdC4NCg0KPj4gDQo+PiBDb25zaWRlciBhIGZlbmNl
IGRlc2lnbiB3aGVyZSBzaWduYWwoKSBjb25zdW1lcyBzZWxmLiBOb3cgY29uc2lkZXIgdGhpczoN
Cj4+IA0KPj4gYGBgDQo+PiBpbXBsIEZlbmNlQ2IgZm9yIE15Q2FsbGJhY2sgew0KPj4gZm4gY2Fs
bGVkKCZtdXQgc2VsZikgew0KPj4gICAvLyBDYW4ndCBtb3ZlIHRoZSBmZW5jZSBvdXQsIHNvIHdl
IGhhdmUgdG8gcHV0IGFuIE9wdGlvbjxUPiBqdXN0IHRvIGJlIGFibGUNCj4+ICAgLy8gdG8gbW92
ZS4NCj4+ICAgaWYgbGV0IFNvbWUoZikgPSBzZWxmLnNvbWVfZmVuY2UudGFrZSgpIHsNCj4+ICAg
ICBmLnNpZ25hbCgpOw0KPj4gICB9DQo+PiB9DQo+PiBgYGANCj4+IA0KPj4gVGhpcyB1c2VkIHRv
IGJlIHRoZSBjYXNlIHdoZW4gb3VyIHZlcnNpb24gb2YgdGhlIGpvYiBxdWV1ZSB1c2VkIHRoZSAi
cHJveHkNCj4+IGZlbmNlIiBkZXNpZ246DQo+PiANCj4+IA0KPj4gYGBgDQo+PiAvLyBDYWxsYmFj
ayBvbiB0aGUgaHcgZmVuY2UNCj4+IGltcGwgRmVuY2VDYiBmb3IgTXlDYWxsYmFjayB7DQo+PiBm
biBjYWxsZWQoJm11dCBzZWxmKSB7DQo+PiAgIGlmIGxldCBTb21lKGYpID0gc2VsZi5zdWJtaXRf
ZmVuY2UudGFrZSgpIHsNCj4+ICAgICBmLnNpZ25hbCgpOw0KPj4gICB9DQo+IA0KPiBJJ20gcHJl
dHR5IHN1cmUgbG9ja2RlcCB3b24ndCBsaWtlIGl0IGFueXdheSwgYmVjYXVzZSB0aGlzIGlzIG5l
c3RlZA0KPiBsb2NraW5nIG9mIHRoZSBzYW1lIGxvY2sgY2xhc3MuIEZvciBzdWNoIHByb3hpZXMs
IHdlJ2xsIG5lZWQgdG8gdGVhY2gNCj4gbG9ja2RlcCBhYm91dCB0aGUgbmVzdGluZyBsaWtlIGhh
cyBiZWVuIHJlY2VudGx5IGRvbmUgb24NCj4gZG1hX2ZlbmNlX2FycmF5ICYgY28uIEJ1dCBJJ20g
ZGlncmVzc2luZy4NCg0KWWVhaCwgYnV0IHRoaXMgaXMgbW9yZSBhYm91dCByZXNvdXJjZSB0cmFu
c2ZlciBpbiBnZW5lcmFsLCBub3QNCnRoaXMgcGF0dGVybiBzcGVjaWZpY2FsbHkuDQoNCkkgYWdy
ZWUgdGhhdCB0aGlzIGhhcyBpc3N1ZXMsIGFuZCB5ZXMsIGxvY2tkZXAgY29tcGxhaW5lZCBiYWNr
DQp0aGVuIDopDQoNCj4gDQo+PiB9DQo+PiBgYGANCj4+IA0KPj4gQWx0aG91Z2ggdGhpcyBpcyBu
b3QgdGhlIGNhc2UgYW55bW9yZSwgc2luY2Ugd2UgcGhhc2VkIG91dCB0aGlzIGRlc2lnbiBnaXZl
bg0KPj4gQ2hyaXN0aWFuJ3MgcmVjZW50IHdvcmsuIFN0aWxsLCB3ZSBzaG91bGQgaWRlYWxseSBu
b3QgcmVxdWlyZSBPcHRpb248VD4gaGVyZSBpbg0KPj4gZ2VuZXJhbCBqdXN0IHRvIG1ha2UgcmVz
b3VyY2UgdHJhbnNmZXIgcG9zc2libGUuDQo+IA0KPiBJIHNlZS4gT1RPSCwgZG9uJ3Qgd2UgbmVl
ZCB0byBtYWtlIHRoaXMgaW5uZXIgZGF0YSBtb3ZhYmxlIGlmIHdlIHdhbnQNCj4gdG8gY2FuY2Vs
IHRoZSBGZW5jZUNiIGJlZm9yZSB0aGUgZmVuY2UgaXMgc2lnbmFsZWQgYW55d2F5PyBBbmQgdGhh
dCdzDQo+IG1vc3QgY2VydGFpbmx5IGEgY2FzZSB3ZSBoYXZlIGluIHRoZSB0ZWFyZG93biBwYXRo
Lg0KDQpDYW4geW91IGV4cGFuZCBhIGJpdCBvbiB3aGF0IHlvdSBtZWFuIGhlcmU/Cl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
