Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id puVEJ8BJKWr9TgMAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 1569E668C27
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 13:25:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b="iqJYZNm/";
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 2AFA740A25
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 10 Jun 2026 11:25:51 +0000 (UTC)
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	by lists.linaro.org (Postfix) with ESMTPS id 3AB943F97D
	for <linaro-mm-sig@lists.linaro.org>; Fri,  5 Jun 2026 15:52:00 +0000 (UTC)
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-59ccf81e74bso688379e0c.3
        for <linaro-mm-sig@lists.linaro.org>; Fri, 05 Jun 2026 08:52:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780674720; x=1781279520; darn=lists.linaro.org;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8nGKygQkHUwQC80rJNI9ybnw4Obautm/GK0xUhE4dko=;
        b=iqJYZNm/j5RtMzu1HTzLr2iCXOWOJpw6O7xt3z4IG+otEhD6fEisCsxHRGnD0GgC/p
         IZxotAZ5OXBkmfCHJhwgbWgKWTS7yX1XY3PqbK6t2l88dLvFT92imJDfWJmZVFe1PTre
         0HWFEvIU0DLsavPf1M1gMi6TGpVGRhhIQN/qIKEkwckbt41FlZ3OSB+r9t7RGnt+dc1a
         qtOQxVowA80zDFKGxQtNsrupF6FgebbomV9+q5D/nsvozIk/sOUesRt1N8vO9SAw/hvD
         kkVCi0U/UpdZNZMuLvba1EXQHuUpelzGsevfyJNc8dAqtDD6oCmYltdaFP1l7OrKHlX1
         Hwyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780674720; x=1781279520;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8nGKygQkHUwQC80rJNI9ybnw4Obautm/GK0xUhE4dko=;
        b=jXKaXtD4+MP7NbPNK2K36UoON2k/C4266jtFEMojt1YzbHhl83/vByub/O78FkhNHN
         KMNQRVTkEsrzypbwDdmoS+93sjpjMUwnwBjxa17saz7jlTVu751WNtfFeDYPL3Wj4woA
         1jMtwYJe8VzjtPkPHh6PiaiKTbD/LaJ8Pvu4eY45VSKQEjMXwk6pEef35Al6dbEGolht
         R3z2Zlxod4DMIW/FCf3L/Lla017cKgbc1OG3K9MrFQ/DK8n1TUE6jpVaryG9sC8dyL43
         k+T7gjfUaW1KdKkdm5SrrICxZkOa/8QOf/jus3b/gBCTFS5wIccCKpseKaEM+Y/QADgV
         ynMQ==
X-Forwarded-Encrypted: i=1; AFNElJ9IlIrwLBWNpEhV8IQtiGTr6PqpJdYPLhWH16XWSaoCQ/OFkPA6QmcSeT4czWg2LGyZ9s/PFwag9bSo6f/1@lists.linaro.org
X-Gm-Message-State: AOJu0YzpaKYT1QtNQqd5TMeEp6pkj3EwaFq4aR55xovX6THSNavsCa97
	mM6XQA6AbSTFIPxd04pUXwFxpxuyhbCrybITlYPMJWyhJ11mKI4qXpkk
X-Gm-Gg: Acq92OHQBBnBDhKPG/kG8qS032LBHhv88MRGkjosHEx7Yqh+gsIy3qvQd87+SoDItff
	rjaDpiRZAMpyX2BBi4+Ohjfa0jiGRpc1jSLHklT3nA1p1G4FVZ3ULsMXbCdrynZ5QbVBqZUZ9L1
	7l9xUtQDdqzeJ6iltqxggPj5DPMuOUUJwKxAjcZF/kNJNc2mUbZccdeJJMWVyZDwwS/XvdI+JNL
	AwsvFNKxSRC9UdBw6L6EiL2xUt91RJDbpbPL8tOF5ocll6lKoG7cGhZ2UepwD9S3I1PFMc6KlJG
	gPOrYhC/I0JV9MVwg+ctewtCbZMtuSH6zOr6zIj527HPmi68m4JnM+75PdcDElYyyuxG6R6Ya41
	JFuIECOWXcwKoKNutQDXjLWxqTU6QS/gNNptMuo2wq3KkXE1yR5pkoyqTd/2/FZ3e44XnAVl0q3
	tQdJdZnVe0fdXKaK7mZZMRIqH7wpuMBkP2Lgh5GeoB5eQDLGRRgQeo6tVOA6J0PlRLrcNhSa0=
X-Received: by 2002:a05:6122:20a2:b0:59e:b127:fc6f with SMTP id 71dfb90a1353d-5ac53c944c8mr2226236e0c.2.1780674719617;
        Fri, 05 Jun 2026 08:51:59 -0700 (PDT)
Received: from smtpclient.apple ([2804:7f1:c241:abe4:8c1d:3d1b:d7cb:e7e9])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96414115a93sm7095512241.9.2026.06.05.08.51.48
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Jun 2026 08:51:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
From: Daniel Almeida <dwlsalmeida@gmail.com>
In-Reply-To: <20260604101552.4232733b@fedora-2.home>
Date: Fri, 5 Jun 2026 12:51:35 -0300
Message-Id: <82F71A28-076F-4100-A702-840018937D1B@gmail.com>
References: <20260530143541.229628-2-phasta@kernel.org>
 <20260530143541.229628-5-phasta@kernel.org>
 <4F8E8E04-5AB5-4E6B-9194-5FC467E2313F@collabora.com>
 <20260603191405.4c75badb@fedora-2.home>
 <09096455-BA79-4E61-AD88-44DA57C5BEA8@gmail.com>
 <20260604101552.4232733b@fedora-2.home>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Mailer: Apple Mail (2.3826.700.81)
X-Spamd-Bar: --
X-MailFrom: dwlsalmeida@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: LTOPUBCGWNR4OAJ6HENK3QBHS7EYYWLC
X-Message-ID-Hash: LTOPUBCGWNR4OAJ6HENK3QBHS7EYYWLC
X-Mailman-Approved-At: Wed, 10 Jun 2026 11:24:32 +0000
CC: Philipp Stanner <phasta@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?utf-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice Ryhl <aliceryhl@google.com>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?utf-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kern
 el.org>, Alexandre Courbot <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/LTOPUBCGWNR4OAJ6HENK3QBHS7EYYWLC/>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,linaro.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1569E668C27

DQo+PiANCj4+Pj4gDQo+Pj4+IENvbnNpZGVyIGEgZmVuY2UgZGVzaWduIHdoZXJlIHNpZ25hbCgp
IGNvbnN1bWVzIHNlbGYuIE5vdyBjb25zaWRlciB0aGlzOg0KPj4+PiANCj4+Pj4gYGBgDQo+Pj4+
IGltcGwgRmVuY2VDYiBmb3IgTXlDYWxsYmFjayB7DQo+Pj4+IGZuIGNhbGxlZCgmbXV0IHNlbGYp
IHsNCj4+Pj4gIC8vIENhbid0IG1vdmUgdGhlIGZlbmNlIG91dCwgc28gd2UgaGF2ZSB0byBwdXQg
YW4gT3B0aW9uPFQ+IGp1c3QgdG8gYmUgYWJsZQ0KPj4+PiAgLy8gdG8gbW92ZS4NCj4+Pj4gIGlm
IGxldCBTb21lKGYpID0gc2VsZi5zb21lX2ZlbmNlLnRha2UoKSB7DQo+Pj4+ICAgIGYuc2lnbmFs
KCk7DQo+Pj4+ICB9DQo+Pj4+IH0NCj4+Pj4gYGBgDQo+Pj4+IA0KPj4+PiBUaGlzIHVzZWQgdG8g
YmUgdGhlIGNhc2Ugd2hlbiBvdXIgdmVyc2lvbiBvZiB0aGUgam9iIHF1ZXVlIHVzZWQgdGhlICJw
cm94eQ0KPj4+PiBmZW5jZSIgZGVzaWduOg0KPj4+PiANCj4+Pj4gDQo+Pj4+IGBgYA0KPj4+PiAv
LyBDYWxsYmFjayBvbiB0aGUgaHcgZmVuY2UNCj4+Pj4gaW1wbCBGZW5jZUNiIGZvciBNeUNhbGxi
YWNrIHsNCj4+Pj4gZm4gY2FsbGVkKCZtdXQgc2VsZikgew0KPj4+PiAgaWYgbGV0IFNvbWUoZikg
PSBzZWxmLnN1Ym1pdF9mZW5jZS50YWtlKCkgew0KPj4+PiAgICBmLnNpZ25hbCgpOw0KPj4+PiAg
fSAgDQo+Pj4gDQo+Pj4gSSdtIHByZXR0eSBzdXJlIGxvY2tkZXAgd29uJ3QgbGlrZSBpdCBhbnl3
YXksIGJlY2F1c2UgdGhpcyBpcyBuZXN0ZWQNCj4+PiBsb2NraW5nIG9mIHRoZSBzYW1lIGxvY2sg
Y2xhc3MuIEZvciBzdWNoIHByb3hpZXMsIHdlJ2xsIG5lZWQgdG8gdGVhY2gNCj4+PiBsb2NrZGVw
IGFib3V0IHRoZSBuZXN0aW5nIGxpa2UgaGFzIGJlZW4gcmVjZW50bHkgZG9uZSBvbg0KPj4+IGRt
YV9mZW5jZV9hcnJheSAmIGNvLiBCdXQgSSdtIGRpZ3Jlc3NpbmcuICANCj4+IA0KPj4gWWVhaCwg
YnV0IHRoaXMgaXMgbW9yZSBhYm91dCByZXNvdXJjZSB0cmFuc2ZlciBpbiBnZW5lcmFsLCBub3QN
Cj4+IHRoaXMgcGF0dGVybiBzcGVjaWZpY2FsbHkuDQo+PiANCj4+IEkgYWdyZWUgdGhhdCB0aGlz
IGhhcyBpc3N1ZXMsIGFuZCB5ZXMsIGxvY2tkZXAgY29tcGxhaW5lZCBiYWNrDQo+PiB0aGVuIDop
DQo+IA0KPiBUaGUgdGhpbmcgaXMsIHRoZXJlJ3Mgc28gbWFueSBhc3BlY3RzIHRoYXQgY291bGQg
Z28gd3JvbmcgYmVjYXVzZSBvZiB0aGUNCj4gY29udGV4dCB0aGlzIGNhbGxiYWNrIGlzIGNhbGxl
ZCBpbi4gTmVzdGVkIGxvY2tpbmcgaXMgb25lIG9mIHRoZW0sDQo+IHRoZSBmYWN0IHdlIGNhbid0
IHNsZWVwIGlzIGFub3RoZXIuIEFuZCB3aXRoIHJ1c3QgaXQncyBldmVuIHdvcnNlLA0KPiBiZWNh
dXNlIG9mIHRoZSBpbXBsaWNpdCBkcm9wcyB0aGF0IHdpbGwgaGFwcGVuIHdoZW4geW91IHRha2Ug
b3duZXJzaGlwDQo+IG9mIHJlc291cmNlcyAodGFraW5nIHNsZWVwaW5nIGxvY2tzIHRvIHJlbW92
ZSByZXNvdXJjZXMgZnJvbSBhIGRhdGFzZXQNCj4gZm9yIGluc3RhbmNlKS4NCj4gDQo+IFNvLCBi
eSBwYXNzaW5nIHNlbGYgYnkgdmFsdWUgdG8gdGhlIDo6Y2FsbGJhY2soKSwgeW91J3JlIGJhc2lj
YWxseQ0KPiB0ZWxsaW5nIHVzZXJzICJoZXksIEJUVywgZG9uJ3QgZm9yZ2V0IHRvIGRlZmVyIHRo
ZSBkcm9wIHRvIHNvbWUNCj4gd29ya3F1ZXVlIGlmIHlvdSB0aGluayBpdCdzIG5vdCBhdG9taWMt
c2FmZSIuIEFuZCBob3cgY2FuIHVzZXJzIGtub3cNCj4gdGhhdCB0aGUgdGhpbmcgdGhleSdyZSBh
Ym91dCB0byBkcm9wIGNhbiBiZSBkcm9wcGVkIGluIGF0b21pYyBjb250ZXh0Pw0KDQoNCkNhbuKA
mXQgd2UgY3JlYXRlIGEgdG9rZW4gdHlwZSB0aGF0IHNpZ25hbHMgd2XigJlyZSBpbiBhdG9taWMg
Y29udGV4dD8gSWYNCndlIHBhc3MgdGhpcyB0b2tlbiB0eXBlIGFzIGFuIGFyZ3VtZW50LCBwZXJo
YXBzIGxvY2tkZXAgY2FuIGNoZWNrIGl0IGZvciB1cz8NCg0KUGVyaGFwcw0KDQplbnVtIFNvbWVG
YW5jeU5hbWUgew0KICBBdG9taWMoQXRvbWljVG9rZW4pDQogIE5vdEF0b21pYywNCn0NCg0Kc2ln
bmFsZWQoc2VsZiwgYXRvbWljOiBBdG9taWNUb2tlbikgew0KICAuLg0KfQ0KDQo+IFRoZXkgYmFz
aWNhbGx5IGhhdmUgdG8gYXVkaXQgdGhlIDo6ZHJvcCgpIG9mIGFsbCB0aGUgcmVzb3VyY2VzIHRo
ZXkNCj4gZW1iZWQgaW4gdGhlaXIgdHlwZSBpbXBsZW1lbnRpbmcgRmVuY2VDYi4gTm90IG9ubHkg
dGhhdCwgYnV0IHRoZXkgYWxzbw0KPiBoYXZlIHRvIGRlc2lnbiB0aGUgdGhpbmcgc28gdGhlIGRl
ZmVycmFsIG9mIHRoaXMgOjpkcm9wKCkgZG9lc24ndA0KPiBhbGxvY2F0ZSwgYmVjYXVzZSwgb2J2
aW91c2x5LCBhbGxvY2F0aW5nIGluIGF0b21pYyBjb250ZXh0IGlzDQo+IHRyaWNreS9mYWxsaWJs
ZS4gQUZBSUssIG5vbmUgb2YgdGhpcyBjYW4gYmUgc3BvdCBhdCBjb21waWxlLXRpbWUgKEkNCj4g
cmVtZW1iZXIgR2FyeS9EYW5pbG8gbWVudGlvbmluZyB0aGF0IHdlIGNvdWxkIHRlYWNoIHRoZSBr
bGludCBhYm91dA0KPiBzb21lIG9mIHRoZXNlIHJ1bGVzKS4gVGhpcyB3b3VsZCBsZWF2ZSB1cyB3
aXRoIHJ1bnRpbWUgY2hlY2tzIGxpa2UNCj4gbWlnaHRfc2xlZXAoKSwgYnV0IG1vc3Qgb2YgdGhl
IEMgcHV0dGVycyAoeHh4X3B1dChvYmplY3QpKSBkb24ndCBoYXZlDQo+IG1pZ2h0X3NsZWVwKCkg
aW4gdGhlIHBhdGggd2hlcmUgdGhlIGRlY3JlZiBkb2Vzbid0IGxlYWQgdG8gYSByZWZjbnQ9MA0K
PiBzaXR1YXRpb24uDQo+IA0KPiBUTERSOyBDYWxsIHRoaXMgUFRTRCBpZiB5b3Ugd2FudCwgYnV0
IHRoaXMgaXMgdGhlIHNvcnQgb2YgYnVncyBJDQo+IHN0cnVnZ2xlZCB3aXRoIG9uIHRoZSBDIHNp
ZGUsIGFuZCBJIGNhbiBwcmVkaWN0IHRoYXQgdGhlIGV4YWN0IHNhbWUNCj4gd2lsbCBoYXBwZW4g
aW4gcnVzdCBkcml2ZXJzIGlmIHdlIGV4cG9zZSB0aGUgRmVuY2VDYiBhcyBpdCBpcyBkZXNpZ25l
ZA0KPiBoZXJlIGFuZCB3ZSBkb24ndCBoYXZlIGEgd2F5IHRvIGNoZWNrIHRoZSBzb3VuZG5lc3Mg
b2YgdGhlIEZlbmNlQ2INCj4gaW1wbGVtZW50YXRpb25zIGF0IGNvbXBpbGUgdGltZS4NCj4gDQo+
IFRoZSBvdGhlciBvcHRpb24gKHRoZSBvbmUgSSd2ZSBiZWVuIGFkdm9jYXRpbmcgZm9yIGZyb20g
dGhlIHN0YXJ0KSwgaXMNCj4gdG8gbm90IGxldCBkcml2ZXJzIGltcGxlbWVudCBGZW5jZUNiICht
YWtlIGl0IHByaXZhdGUpLCBidXQgaW5zdGVhZA0KPiBoYXZlIGEgYnVuY2ggb2YgaW1wbGVtZW50
YXRpb25zIHRoYXQgd2Uga25vdyBhcmUgc2FmZS4gSGVyZSdzIGEgbGlzdCBvZg0KPiBpbXBsZW1l
bnRhdGlvbnMgdGhhdCBJIHRoaW5rIHdvdWxkIHVuYmxvY2sgbW9zdCBvZiB0aGUgZHJpdmVycyB1
c2UNCj4gY2FzZXM6DQo+IA0KPiAtIHdha2V1cCBhIHRocmVhZA0KPiAtIGNvbXBsZXRlIGEgY29t
cGxldGlvbiBvYmplY3QNCj4gLSBzY2hlZHVsZSBhIFdvcmtJdGVtDQo+IC0gc2NoZWR1bGUgYSBr
dGhyZWFkX3dvcmtlciAob25jZSB3ZSBnZXQgYSBwcm9wZXIgcnVzdCBhYnN0cmFjdGlvbiBmb3IN
Cj4gIHRoYXQpDQoNClRoaXMgY2FuIGFsc28gd29yayB0b28sIEkgZ3Vlc3MuDQoNCj4gDQo+IEl0
IGRvZXNuJ3QgbWVhbiB3ZSBjYW4ndCBoYXZlIG9wdGltaXplZCBGZW5jZUNiIGltcGxlbWVudGF0
aW9ucyB0aGF0IGRvDQo+IGEgbG90IG1vcmUgaW4gdGhlIGNhbGxiYWNrKCkgcGF0aCBpbnN0ZWFk
IG9mIGRlZmVycmluZyB0byBhDQo+IHdvcmtxdWV1ZS90aHJlYWQsIGJ1dCBhdCBsZWFzdCB0aG9z
ZSB3b3VsZCBoYXZlIHRvIGJlIGltcGxlbWVudGVkIGluDQo+IGRtYV9mZW5jZS5ycywgYW5kIHRo
ZSBkbWFfZmVuY2UucnMgbWFpbnRhaW5lcnMgY2FuIHRoZW4gY2FyZWZ1bGx5IGF1ZGl0DQo+IHRo
ZSBjb2RlIGFzIHBhcnQgb2YgdGhlIHJldmlldyBwcm9jZXNzLCB3aGljaCB3ZSBrbm93IGlzIG5v
dCByZWFsbHkgdGhlDQo+IGNhc2Ugd2hlbiBjaGFuZ2VzIHRvdWNoIGRyaXZlcnMgY29kZSBvbmx5
Lg0KPiANCj4gRldJVywgSSB0aGluayB0aGUgRmVuY2VQcm94eSBkZXNpZ24geW91IHdlcmUgZGVz
Y3JpYmluZyBmYWxscyBpbnRvDQo+IHRoaXMgIm11c3QgYmUgY2FyZWZ1bGx5IGF1ZGl0ZWQiIGJ1
Y2tldCwgYW5kIHNob3VsZCBiZSBpbXBsZW1lbnRlZCBpbg0KPiBkbWFfZmVuY2UucnMuDQo+IA0K
Pj4gDQo+Pj4gDQo+Pj4+IH0NCj4+Pj4gYGBgDQo+Pj4+IA0KPj4+PiBBbHRob3VnaCB0aGlzIGlz
IG5vdCB0aGUgY2FzZSBhbnltb3JlLCBzaW5jZSB3ZSBwaGFzZWQgb3V0IHRoaXMgZGVzaWduIGdp
dmVuDQo+Pj4+IENocmlzdGlhbidzIHJlY2VudCB3b3JrLiBTdGlsbCwgd2Ugc2hvdWxkIGlkZWFs
bHkgbm90IHJlcXVpcmUgT3B0aW9uPFQ+IGhlcmUgaW4NCj4+Pj4gZ2VuZXJhbCBqdXN0IHRvIG1h
a2UgcmVzb3VyY2UgdHJhbnNmZXIgcG9zc2libGUuICANCj4+PiANCj4+PiBJIHNlZS4gT1RPSCwg
ZG9uJ3Qgd2UgbmVlZCB0byBtYWtlIHRoaXMgaW5uZXIgZGF0YSBtb3ZhYmxlIGlmIHdlIHdhbnQN
Cj4+PiB0byBjYW5jZWwgdGhlIEZlbmNlQ2IgYmVmb3JlIHRoZSBmZW5jZSBpcyBzaWduYWxlZCBh
bnl3YXk/IEFuZCB0aGF0J3MNCj4+PiBtb3N0IGNlcnRhaW5seSBhIGNhc2Ugd2UgaGF2ZSBpbiB0
aGUgdGVhcmRvd24gcGF0aC4gIA0KPj4gDQo+PiBDYW4geW91IGV4cGFuZCBhIGJpdCBvbiB3aGF0
IHlvdSBtZWFuIGhlcmU/DQo+IA0KPiBOZXZlciBtaW5kLCBJIHdhcyBjb25mdXNpbmcgdHdvIGRp
ZmZlcmVudCBpdGVyYXRpb25zIG9mIHRoZSBjb2RlIGhlcmUuDQo+IEkgdGhvdWdodCB0aGUgT3B0
aW9uPFQ+IHlvdSB3ZXJlIG1lbnRpb25pbmcgd2FzIGluDQo+IEZlbmNlQ2JSZWdpc3RyYXRpb248
VD4sIHdpdGggc29tZSBleHBsaWNpdCA6OmNhbmNlbCgpIGZ1bmN0aW9uIHRoYXQNCj4gd291bGQg
cmV0dXJuIE9wdGlvbjxUPiBzbyB0aGUgdXNlciBjYW4gZ2V0IGl0cyByZXNvdXJjZXMgYmFjayB3
aGVuIGl0DQo+IGNhbmNlbHMgdGhlIHJlZ2lzdHJhdGlvbiwgYW5kIGFsc28ga25vdyB3aGV0aGVy
IHRoZSBjYWxsYmFjayB3YXMgY2FsbGVkDQo+IG9yIG5vdC4gQnV0IHRoaXMgaXMgYWxsIGdvbmUg
bm93LCBhbmQgYWxsIHdlIGNhbiBkbyBpcyBkcm9wIHRoZQ0KPiByZWdpc3RyYXRpb24sIHdoaWNo
IHdpbGwgYXV0b21hdGljYWxseSBkcm9wIHRoZSBpbm5lciBULg0KDQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBs
aXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5k
IGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
