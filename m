Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MdagMf+H72mwCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F69B475CE9
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 17:59:59 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 8DDA93F727
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 15:59:58 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by lists.linaro.org (Postfix) with ESMTPS id C542D40476
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 09:14:28 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=IN5i2jEN;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of david.laight.linux@gmail.com designates 209.85.221.53 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-43d43e09de5so4312825f8f.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 02:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777022068; x=1777626868; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nSmDvRkfSjghcrtIGnXq0grda+xm9HI4mnGbjcUNF0k=;
        b=IN5i2jENxqdWkxB21xAJLTWusHGorc+A0PaoX1dv6nJ522AwlNhS0duJ/jKpu+tNhn
         L+iXQRKvGVhWzGnvDZI/r/lMQYhlZwrf2gCT0/o+u6PicAVe7tRWbo7qUmbnf8owHLiI
         tR4f3Vxp6uI/2tBLbl0nOnhOrcSnpreS2tgji24o2U9AT4kRXbFG84kOWB/bg1ZaKvxr
         A+6T9rKxpAuB3HV8r9croOV+i2U4pC95JMJY8gF+M53hhxjr7llcEgldolZSR6PGlKPe
         mSz552n8HpInq94YcdtqHlZiI9emUtS4Idj5EhrzcN5PIY7tgcIuymmACj5ULK8QKLJe
         RuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777022068; x=1777626868;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nSmDvRkfSjghcrtIGnXq0grda+xm9HI4mnGbjcUNF0k=;
        b=bwXl9rAAv0B6ZGn9g5Lub7MSNyc0NTcmyML/GSuAP91xKrXrWSD+MBJPswEvaLp/jz
         p5N+FLxBzDACB7qrdqPug7Iy1OHiQ7I126s6RVbojDRLfUkSJMNEDDyrRzlbGTP0Cutb
         vBcPq1Wat48Ok8fG1dmPCjsxEYTGXZ0k8seR2EkCBrReqlyj6mk+6hMmGm98bddqvNSY
         9fRqWyA8L1btZwm9SXz479H2AqC2zrcOLwu3pvh3lw+VM9vRPWzTEqL1Bopoo3GpCLNK
         4125b/DBVxBODfZ+JmfZXC6lb12UihcqXVYQegGWYb0+JsgHOCY5Ap+rQbRbEsWb46Af
         FQIA==
X-Forwarded-Encrypted: i=1; AFNElJ//4XljkEv34IE+XcXoojHweEl87AGz4BD4jzwU919NSbpkuW++F0UgZHylHaVtQ7K2EJ1d+CK99a6/SXye@lists.linaro.org
X-Gm-Message-State: AOJu0YzDkgS5thP4gh2a7CQ/3V71x0posaiqBtt0ThaA/6aRn7k5BzyQ
	LzVXa1UjN6nT+h7QBI5cQROnXzyJF/qlbP4NsRUH19LVuMX6YLFRedTx
X-Gm-Gg: AeBDievVSPMGljw4pnGaMwJ2AC4RMPJQLUsoj0cJhwuk3nDB3PkPbvJ0ggl5PthVf83
	G//i+LDH6As5UX4//24VDHs7kCVK7AklHyImylC/3w4rDAqIG+zJ8aWJvfBJf5tsFDhrB9gQKX5
	UGzO0qFB+JxeUuqLOO7bZMiG2QqpQBc378ApvIAvuoh0mkeBx2kvq17Zk+TFqoWxfUp0uo9/MI/
	hYESUDwd8HuSB6Bfop7ucAe40dY1trsrQ9bdvLrsHypSb6q0HyjEIqNS4JAED8B4yvKD6OvAhYB
	lmXRpHO5kWPSHH5mCqaEyuq/71aVddMe4aZkV+J5cllDDRDG8irRpcvVpjcJchhDJ3UdSkXgk+5
	Q4mbMDWImG5KEO6MjZ74DHtW0aUVna9WcRnX9twB9CBeJynVkF09pv9Rxt442IsWviEV8PFiXcc
	u8/QBqRoIf8dxgIn2e74EqL7dWfi42Ehax+RQ625rx7OJ+qdtHt7GZ+pycKtKRd/DGx3SFBrYxt
	+4=
X-Received: by 2002:a5d:5f84:0:b0:43d:7783:c684 with SMTP id ffacd0b85a97d-43fe3e1e092mr49352860f8f.43.1777022067498;
        Fri, 24 Apr 2026 02:14:27 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4412150a092sm23750898f8f.23.2026.04.24.02.14.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 02:14:27 -0700 (PDT)
Date: Fri, 24 Apr 2026 10:14:25 +0100
From: David Laight <david.laight.linux@gmail.com>
To: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>
Message-ID: <20260424101425.6bde0e17@pumpkin>
In-Reply-To: <20260424054742.45832-6-mkchauras@gmail.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
	<20260424054742.45832-6-mkchauras@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: HZAC2VGJ5KBBZOPB3ABALAXQQLNXOVIQ
X-Message-ID-Hash: HZAC2VGJ5KBBZOPB3ABALAXQQLNXOVIQ
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:59:51 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HZAC2VGJ5KBBZOPB3ABALAXQQLNXOVIQ/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 9F69B475CE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[78];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.728];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linaro.org:helo,lists.linaro.org:rdns,linkmauve.fr:email,linaro.org:email]

T24gRnJpLCAyNCBBcHIgMjAyNiAxMToxNzo0MCArMDUzMA0KIk11a2VzaCBLdW1hciBDaGF1cmFz
aXlhIChJQk0pIiA8bWtjaGF1cmFzQGdtYWlsLmNvbT4gd3JvdGU6DQoNCj4gRnJvbTogTGluayBN
YXV2ZSA8bGlua21hdXZlQGxpbmttYXV2ZS5mcj4NCj4gDQo+IFRoZSBjb3JlIGNyYXRlIGN1cnJl
bnRseSBkZXBlbmRzIG9uIHRoZXNlIHR3byBmdW5jdGlvbnMgZm9yIGk2NC91NjQvDQo+IGkxMjgv
dTEyOC9jb3JlOjp0aW1lOjpEdXJhdGlvbiBmb3JtYXR0aW5nLCBidXQgd2Ugc2hvdWxkbuKAmXQg
dXNlIHRoYXQgaW4NCj4gdGhlIGtlcm5lbCBzbyBsZXTigJlzIHBhbmljIGlmIHRoZXkgYXJlIGV2
ZXIgY2FsbGVkLg0KDQpVZ2cuDQpTdXJlbHkgeW91IGNhbiBtYWtlIGl0IGEgbGluay10aW1lIGZh
aWx1cmU/DQpPciBjaGFuZ2UgdGhlIHVuZGVybHlpbmcgY29kZSB0byBhdm9pZCB0aGUgZGl2aWRl
Lg0KDQoJRGF2aWQNCg0KPiANCj4gVGhpcyBkb2VzbuKAmXQgeWV0IGZpeCBkcm1fcGFuaWNfcXIu
cnMsIHdoaWNoIGFsc28gdXNlcyBfX3VkaXZkaTMgd2hlbg0KPiBDT05GSUdfQ0NfT1BUSU1JWkVf
Rk9SX1NJWkU9eSwgYnV0IGF0IGxlYXN0IG1ha2VzIHRoZSByZXN0IG9mIHRoZSBrZXJuZWwNCj4g
YnVpbGQgb24gUFBDMzIuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBMaW5rIE1hdXZlIDxsaW5rbWF1
dmVAbGlua21hdXZlLmZyPg0KPiBTaWduZWQtb2ZmLWJ5OiBNdWtlc2ggS3VtYXIgQ2hhdXJhc2l5
YSAoSUJNKSA8bWtjaGF1cmFzQGdtYWlsLmNvbT4NCj4gLS0tDQo+ICBydXN0L01ha2VmaWxlICAg
ICAgICAgICAgIHwgNCArKysrDQo+ICBydXN0L2NvbXBpbGVyX2J1aWx0aW5zLnJzIHwgNiArKysr
KysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL3J1c3QvTWFrZWZpbGUgYi9ydXN0L01ha2VmaWxlDQo+IGluZGV4IDJhNTQyOGE1NTAzZC4u
ZWUxMWZiYTdhMDNkIDEwMDY0NA0KPiAtLS0gYS9ydXN0L01ha2VmaWxlDQo+ICsrKyBiL3J1c3Qv
TWFrZWZpbGUNCj4gQEAgLTYxNiw2ICs2MTYsMTAgQEAgaWZuZXEgKCQob3IgJChDT05GSUdfQVJN
NjQpLCQoYW5kICQoQ09ORklHX1JJU0NWKSwkKENPTkZJR182NEJJVCkpKSwpDQo+ICAJCV9fYXNo
cnRpMyBcDQo+ICAJCV9fYXNobHRpMyBfX2xzaHJ0aTMNCj4gIGVuZGlmDQo+ICtpZmRlZiBDT05G
SUdfUFBDMzINCj4gKwlyZWRpcmVjdC1pbnRyaW5zaWNzICs9IFwNCj4gKwkJX191ZGl2ZGkzIF9f
dW1vZGRpMw0KPiArZW5kaWYNCj4gIA0KPiAgaWZkZWYgQ09ORklHX01PRFZFUlNJT05TDQo+ICBj
bWRfZ2VuZHdhcmZrc3ltcyA9ICQoaWYgJChza2lwX2dlbmR3YXJma3N5bXMpLCwgXA0KPiBkaWZm
IC0tZ2l0IGEvcnVzdC9jb21waWxlcl9idWlsdGlucy5ycyBiL3J1c3QvY29tcGlsZXJfYnVpbHRp
bnMucnMNCj4gaW5kZXggZGQxNmMxZGM4OTljLi5mYzZiNTQ2MzZkZDUgMTAwNjQ0DQo+IC0tLSBh
L3J1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMNCj4gKysrIGIvcnVzdC9jb21waWxlcl9idWlsdGlu
cy5ycw0KPiBAQCAtOTcsNSArOTcsMTEgQEAgcHViIGV4dGVybiAiQyIgZm4gJGlkZW50KCkgew0K
PiAgICAgIF9fYWVhYmlfdWxkaXZtb2QsDQo+ICB9KTsNCj4gIA0KPiArI1tjZmcodGFyZ2V0X2Fy
Y2ggPSAicG93ZXJwYyIpXQ0KPiArZGVmaW5lX3Bhbmlja2luZ19pbnRyaW5zaWNzISgiYHU2NGAg
ZGl2aXNpb24vbW9kdWxvIHNob3VsZCBub3QgYmUgdXNlZCIsIHsNCj4gKyAgICBfX3VkaXZkaTMs
DQo+ICsgICAgX191bW9kZGkzLA0KPiArfSk7DQo+ICsNCj4gIC8vIE5PVEU6IGlmIHlvdSBhcmUg
YWRkaW5nIGEgbmV3IGludHJpbnNpYyBoZXJlLCB5b3Ugc2hvdWxkIGFsc28gYWRkIGl0IHRvDQo+
ICAvLyBgcmVkaXJlY3QtaW50cmluc2ljc2AgaW4gYHJ1c3QvTWFrZWZpbGVgLg0KDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1h
aWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3Jp
YmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
