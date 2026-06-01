Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IK3BNP5nHmoNjAkAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:58 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 713AE62883E
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 02 Jun 2026 07:19:58 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8A5E24098D
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  2 Jun 2026 05:19:57 +0000 (UTC)
Received: from mail-dy1-f182.google.com (mail-dy1-f182.google.com [74.125.82.182])
	by lists.linaro.org (Postfix) with ESMTPS id 8C926404A3
	for <linaro-mm-sig@lists.linaro.org>; Mon,  1 Jun 2026 13:22:19 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20251104 header.b=ZsHZ9XYT;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of aliceryhl@google.com designates 74.125.82.182 as permitted sender) smtp.mailfrom=aliceryhl@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-dy1-f182.google.com with SMTP id 5a478bee46e88-304ffa40c5dso5135593eec.1
        for <linaro-mm-sig@lists.linaro.org>; Mon, 01 Jun 2026 06:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780320138; cv=none;
        d=google.com; s=arc-20240605;
        b=MNocY3QJJu2hfzgdrRMrPStSrwKb8+ibKo/7QoQevJoe1dHc6n7Aj2kh4AHfQt/ooi
         rK2/ORwe3k0uZ2djP4RqfWlz4VrXYD3lp+z3u2FUJv4YQfkSpwzhrLjtqj5s/YcsmlV4
         fvbuXDoX/LI5bRD7xVxfxx6vXr5NQauB2+JMfQTYbLCBet6RV5ssEsCw3x3n0WRx9TEZ
         gBaMgbrd06AmQvb31YZoOzr1n2aSR9Z0htI9NhLPXt3A4Rys6BTUlOG7f7AMHktdc44o
         aKo7pcfkKT3H0tiq9OUW2BK4gub/PF4H/nYVH1JBK2AhwIhAdjBXFNSv/ScL+8DXe2EP
         znWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GdkOBdEWo+k8nIccYq3ePCwKTGzhNT9vQ5Dk5zhGNHg=;
        fh=r/go4l0VXaEIl3TM4CBGjkWXmJ+/rQ+XSojPRtWqCpU=;
        b=k2FNEd9AbUEorjzbWaFfNGcv3coUcVTMCEtjqmnwP02WRNiTSPpEnvUjDZmXXqiMyX
         c6+5Pqsr0rjKPr8EtUr4wAQRuTQ5h67cZi+ObwAPesxGPJTlc5xw7fdc05ik2m2C9y8c
         a1HScBpQN1ilZomx9kUWDkze+hwCvkHa88a9dMB5tknibs+KXxDx90E3afp/FPeaKj4f
         9YS9TEj3+EqvvWkNoCAzpZWS7ACFRzK9PhVh1n26WMjjxzCTuT1KoIcSWlkGIao4HlsZ
         GQK689M427RHEq6Qaea31OLAS0GFrttGfJ6a9TCpbM0s2tYLN/V7jIWVjBLtpQc//3/q
         rdcQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20251104; t=1780320138; x=1780924938; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GdkOBdEWo+k8nIccYq3ePCwKTGzhNT9vQ5Dk5zhGNHg=;
        b=ZsHZ9XYTlS0EIautTMEFGq01vbyuofSbZmbfM7D6NnEPI6woDeJPy1e6L+DYX7Y1f9
         G5mErfkHt5jqcUU32g3N+Ngu6vdpN8SE5kBcUe9VDqbd6Ho1Lq+WzKDxpFmcCpIwdoMG
         txPCgYLt+6yAXcMiVvq51sJ+S8Ht9B+9UBamgSTaX+EPCUYSuRxjrTuKWGJ6cV/mCO8D
         S83WikXSPI9+wz03XG7G5xvq6il6i99SFYMUUoQfCaRt1F4gjR3rrOSmIHBqEbWYRBGL
         sRQxXn6BG0sLrOVER0bKDxU32hh0irACe+GFPM5+I51xtdfcWycTB/4ZcpQ85TxAM0RF
         g3dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780320138; x=1780924938;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GdkOBdEWo+k8nIccYq3ePCwKTGzhNT9vQ5Dk5zhGNHg=;
        b=BU1hxabioAqIhppCqDtBDHhbjWwkmzoTEqPKuThMx6GpQNddSkJCj9su4uhJxRsGVa
         PFXlbR1IXT8MqLhdj0rV6rLkvQUjQ8NeBh2jeuItwQU+yqokpALTq5qOkhvhtuWJHinm
         gQCSfzUpxJqGkUJlPvIWqpTjyog2wVwFX8MsanG7ZK5kJRnWNNxvhWGm0Wyb9fPkXkIa
         +3QdvK+YOgVV8LhHBrwjtp1dOaYzHXWgnw1H/rc3qb6NinYwVt3wXzyEUlFe4RqSkCX9
         ZccYJXo//9T2idFizjbDd7KExinZXpUAsduqTJPbb6R8ilxL96k/D+kRWK0P2U8bUNK2
         McTQ==
X-Forwarded-Encrypted: i=1; AFNElJ+LGbE6L8EIXkab//kVgesgW00r10890WUgBqPN2k5OTZBC+DNfYFdu5qPU4gLcxVb57TZirLRZ91FTQWDo@lists.linaro.org
X-Gm-Message-State: AOJu0YxI2QoL/552recrIxLkLuEmBndZWF/5ePigFUz8Q4yJv8NCoLEc
	8KBWsURZBIPOubG4c2uTjSMBvPEZphOtPX3PHL2PomulTywyJNCRTmjxtKLanz+waifJGf1uBoq
	sK4nm0u1jn7iNMXfpQPs1/W2jm1X+ZDc5z2oqbz9l
X-Gm-Gg: Acq92OGvuYUDlUvuxy68HMHl+AwdN4jzRUlzvPtV8tqvKnOu4D1hGY7Z6Dne7QmqCwO
	08KdeNqg5KNevQ/vNkDe2SU5YnBbYELd2XF6TCW+TUBYchVA3c1iVYPO/AR1R9mHcrfgSGv62OU
	J6Px1nWEWzvgVq6Q4XZXoIAyNO1/TxzSXOVeECpahYGATcY3gE6UxToc1jjVX20SV5CYfI4b7Pr
	W3dF8fS/XhVMdGYLYZVr2N9r3Lf4eXM5neh0gmS+ArL427OVYE5N86QPhArkW/9KBUBFJMCalYE
	fstf5lnS5QhIICTHKLvSklYGTj+xRUK40mYetNKV7sYL4NJpNMvj6Nv17C9p5LRaGaGldxnmtwT
	O9nI=
X-Received: by 2002:a05:693c:2c86:b0:2de:cc07:e99 with SMTP id
 5a478bee46e88-304fa49ce00mr5489017eec.7.1780320137881; Mon, 01 Jun 2026
 06:22:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260530143541.229628-2-phasta@kernel.org> <20260530143541.229628-5-phasta@kernel.org>
 <ah1glmXDM-OAKa5h@google.com> <0ea6b6fdd1e3f1e07445f17c0bf672524938dc85.camel@mailbox.org>
 <ah19ZVkr7b3m7V_u@google.com> <3b216f24afb406b797b8bbb73b3f5c0eec2fdc6c.camel@mailbox.org>
In-Reply-To: <3b216f24afb406b797b8bbb73b3f5c0eec2fdc6c.camel@mailbox.org>
From: Alice Ryhl <aliceryhl@google.com>
Date: Mon, 1 Jun 2026 15:22:02 +0200
X-Gm-Features: AVHnY4LWfDXXY2MTx1DqLyh8Hxwl3ZS8C8Evk9p1Nisz1mt4W-Tdk9DBxhQXUfk
Message-ID: <CAH5fLgiZb5fqfXGQMicPp+UbBi3JMN8ZNG_Ldt5KiSk+btVCSA@mail.gmail.com>
To: phasta@kernel.org
X-Spamd-Bar: -----
X-MailFrom: aliceryhl@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: JRYSJCAPTXAHWKWHYJZPFMOC7U4UAVCG
X-Message-ID-Hash: JRYSJCAPTXAHWKWHYJZPFMOC7U4UAVCG
X-Mailman-Approved-At: Tue, 02 Jun 2026 05:18:19 +0000
CC: Miguel Ojeda <ojeda@kernel.org>, Boqun Feng <boqun@kernel.org>, Gary Guo <gary@garyguo.net>, =?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, Benno Lossin <lossin@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Trevor Gross <tmgross@umich.edu>, Danilo Krummrich <dakr@kernel.org>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, "Paul E. McKenney" <paulmck@kernel.org>, Frederic Weisbecker <frederic@kernel.org>, Neeraj Upadhyay <neeraj.upadhyay@kernel.org>, Joel Fernandes <joelagnelf@nvidia.com>, Josh Triplett <josh@joshtriplett.org>, Uladzislau Rezki <urezki@gmail.com>, Steven Rostedt <rostedt@goodmis.org>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan <jiangshanlai@gmail.com>, Zqiang <qiang.zhang@linux.dev>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Igor Korotin <igor.korotin@linux.dev>, Lorenzo Stoakes <ljs@kernel.org>, Alexandre Courbo
 t <acourbot@nvidia.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, Krishna Ketan Rai <prafulrai522@gmail.com>, Shankari Anand <shankari.ak0208@gmail.com>, manos@pitsidianak.is, Boris Brezillon <boris.brezillon@collabora.com>, linux-kernel@vger.kernel.org, rust-for-linux@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rcu@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 3/4] rust: Add dma_fence abstractions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/JRYSJCAPTXAHWKWHYJZPFMOC7U4UAVCG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [5.09 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	GREYLIST(0.00)[pass,meta];
	RCPT_COUNT_TWELVE(0.00)[37];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,garyguo.net,protonmail.com,umich.edu,linaro.org,amd.com,nvidia.com,joshtriplett.org,gmail.com,goodmis.org,efficios.com,linux.dev,collabora.com,linuxfoundation.org,pitsidianak.is,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:-];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	FROM_NEQ_ENVFROM(0.00)[aliceryhl@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.979];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mailbox.org:email,zulipchat.com:url,lists.linaro.org:rdns,lists.linaro.org:helo,linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 713AE62883E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCBKdW4gMSwgMjAyNiBhdCAyOjQ34oCvUE0gUGhpbGlwcCBTdGFubmVyIDxwaGFzdGFA
bWFpbGJveC5vcmc+IHdyb3RlOg0KPg0KPiBPbiBNb24sIDIwMjYtMDYtMDEgYXQgMTI6MzkgKzAw
MDAsIEFsaWNlIFJ5aGwgd3JvdGU6DQo+ID4gT24gTW9uLCBKdW4gMDEsIDIwMjYgYXQgMDI6MjY6
MTdQTSArMDIwMCwgUGhpbGlwcCBTdGFubmVyIHdyb3RlOg0KPiA+ID4gT24gTW9uLCAyMDI2LTA2
LTAxIGF0IDEwOjM2ICswMDAwLCBBbGljZSBSeWhsIHdyb3RlOg0KPiA+ID4gPiBPbiBTYXQsIE1h
eSAzMCwgMjAyNiBhdCAwNDozNToxMVBNICswMjAwLCBQaGlsaXBwIFN0YW5uZXIgd3JvdGU6DQo+
ID4gPiA+ID4gKy8vLyBBIHRyYWl0IHRvIGVuZm9yY2UgdGhhdCBhbGwgZGF0YSBpbiBhIFtgRHJp
dmVyRmVuY2VgXSBlaXRoZXIgZG9lcyBub3QgbmVlZA0KPiA+ID4gPiA+ICsvLy8gZHJvcCwgb3Ig
bGl2ZXMgaW4gYSBbYFJjdUJveGBdLg0KPiA+ID4gPiA+ICtwdWIgdHJhaXQgRHJpdmVyRmVuY2VB
bGxvd2VkRGF0YTogcHJpdmF0ZTo6U2VhbGVkIHt9DQo+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ICtt
b2QgcHJpdmF0ZSB7DQo+ID4gPiA+ID4gKyAgICBwdWIgdHJhaXQgU2VhbGVkIHt9DQo+ID4gPiA+
ID4gK30NCj4gPiA+ID4gPiArDQo+ID4gPiA+ID4gK2ltcGw8RjogQ29weT4gRHJpdmVyRmVuY2VB
bGxvd2VkRGF0YSBmb3IgRiB7fQ0KPiA+ID4gPiA+ICtpbXBsPEY6IFNlbmQ+IERyaXZlckZlbmNl
QWxsb3dlZERhdGEgZm9yIFJjdUJveDxGPiB7fQ0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiAraW1w
bDxGOiBDb3B5PiBwcml2YXRlOjpTZWFsZWQgZm9yIEYge30NCj4gPiA+ID4gPiAraW1wbDxGOiBT
ZW5kPiBwcml2YXRlOjpTZWFsZWQgZm9yIFJjdUJveDxGPiB7fQ0KPiA+ID4gPg0KPiA+ID4gPiBX
aHkgc2VhbGVkPyBKdXN0IG1ha2UgdGhlIHRyYWl0IHVuc2FmZSBhbmQgcmVxdWlyZSB0aGUgdGhp
bmdzIHlvdQ0KPiA+ID4gPiByZXF1aXJlIGZyb20gdGhlIHVzZXIuDQo+ID4gPg0KPiA+ID4gVGhp
cyBpcyBmYXIgYmV0dGVyLiBXZSBkZWZpbml0ZWx5IG9ubHkgYWxsb3cgdGhlIHVzZXIgdG8gcGFz
cyBBIG9yIEIsDQo+ID4gPiBhbmQgb25seSB0aGVuIGl0IGNvbXBpbGVzLg0KPiA+DQo+ID4gV2hh
dCBpZiBJIGhhdmUgYW5vdGhlciB0eXBlIHRoYXQgSSB3YW50IHRvIHVzZSBoZXJlPyBGb3IgZXhh
bXBsZSwgbWF5YmUNCj4gPiBJIGhhdmUgYSBzdHJ1Y3QgY29udGFpbmluZyBhIGNvcHkgZmllbGQg
YW5kIGFuIFJjdUJveC4gT3IgbWF5YmUgSSBoYXZlDQo+ID4gYW4gQVJlZjxfPiBvZiBzb21lIEMg
dHlwZSB0aGF0IHVzZXMgcmN1IGZvciBjbGVhbnVwLiBUaGVuIEkgbXVzdCBlZGl0DQo+ID4gdGhp
cyBmaWxlIHRvIGFkZCBzdXBwb3J0IGZvciBpdD8NCj4gPg0KPiA+ID4gVGhlIHVuc2FmZSBpbXBs
ZW1lbnRhdGlvbiBjb3VsZCBiZSBtZXNzZWQgdXAuDQo+ID4gPg0KPiA+ID4gSSB0aG91Z2h0IHRo
YXQncyB3aGF0IFNlYWxlZCBpcyBmb3IuIE9yIGlzbid0IGl0Pw0KPiA+DQo+ID4gU2VhbGVkIGlz
IGZvciBtYWtpbmcgMTAwJSBzdXJlIHRoYXQgZG93bnN0cmVhbSBjcmF0ZXMvZHJpdmVycyBjYW5u
b3QNCj4gPiBwcm92aWRlIHRoZWlyIG93biBpbXBsZW1lbnRhdGlvbnMuIEJ1dCBJIGRvbid0IHNl
ZSB3aHkgeW91IG5lZWQgdGhhdC4NCj4gPiBBbGwgeW91IHJlcXVpcmUgaXMgdGhhdCB0aGUgdmFs
dWUgcmVtYWlucyB2YWxpZCBmb3Igb25lIGdyYWNlIHBlcmlvZA0KPiA+IGFmdGVyIGNsZWFudXAg
YmVnaW5zLiBBcyBsb25nIGFzIHRoZSB0eXBlIHNhdGlzZmllcyB0aGF0LCB5b3UgYXJlIGhhcHB5
Lg0KPiA+IEFuIHVuc2FmZSB0cmFpdCBjYW4gcmVxdWlyZSB0aGF0IHNvcnQgb2YgcmVxdWlyZW1l
bnQgZnJvbSB0aGUgdXNlci4NCj4gPg0KPiA+IEkgdGhpbmsgd2hhdCB5b3Ugd2FudCBpcyBleHBy
ZXNzZWQgd2VsbCBieSBgUmN1RnJlZVNhZmVgIGZyb20gdGhpcw0KPiA+IHRocmVhZDoNCj4gPiBo
dHRwczovL3J1c3QtZm9yLWxpbnV4Lnp1bGlwY2hhdC5jb20vI25hcnJvdy9jaGFubmVsLzI5MTU2
Ni1MaWJyYXJ5L3RvcGljL0NvbnNvbGlkYXRlLjIwLjYwUG9sbENvbmRWYXJCb3guNjAuMjBpbnRv
LjIwLjYwUmN1LjJBQm94LjYwL25lYXIvNTk4NzI2NzI0DQo+ID4NCj4NCj4gSSBndWVzcyB0aGlz
IGlzIGEgcXVlc3Rpb24gb2YgZGVzaWduIHByaW5jaXBsZXMuIElmIHlvdSBkZW1hbmQgYW4NCj4g
UmN1Qm94LCB5b3UgaGF2ZSBhIGd1YXJhbnRlZSB0aGF0IGl0J3Mgc2FmZS4NCj4NCj4gSWYgeW91
IGRlbWFuZCBhbiB1bnNhZmUgdHJhaXQsIHlvdSBvcGVuIHRoZSBwb3NzaWJpbGl0eSBmb3IgcGVv
cGxlDQo+IG1lc3NpbmcgdXAuDQo+DQo+IER1ZSB0byB0aGUgdW5zYWZlLWNvbnRyYWN0IHlvdSdk
IGhhdmUgbW92ZWQgdGhlIHJlc3BvbnNpYmlsaXR5IGZvciB0aGUNCj4gc291bmRuZXNzIHRvIHRo
ZSBkcml2ZXIuDQo+DQo+IEkgd291bGQgbm90IHdhbnQgdG8gYmxvY2sgeW91ciBzdWdnZXN0aW9u
LCBidXQgSSBhbSBub3Qgc3VyZSB3aGV0aGVyDQo+IHRoYXQncyByZWFsbHkgdGhlIGJldHRlciBk
ZXNpZ24gaWRlYS4NCg0KWWVzLCBpdCdzIGEgZGVzaWduIHByaW5jaXBsZS4gWW91IGFyZSBzYXlp
bmcgdGhhdCBpZiBzb21lb25lIG5lZWRzIHRvDQpkbyBYIGJ1dCBtaWdodCBnZXQgaXQgd3Jvbmcs
IHdlIHNob3VsZCB0YWtlIGF3YXkgdGhlIGFiaWxpdHkgdG8gZG8gWD8NCkkgZnVuZGFtZW50YWxs
eSBkaXNhZ3JlZSB3aXRoIHRoYXQgcHJpbmNpcGxlLiBVbnNhZmUgdHJhaXRzIGlzIHRoZQ0KdG9v
bCBSdXN0IGNyZWF0ZWQgZm9yIHRoZSBleGFjdCBwcm9ibGVtIHlvdSBoYXZlOyBtYXJraW5nIHBs
YWNlcyB3aGVyZQ0KeW91IHNob3VsZCBiZSBjYXJlZnVsIGlzIHRoZSBlbnRpcmUgcG9pbnQgb2Yg
J3Vuc2FmZScuDQoNCkFsaWNlDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxp
c3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0t
c2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
