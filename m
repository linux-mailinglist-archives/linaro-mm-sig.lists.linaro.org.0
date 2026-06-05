Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gi3JEMpJKWoJTwMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:02 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4A5668C37
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:26:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="ewTk/OS6";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D653140512
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:26:00 +0000 (UTC)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	by lists.linaro.org (Postfix) with ESMTPS id CB02C3F756
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 16:00:59 +0000 (UTC)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-59ebf30a91dso773620e0c.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 09:00:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780675259; x=1781280059; darn=lists.linaro.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VyQyGkRUe5VvjYqInQnqi8SySL6a23ZU66H1yfN16R0=;
        b=ewTk/OS6olhJkHeH0BsPalm2VrnjF3raVIvGX/Edu9AhbgLf3MsNMFmMczdNuMiYVY
         CIvSzTeyYNUeUeZbxjyTc7tfPXjymuUCMJnjE65kPpoJ783WMqMxCUmyQcOX7sQocQcQ
         GMSnHnmflTnPG7ovaRxOMogDDg6jbMUrAMlnvEVtq6Ey9hxxyQAlCB5UsQljEt2fXPIQ
         DFq6stnAJ9FOBbiNlwvHfqXWNXc8x53PwvdqdG5NBoX5LPmLyixrQcO+ryZnF7GmX7a4
         5+KUlREJMGrtKlgwzUbvIV7wf5RJDm2en/VtlnRKK/OkWOUqG4PKHR6dIO5Q5c73nVyv
         Qm9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780675259; x=1781280059;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VyQyGkRUe5VvjYqInQnqi8SySL6a23ZU66H1yfN16R0=;
        b=TZJGMnI6eUPpaeIBwlZzqYDEd8nUAia7bH0VukNMr8Amrj0SY26MPqDJ0twEXaY/zX
         UGj0L4nVtgEj5PRnkYRlnjuN62/5boBRIKisyfet/CZFOypqiqLAVizhE6mjYtgkuyCB
         VLdvJ3nxCM0qAophJQebn3hphGpxCSyXIO/t78wPGX4LFcQ3E31AeKHFb7Fxf8qTUCRS
         kgleiFWmU+UHUHZzjlL1dyscc7lc1L5Wlq56Xd3RStpPmWi0sSmpXdhhI/zJ+PHlFedr
         aMwKM0dM43gcihpWP/4uYchaIDuIg2/MRg6Q2NNohkTqQi+xr+2i4RyAEj74eGyK5lvM
         ht8w==
X-Forwarded-Encrypted: i=1; AFNElJ+bZl8tFjH4HCX8UU/moONOrdyR25KvQM2JykqtscTb3DiFT2EbNZAGLvWFwJlOeoHfMsk0/PJPelowBuqh@lists.linaro.org
X-Gm-Message-State: AOJu0YzRY5s8C+DS1KDcBTuuCwb1RsigFP74sX9zTz2ucgQpgTDUZ1ql
	I2aWHeeqMTDGSeFtuVdaJxrFzfTcOi/ajfSS5Tam4AoOR/2oZRh7voc4
X-Gm-Gg: Acq92OGrJTw180cE3xFs79MJ3lLB5bwfkwO6AeknPAgJN5/eY/qvkZ0xP9F6pej6qQa
	hUKjw73s7iA4BK139Rcy8acwkcxV9Ze5p5U5Ilw7C2ZKnoyLvA56hfaQ6K0wBs0IX8PAhbmwQBA
	Sp+lyka+DyK9VC8EcaHnVmtHON3c5+BJtYlN5iBOGc4ePHIbx4Fo1n4/sT7KW/O/4knwianfAzK
	X+OtmnBYT8mmgA7XFM8FWle9nRPqrHv0W+O51762O3L3KpqEaXwCdzq8WTXBTLH9KHXN744rK7L
	JxbsqBwUPpaAk48+FPAAZubv2VKduRmMesOwIrwe5xs4vcfHSLFutlQmkag6bSSJD6WGi+GOBk/
	c934Qec0/bjEa8JVBBEj4uldL6cUEjlYyq6s2jdLwZXfXh2drJrbwUghSVEDEt3CGj7quCBq6mc
	OEyrjxvhJX0zyMAXONE8zQH5er2K8mZU6tJocfugaWVvtpHgbiXkUMbkAmTcqN
X-Received: by 2002:a05:6122:54a:b0:5a1:edab:f216 with SMTP id 71dfb90a1353d-5ac5197b908mr2700846e0c.11.1780675257631;
        Fri, 05 Jun 2026 09:00:57 -0700 (PDT)
Received: from smtpclient.apple ([2804:7f1:c241:abe4:8c1d:3d1b:d7cb:e7e9])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5a6d6fb9ca0sm9109916e0c.6.2026.06.05.09.00.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2026 09:00:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
From: Daniel Almeida <dwlsalmeida@gmail.com>
In-Reply-To: <8ff2de94a50ed077a4cfe520a081f2b8b438a375.camel@mailbox.org>
Date: Fri, 5 Jun 2026 13:00:35 -0300
Message-Id: <FEFE0522-FD7A-40DE-8B2A-09FE2F33F327@gmail.com>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-5-phasta@kernel.org>
 <4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
 <20260603191405.4c75badb@fedora-2.home>
 <09096455-BA79-4E61-AD88-44DA57C5BEA8@gmail.com>
 <20260604101552.4232733b@fedora-2.home>
 <8ff2de94a50ed077a4cfe520a081f2b8b438a375.camel@mailbox.org>
To: phasta@kernel.org
X-Mailer: Apple Mail (2.3826.700.81)
X-Spamd-Bar: ---
X-MailFrom: dwlsalmeida@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: IYWTIVSJLYDFXOB3TZRMC5U6DEOVSGIW
X-Message-ID-Hash: IYWTIVSJLYDFXOB3TZRMC5U6DEOVSGIW
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:33 +0000
CC: Boris Brezillon <boris.brezillon@collabora.com>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoak
 es <ljs@kernel.org>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/IYWTIVSJLYDFXOB3TZRMC5U6DEOVSGIW/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,collabora.com:email,mailbox.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC4A5668C37

DQoNCj4gT24gNSBKdW4gMjAyNiwgYXQgMDQ6NTYsIFBoaWxpcHAgU3Rhbm5lciA8cGhhc3RhQG1h
aWxib3gub3JnPiB3cm90ZToNCj4gDQo+IE9uIFRodSwgMjAyNi0wNi0wNCBhdCAxMDoxNSArMDIw
MCwgQm9yaXMgQnJlemlsbG9uIHdyb3RlOg0KPj4gT24gV2VkLCAzIEp1biAyMDI2IDIxOjQzOjA1
IC0wMzAwDQo+PiBEYW5pZWwgQWxtZWlkYSA8ZHdsc2FsbWVpZGFAZ21haWwuY29tPiB3cm90ZToN
Cj4+IA0KPj4+PiBPbiAzIEp1biAyMDI2LCBhdCAxNDoxNCwgQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+Pj4+IA0KPj4+PiBPbiBXZWQsIDMg
SnVuIDIwMjYgMTM6NDE6MDIgLTAzMDANCj4+Pj4gRGFuaWVsIEFsbWVpZGEgPGR3bHNhbG1laWRh
QGdtYWlsLmNvbT4gd3JvdGU6DQo+Pj4+ICAgDQo+Pj4+Pj4gKyAgICAvLy8gQ2FsbGVkIHdoZW4g
dGhlIGZlbmNlIGlzIHNpZ25hbGVkLg0KPj4+Pj4+ICsgICAgLy8vDQo+Pj4+Pj4gKyAgICAvLy8g
VGhpcyBpcyBjYWxsZWQgZnJvbSB0aGUgZmVuY2Ugc2lnbmFsaW5nIHBhdGgsIHdoaWNoIG1heSBi
ZSBpbiBpbnRlcnJ1cHQNCj4+Pj4+PiArICAgIC8vLyBjb250ZXh0IG9yIHdpdGggbG9ja3MgaGVs
ZCwgd2hpY2ggaXMgd2h5IGBzZWxmYCBpcyBvbmx5IGJvcnJvd2VkLCBzbyB0aGF0DQo+Pj4+Pj4g
KyAgICAvLy8gaXQgY2Fubm90IGRyb3AuIEltcGxlbWVudGF0aW9ucyBtdXN0IG5vdCBzbGVlcCBv
ciBwZXJmb3JtDQo+Pj4+Pj4gKyAgICAvLy8gbG9uZy1ydW5uaW5nIG9wZXJhdGlvbnMuDQo+Pj4+
Pj4gKyAgICAvLy8NCj4+Pj4+PiArICAgIC8vLyBBbiBpbXBsZW1lbnRhdGlvbiBsaWtlbHkgd2Fu
dHMgdG8gaW5mb3JtIGl0c2VsZiAoZS5nLiwgdGhyb3VnaCBhIHdvcmsgaXRlbSkNCj4+Pj4+PiAr
ICAgIC8vLyB3aXRoaW4gdGhpcyBjYWxsYmFjayB0aGF0IHRoZSBhc3NvY2lhdGVkIFtgRmVuY2VD
YlJlZ2lzdHJhdGlvbmBdIGNhbiBub3cgYmUNCj4+Pj4+PiArICAgIC8vLyBkcm9wcGVkLg0KPj4+
Pj4+ICsgICAgZm4gY2FsbGVkKCZtdXQgc2VsZik7ICAgIA0KPj4+Pj4gDQo+Pj4+PiBUaGlzIGlz
IGEgY2VudHJhbCBwb2ludC4gV2UgaWRlYWxseSB3b3VsZCB3YW50IHRoaXMgdG8gY29uc3VtZSBz
ZWxmLCBiZWNhdXNlIHdlDQo+Pj4+PiBtYXkgd2FudCB0byBtb3ZlIHRoaW5ncyBvdXQgb2YgdGhl
IGNhbGxiYWNrLiAgICANCj4+Pj4gDQo+Pj4+IFRoaXMgb25lIGNvbWVzIGZyb20gbWUuIFRoZSBy
YXRpb25hbGUgYmVpbmcgdGhhdCA6OmNhbGxlZCgpIGlzIGNhbGxlZA0KPj4+PiBmcm9tIGFuIGF0
b21pYyBjb250ZXh0LCBhbmQgdGhlIHJlc291cmNlcyBhdHRhY2hlZCB0byB0aGUgY2FsbGJhY2sg
ZGF0YQ0KPj4+PiBtaWdodCByZXF1aXJlIGFjcXVpcmluZyBvdGhlciBzbGVlcGluZyBsb2NrcyB0
byBiZSByZWxlYXNlZCwgYW5kDQo+Pj4+IHNvbWV0aW1lcyB5b3UgZG9uJ3QgZXZlbiBub3RpY2Ug
aW1tZWRpYXRlbHkgYmVjYXVzZSBzYWlkIHJlc291cmNlcyBhcmUNCj4+Pj4gcmVmY291bnRlZCwg
YW5kIHRoZSBsb2NrIGlzIG9ubHkgYWNxdWlyZWQgd2hlbiB5b3UgaGFwcGVuIHRvIGJlIHRoZQ0K
Pj4+PiBsYXN0IG93bmVyLiBZZXMsIHRob3NlIGNhbiBiZSBjYXVnaHQgYXQgcnVudGltZSBpZiB0
aGUgQyBzaWRlIGlzDQo+Pj4+IHByb3Blcmx5IGFubm90YXRlZCB3aXRoIG1pZ2h0X3NsZWVwKCks
IGJ1dCB0aGF0J3Mgbm90IGFsd2F5cyB0aGUgY2FzZS4NCj4+Pj4gDQo+Pj4+IElmIHdlIGRlZmVy
IHRoZSBkcm9wIG9mIHRoZSBkYXRhIG9ubHkgd2hlbiB0aGUgRmVuY2VDYiBpcw0KPj4+PiBkcm9w
cGVkL3JlY3ljbGVkLCB3ZSdyZSBhdCBsZWFzdCBub3QgY29uc3RyYWluZWQgYnkgdGhpcyAicnVu
cyBpbg0KPj4+PiBhdG9taWMgY29udGV4dCIgdGhpbmcuDQo+Pj4+ICAgDQo+Pj4gDQo+Pj4gVGhp
cyBkZXNpZ24gZG9lcyBub3Qgc29sdmUgaXQsIGJlY2F1c2Ugb25lIGNhbiBxdWl0ZSB0cml2aWFs
bHkgZ2V0IGFyb3VuZCB0aGlzDQo+Pj4gcmVzdHJpY3Rpb24gdXNpbmcgT3B0aW9uPFQ+IGFzIEkg
c2FpZC4gSWYgeW91ciBwb2ludCBpcyDigJxkb27igJl0IHJ1biBhbnkgZHJvcCgpIGhlcmXigJ0s
DQo+Pj4gdGhlbiAmbXV0IHNlbGYgZG9lc27igJl0IGRvIGl0Lg0KPj4gDQo+PiBNeSBiYWQsIEkg
dGhvdWdodCB5b3Ugd2VyZSB0YWxraW5nIGFib3V0IHNvbWUgT3B0aW9uPFQ+IGluDQo+PiBGZW5j
ZUNiUmVnaXN0cmF0aW9uPFQ+ICh0aGVyZSB3YXMgb25lIGF0IHNvbWUgcG9pbnQsIGJ1dCBpdCdz
IGdvbmUgbm93KSwNCj4+IGJ1dCB5b3UncmUgdGFsa2luZyBhYm91dCBoYXZpbmcgYW4gT3B0aW9u
PFg+IGluc2lkZSB0aGUgVC4gWWVzLCB0aGVyZSdzDQo+PiBpbmRlZWQgbm90aGluZyBwcmV2ZW50
aW5nIGEgZHJvcCBvbiBYIGluIHRoYXQgcGF0aCwgYW5kIGl0J3MganVzdCBhcw0KPj4gYmFkIGFz
IHBhc3NpbmcgdGhlIGZlbmNlIGJhY2sgYXMgdmFsdWUgdG8gdGhlIGNhbGxiYWNrIGluIHRoYXQg
Y2FzZS4NCj4gDQo+IFRoZW4gbWF5YmUgd2Ugc2hvdWxkIGp1c3QgcGFzcyBpdCBieSB2YWx1ZSBh
bmQgcmVxdWlyZSBpbXBsZW1lbnRhdGlvbg0KPiBvZiBhbiB1bnNhZmUgdHJhaXQgb24gYFRgLCB3
aG9zZSBzYWZldHktcmVxdWlyZW1lbnRzIGRlbWFuZCB0aGF0IHRoaXMNCj4gbXVzdCBiZSBzYXZl
IHRvIGRyb3AgZnJvbSBhdG9taWMgY29udGV4dC4NCj4gDQo+PiANCj4+PiANCj4+Pj4+IA0KPj4+
Pj4gQ29uc2lkZXIgYSBmZW5jZSBkZXNpZ24gd2hlcmUgc2lnbmFsKCkgY29uc3VtZXMgc2VsZi4g
Tm93IGNvbnNpZGVyIHRoaXM6DQo+Pj4+PiANCj4+Pj4+IGBgYA0KPj4+Pj4gaW1wbCBGZW5jZUNi
IGZvciBNeUNhbGxiYWNrIHsNCj4+Pj4+IGZuIGNhbGxlZCgmbXV0IHNlbGYpIHsNCj4+Pj4+ICAg
Ly8gQ2FuJ3QgbW92ZSB0aGUgZmVuY2Ugb3V0LCBzbyB3ZSBoYXZlIHRvIHB1dCBhbiBPcHRpb248
VD4ganVzdCB0byBiZSBhYmxlDQo+Pj4+PiAgIC8vIHRvIG1vdmUuDQo+Pj4+PiAgIGlmIGxldCBT
b21lKGYpID0gc2VsZi5zb21lX2ZlbmNlLnRha2UoKSB7DQo+Pj4+PiAgICAgZi5zaWduYWwoKTsN
Cj4+Pj4+ICAgfQ0KPj4+Pj4gfQ0KPj4+Pj4gYGBgDQo+Pj4+PiANCj4+Pj4+IFRoaXMgdXNlZCB0
byBiZSB0aGUgY2FzZSB3aGVuIG91ciB2ZXJzaW9uIG9mIHRoZSBqb2IgcXVldWUgdXNlZCB0aGUg
InByb3h5DQo+Pj4+PiBmZW5jZSIgZGVzaWduOg0KPj4+Pj4gDQo+Pj4+PiANCj4+Pj4+IGBgYA0K
Pj4+Pj4gLy8gQ2FsbGJhY2sgb24gdGhlIGh3IGZlbmNlDQo+Pj4+PiBpbXBsIEZlbmNlQ2IgZm9y
IE15Q2FsbGJhY2sgew0KPj4+Pj4gZm4gY2FsbGVkKCZtdXQgc2VsZikgew0KPj4+Pj4gICBpZiBs
ZXQgU29tZShmKSA9IHNlbGYuc3VibWl0X2ZlbmNlLnRha2UoKSB7DQo+Pj4+PiAgICAgZi5zaWdu
YWwoKTsNCj4+Pj4+ICAgfSAgDQo+Pj4+IA0KPj4+PiBJJ20gcHJldHR5IHN1cmUgbG9ja2RlcCB3
b24ndCBsaWtlIGl0IGFueXdheSwgYmVjYXVzZSB0aGlzIGlzIG5lc3RlZA0KPj4+PiBsb2NraW5n
IG9mIHRoZSBzYW1lIGxvY2sgY2xhc3MuIEZvciBzdWNoIHByb3hpZXMsIHdlJ2xsIG5lZWQgdG8g
dGVhY2gNCj4+Pj4gbG9ja2RlcCBhYm91dCB0aGUgbmVzdGluZyBsaWtlIGhhcyBiZWVuIHJlY2Vu
dGx5IGRvbmUgb24NCj4+Pj4gZG1hX2ZlbmNlX2FycmF5ICYgY28uIEJ1dCBJJ20gZGlncmVzc2lu
Zy4gIA0KPj4+IA0KPj4+IFllYWgsIGJ1dCB0aGlzIGlzIG1vcmUgYWJvdXQgcmVzb3VyY2UgdHJh
bnNmZXIgaW4gZ2VuZXJhbCwgbm90DQo+Pj4gdGhpcyBwYXR0ZXJuIHNwZWNpZmljYWxseS4NCj4+
PiANCj4+PiBJIGFncmVlIHRoYXQgdGhpcyBoYXMgaXNzdWVzLCBhbmQgeWVzLCBsb2NrZGVwIGNv
bXBsYWluZWQgYmFjaw0KPj4+IHRoZW4gOikNCj4+IA0KPj4gVGhlIHRoaW5nIGlzLCB0aGVyZSdz
IHNvIG1hbnkgYXNwZWN0cyB0aGF0IGNvdWxkIGdvIHdyb25nIGJlY2F1c2Ugb2YgdGhlDQo+PiBj
b250ZXh0IHRoaXMgY2FsbGJhY2sgaXMgY2FsbGVkIGluLiBOZXN0ZWQgbG9ja2luZyBpcyBvbmUg
b2YgdGhlbSwNCj4+IHRoZSBmYWN0IHdlIGNhbid0IHNsZWVwIGlzIGFub3RoZXIuIEFuZCB3aXRo
IHJ1c3QgaXQncyBldmVuIHdvcnNlLA0KPj4gYmVjYXVzZSBvZiB0aGUgaW1wbGljaXQgZHJvcHMg
dGhhdCB3aWxsIGhhcHBlbiB3aGVuIHlvdSB0YWtlIG93bmVyc2hpcA0KPj4gb2YgcmVzb3VyY2Vz
ICh0YWtpbmcgc2xlZXBpbmcgbG9ja3MgdG8gcmVtb3ZlIHJlc291cmNlcyBmcm9tIGEgZGF0YXNl
dA0KPj4gZm9yIGluc3RhbmNlKS4NCj4gDQo+IERvZXNuJ3QgdGhhdCBoYXZlIHRvIGJlIGEgcHJv
YmxlbSBmb3IgbXVjaCBvZiBSdXN0IGluZnJhc3RydWN0dXJlPyBIb3cNCj4gZG8gb3RoZXIgcGFy
dGllcyBzb2x2ZSB0aGF0Pw0KPiANCj4+IA0KPj4gU28sIGJ5IHBhc3Npbmcgc2VsZiBieSB2YWx1
ZSB0byB0aGUgOjpjYWxsYmFjaygpLCB5b3UncmUgYmFzaWNhbGx5DQo+PiB0ZWxsaW5nIHVzZXJz
ICJoZXksIEJUVywgZG9uJ3QgZm9yZ2V0IHRvIGRlZmVyIHRoZSBkcm9wIHRvIHNvbWUNCj4+IHdv
cmtxdWV1ZSBpZiB5b3UgdGhpbmsgaXQncyBub3QgYXRvbWljLXNhZmUiLiBBbmQgaG93IGNhbiB1
c2VycyBrbm93DQo+PiB0aGF0IHRoZSB0aGluZyB0aGV5J3JlIGFib3V0IHRvIGRyb3AgY2FuIGJl
IGRyb3BwZWQgaW4gYXRvbWljIGNvbnRleHQ/DQo+PiBUaGV5IGJhc2ljYWxseSBoYXZlIHRvIGF1
ZGl0IHRoZSA6OmRyb3AoKSBvZiBhbGwgdGhlIHJlc291cmNlcyB0aGV5DQo+PiBlbWJlZCBpbiB0
aGVpciB0eXBlIGltcGxlbWVudGluZyBGZW5jZUNiLiBOb3Qgb25seSB0aGF0LCBidXQgdGhleSBh
bHNvDQo+PiBoYXZlIHRvIGRlc2lnbiB0aGUgdGhpbmcgc28gdGhlIGRlZmVycmFsIG9mIHRoaXMg
Ojpkcm9wKCkgZG9lc24ndA0KPj4gYWxsb2NhdGUsIGJlY2F1c2UsIG9idmlvdXNseSwgYWxsb2Nh
dGluZyBpbiBhdG9taWMgY29udGV4dCBpcw0KPj4gdHJpY2t5L2ZhbGxpYmxlLiBBRkFJSywgbm9u
ZSBvZiB0aGlzIGNhbiBiZSBzcG90IGF0IGNvbXBpbGUtdGltZSAoSQ0KPj4gcmVtZW1iZXIgR2Fy
eS9EYW5pbG8gbWVudGlvbmluZyB0aGF0IHdlIGNvdWxkIHRlYWNoIHRoZSBrbGludCBhYm91dA0K
Pj4gc29tZSBvZiB0aGVzZSBydWxlcykuIFRoaXMgd291bGQgbGVhdmUgdXMgd2l0aCBydW50aW1l
IGNoZWNrcyBsaWtlDQo+PiBtaWdodF9zbGVlcCgpLCBidXQgbW9zdCBvZiB0aGUgQyBwdXR0ZXJz
ICh4eHhfcHV0KG9iamVjdCkpIGRvbid0IGhhdmUNCj4+IG1pZ2h0X3NsZWVwKCkgaW4gdGhlIHBh
dGggd2hlcmUgdGhlIGRlY3JlZiBkb2Vzbid0IGxlYWQgdG8gYSByZWZjbnQ9MA0KPj4gc2l0dWF0
aW9uLg0KPj4gDQo+PiBUTERSOyBDYWxsIHRoaXMgUFRTRCBpZiB5b3Ugd2FudCwgYnV0IHRoaXMg
aXMgdGhlIHNvcnQgb2YgYnVncyBJDQo+PiBzdHJ1Z2dsZWQgd2l0aCBvbiB0aGUgQyBzaWRlLCBh
bmQgSSBjYW4gcHJlZGljdCB0aGF0IHRoZSBleGFjdCBzYW1lDQo+PiB3aWxsIGhhcHBlbiBpbiBy
dXN0IGRyaXZlcnMgaWYgd2UgZXhwb3NlIHRoZSBGZW5jZUNiIGFzIGl0IGlzIGRlc2lnbmVkDQo+
PiBoZXJlIGFuZCB3ZSBkb24ndCBoYXZlIGEgd2F5IHRvIGNoZWNrIHRoZSBzb3VuZG5lc3Mgb2Yg
dGhlIEZlbmNlQ2INCj4+IGltcGxlbWVudGF0aW9ucyBhdCBjb21waWxlIHRpbWUuDQo+IA0KPiBN
eSBndWVzcyB3b3VsZCBiZSB0aGF0IHRoZSBleGlzdGVuY2Ugb2YgdW5zYWZlLXRyYWl0cyBpcyB0
aGUgYWRtaXNzaW9uDQo+IG9mIFJ1c3QgdGhhdCB0aGlzIGp1c3QgY2Fubm90IGJlIGd1YXJhbnRl
ZWQgYnkgZGVzaWduLg0KPiANCj4gSWYgYSBkcml2ZXIgY2Fubm90IGtub3cgd2hldGhlciB0aGlz
IG9yIHRoYXQgaXMgc2FmZSB0byBkcm9wLCB0aGVuIGl0DQo+IHdvdWxkIGhhdmUgdG8gZGVmZXIg
aXQncyBkcm9wcGluZy4gT3Igd291bGQgdGhlcmUgYmUgY2FzZXMgd2hlcmUgdGhpcw0KPiBhbHNv
IGRvZXNuJ3Qgd29yaz8NCg0KDQpBbHRob3VnaCBJIHRvdGFsbHkgdW5kZXJzdGFuZCB3aGVyZSBC
b3JpcyBpcyBjb21pbmcgZnJvbSBoZXJlLCBhbmQgSSBhZ3JlZSB3aXRoDQpoaW0sIHRoZSByZWFs
aXR5IGlzIHRoYXQgdGhlIGN1cnJlbnQgJm11dCBzZWxmIGRlc2lnbiBkb2VzbuKAmXQgc29sdmUg
dGhpcy4gQW4NCnVuc2FmZSB0cmFpdCBjb3VsZCB3b3JrIGFzIGEgcGlua3ktcHJvbWlzZSBieSBk
cml2ZXJzLCB3aGljaCBpcyBoYWxmLXdheSB0aGVyZS4NCg0KV2hhdCB3ZSBpZGVhbGx5IHdvdWxk
IGxpa2UgdG8gaGF2ZSBpcyBhIGJvdW5kIHRob3VnaCwgc29tZXRoaW5nIGxpa2U6DQoNClQ6ICFE
cm9wDQoNCklmIEkgcmVjYWxsIGNvcnJlY3RseSB0aGVyZSB3ZXJlIHBlb3BsZSB3b3JraW5nIHRv
IGdldCBzdXBwb3J0IGZvciB0aGF0IG9uDQpSdXN0PyBJIHRoaW5rIHRoZXJlIGFyZSB0d28gdGhp
bmdzIGhlcmU6ICFUcmFpdCwgd2hpY2ggaXMgbm90IHN1cHBvcnRlZCBleGNlcHQNCmZvciAhU2l6
ZWQgSUlSQywgYW5kIGhhdmluZyBhbiBhdXRvIHRyYWl0IHRoYXQgcmVwcmVzZW50cyB0eXBlcyB0
aGF0IGltcGxlbWVudA0KRHJvcCwgc2ltaWxhciB0byBTZW5kIGFuZCBTeW5jLg0KDQoNCj4gDQo+
PiANCj4+IFRoZSBvdGhlciBvcHRpb24gKHRoZSBvbmUgSSd2ZSBiZWVuIGFkdm9jYXRpbmcgZm9y
IGZyb20gdGhlIHN0YXJ0KSwgaXMNCj4+IHRvIG5vdCBsZXQgZHJpdmVycyBpbXBsZW1lbnQgRmVu
Y2VDYiAobWFrZSBpdCBwcml2YXRlKSwgYnV0IGluc3RlYWQNCj4+IGhhdmUgYSBidW5jaCBvZiBp
bXBsZW1lbnRhdGlvbnMgdGhhdCB3ZSBrbm93IGFyZSBzYWZlLiBIZXJlJ3MgYSBsaXN0IG9mDQo+
PiBpbXBsZW1lbnRhdGlvbnMgdGhhdCBJIHRoaW5rIHdvdWxkIHVuYmxvY2sgbW9zdCBvZiB0aGUg
ZHJpdmVycyB1c2UNCj4+IGNhc2VzOg0KPj4gDQo+PiAtIHdha2V1cCBhIHRocmVhZA0KPj4gLSBj
b21wbGV0ZSBhIGNvbXBsZXRpb24gb2JqZWN0DQo+PiAtIHNjaGVkdWxlIGEgV29ya0l0ZW0NCj4+
IC0gc2NoZWR1bGUgYSBrdGhyZWFkX3dvcmtlciAob25jZSB3ZSBnZXQgYSBwcm9wZXIgcnVzdCBh
YnN0cmFjdGlvbiBmb3INCj4+ICAgdGhhdCkNCj4+IA0KPj4gSXQgZG9lc24ndCBtZWFuIHdlIGNh
bid0IGhhdmUgb3B0aW1pemVkIEZlbmNlQ2IgaW1wbGVtZW50YXRpb25zIHRoYXQgZG8NCj4+IGEg
bG90IG1vcmUgaW4gdGhlIGNhbGxiYWNrKCkgcGF0aCBpbnN0ZWFkIG9mIGRlZmVycmluZyB0byBh
DQo+PiB3b3JrcXVldWUvdGhyZWFkLCBidXQgYXQgbGVhc3QgdGhvc2Ugd291bGQgaGF2ZSB0byBi
ZSBpbXBsZW1lbnRlZCBpbg0KPj4gZG1hX2ZlbmNlLnJzLCBhbmQgdGhlIGRtYV9mZW5jZS5ycyBt
YWludGFpbmVycyBjYW4gdGhlbiBjYXJlZnVsbHkgYXVkaXQNCj4+IHRoZSBjb2RlIGFzIHBhcnQg
b2YgdGhlIHJldmlldyBwcm9jZXNzLCB3aGljaCB3ZSBrbm93IGlzIG5vdCByZWFsbHkgdGhlDQo+
PiBjYXNlIHdoZW4gY2hhbmdlcyB0b3VjaCBkcml2ZXJzIGNvZGUgb25seS4NCj4gDQo+IFByYWdt
YXRpY2FsbHkgc3BlYWtpbmcsIGlmIHRoZSBjb21tb24gY2FzZXMgYXJlIHRyaXZpYWwsIHRoZW4g
dGhlDQo+IGRyaXZlcnMgd2lsbCBnZXQgdGhlbSByaWdodCwgYmVjYXVzZSB0aG9zZSBjcml0aWNh
bCBwcmltaXRpdmVzIGFyZQ0KPiBhbHJlYWR5IGF0b21pYy1zYWZlLg0KDQpObywgeW91IGNhbiBz
dGlsbCBmdW1ibGUgdHJpdmlhbCBjb2RlLCBzcGVjaWFsbHkgd2hlbiBpdCBoYXMgdG8gYmUgY2Fy
Z28tY3VsdGVkDQpmcm9tIHNvbWV3aGVyZSBlbHNlLiAgDQoNCkkgYW0gbm90IHNheWluZyB0aGF0
IGhhdmluZyB0aGluZ3MgaW4gZG1hX2ZlbmNlIC4gcnMgaXMgdGhlIHNvbHV0aW9uLCBhbHRob3Vn
aA0KaXQgaXMgZGVmaW5pdGVseSBvbmUgc29sdXRpb24uIEJ1dCB0aGUgYXJndW1lbnQgYWJvdmUg
aXNu4oCZdCB2ZXJ5IHN0cm9uZw0KSU1ITy4NCg0KPiANCj4gQW5kIGEgbm9uLWNvbW1vbiBjYXNl
IHdpbGwgaGF2ZSB0byBiZSBpbXBsZW1lbnRlZCBpbiB0aGUgZHJpdmVyDQo+IGFueXdheXMsIHNv
IHdlJ2QgaGF2ZSB0byBhbGxvdyBmb3IgdGhhdC4NCj4gDQo+IA0KPiANCj4gUC4NCg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
