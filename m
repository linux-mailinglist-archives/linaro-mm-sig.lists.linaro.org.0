Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2P/YCAsW8mljnwEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:30:35 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D91C2495C56
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 16:30:30 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EBE13401DB
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 29 Apr 2026 14:30:25 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	by lists.linaro.org (Postfix) with ESMTPS id C16333F7C2
	for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Apr 2026 07:52:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=p5gDJJyF;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of mkchauras@gmail.com designates 209.85.215.171 as permitted sender) smtp.mailfrom=mkchauras@gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-c70fb6aa323so3189113a12.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 26 Apr 2026 00:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777189959; x=1777794759; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8zTG+Dw6oqSR8kg/1RMP0Ayk7RcQFqZXb8XQS8VS+9A=;
        b=p5gDJJyFjZwjoni7sth34NueiIyoVRUrPREo+yi1DANuWk8VzGSSuuSwc+RJbiiCo/
         n2kL2bsAGANwIK3g8tyCETYT2Ny34dp9ljafjadwWZesSjS3l6cDOtvwEsjbeaSidSUE
         ZiLyLCs8J6A7hNQcSzDg4wWOW6+3kzRLaUgFe0gkpvhcmlQH0kOFwISK5a7oy4sE5nUc
         XWvNs5RI24geFW0Bw4teQFswn09tTol18OWbczGu0Fu1usfpuNTQuuShCN+fVLfUA1c1
         BCkdKIzUmufrbIEXZ9HT338tOpFZI4Qb8jDZBegQeHQfsNJ1t0HA2SQb7RB/J+cLV8Z4
         466w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777189959; x=1777794759;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8zTG+Dw6oqSR8kg/1RMP0Ayk7RcQFqZXb8XQS8VS+9A=;
        b=tWiKez4dscGqlNhSeBT2xd8my65pfqOsd+3eo1rW4J/A1r/7EVvHz1CVc/N9q5gQko
         OVlskH/Y8FJSfkqh81gEGeMynK5ML+M73/8DcWfIYdGaOfCWn4nk78qd93KxZWkNuaNx
         YO/WJtUQVMfkQlSxR39ltgZNAQqYQB1Uv5SO9MOmjmLCF0SNIHbJdUHlqbeWzx0zKhND
         xgys+eQlDO3zr2S/SzeXt3fEQSU6jnYAYHLt+trBACPEsqdkpO/n+GJ5k6I43nqW9txa
         PN4eMxQ1a43FWTm9ILeQQmXFaByW5aToXgFrU4RGFDYiinvoR689dAl2DW8UWgbYkTlD
         uhXw==
X-Forwarded-Encrypted: i=1; AFNElJ9K1SgG+bndpfzU4e9eFYT2uwjZGsEO5F2GCm5+ArqfUUcXTkwnr3YIS1SvVQx89lScce5DRysXwJcF5S+h@lists.linaro.org
X-Gm-Message-State: AOJu0YySIZKeVC/7CsjOe+xUAMzkc1tXgzUh2j7Y4KZ5oqQeRYPYdZ2/
	LUAAPmg+MdQh37at58P41lJC1LfYAzmzQW+IvrdxoWRFpGpcn3KSn5q2
X-Gm-Gg: AeBDietJk3042PzlrENCg9bF0OSUWz8u9IZqGdRmrtKMAwTCrxtHUuZJj2cx3qQd4te
	BtRdCVDUZ1RXjRzsyyWLFk/6Dr+5CGVeyLTyJAm7hMCEeMqt9CzWh6SEPvNVqVF3J1mrp/ecnC5
	UhcFjZgJT6t9hNPs5obb0vt1Gve95iQDDn6qsj5KqrxCCRNbLVsRd0Gwj22/zTDTgSpqs7tuQb0
	06Mo6MLcauW8jvnra75Ut5PcG6fJnMPuPtVPTR7xheObxOD2ePPbBReXl4kH6N8YtJG5WjiEzc8
	pRQPdx2H6msAddqzAa2W00sbpf3x0WSin7V0Zn4UTS2H/Qqc6wQOiAP/evuI0lx4eMe849c7DFu
	66pkEuaqIgC/S1cmHGKEZeJnWBLU68B/OL1CeE5u5ZCXD312k2UKBQ6Lg2DJpeuCvZX/sfgUV/X
	gUXbRWkxc1+9VTp2Iw2MGR8qlOxsJ5SA95UCj4gKntCfbFoXnE06v1iw4dJ0QV6mhGoCt3vCxFk
	sM5Slxadw==
X-Received: by 2002:a17:90b:52cf:b0:35e:577c:c9f with SMTP id 98e67ed59e1d1-361403fb305mr37768192a91.9.1777189958672;
        Sun, 26 Apr 2026 00:52:38 -0700 (PDT)
Received: from li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com ([106.51.164.157])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3613fba1436sm10396034a91.11.2026.04.26.00.52.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Apr 2026 00:52:38 -0700 (PDT)
Date: Sun, 26 Apr 2026 13:22:24 +0530
From: Mukesh Kumar Chaurasiya <mkchauras@gmail.com>
To: Gary Guo <gary@garyguo.net>
Message-ID: <ae3C2gqzoVaovY-h@li-1a3e774c-28e4-11b2-a85c-acc9f2883e29.ibm.com>
References: <20260424054742.45832-1-mkchauras@gmail.com>
 <20260424054742.45832-6-mkchauras@gmail.com>
 <DI1E781QPU8F.1C28PL0089NP6@garyguo.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DI1E781QPU8F.1C28PL0089NP6@garyguo.net>
X-Spamd-Bar: ---
X-MailFrom: mkchauras@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: F4XAZ6UJBMFJKI636STN4BI5XMOOMH4V
X-Message-ID-Hash: F4XAZ6UJBMFJKI636STN4BI5XMOOMH4V
X-Mailman-Approved-At: Wed, 29 Apr 2026 14:25:48 +0000
CC: maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev, Link Mauve <linkmauve@linkmauve.fr>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/F4XAZ6UJBMFJKI636STN4BI5XMOOMH4V/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: D91C2495C56
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[78];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[36];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.797];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	FROM_NEQ_ENVFROM(0.00)[mkchauras@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[linux.ibm.com,ellerman.id.au,gmail.com,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev,linkmauve.fr];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	DKIM_TRACE(0.00)[gmail.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,linkmauve.fr:email]

T24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMDE6NDM6NDNQTSArMDEwMCwgR2FyeSBHdW8gd3JvdGU6
DQo+IE9uIEZyaSBBcHIgMjQsIDIwMjYgYXQgNjo0NyBBTSBCU1QsIE11a2VzaCBLdW1hciBDaGF1
cmFzaXlhIChJQk0pIHdyb3RlOg0KPiA+IEZyb206IExpbmsgTWF1dmUgPGxpbmttYXV2ZUBsaW5r
bWF1dmUuZnI+DQo+ID4NCj4gPiBUaGUgY29yZSBjcmF0ZSBjdXJyZW50bHkgZGVwZW5kcyBvbiB0
aGVzZSB0d28gZnVuY3Rpb25zIGZvciBpNjQvdTY0Lw0KPiA+IGkxMjgvdTEyOC9jb3JlOjp0aW1l
OjpEdXJhdGlvbiBmb3JtYXR0aW5nLCBidXQgd2Ugc2hvdWxkbuKAmXQgdXNlIHRoYXQgaW4NCj4g
PiB0aGUga2VybmVsIHNvIGxldOKAmXMgcGFuaWMgaWYgdGhleSBhcmUgZXZlciBjYWxsZWQuDQo+
ID4NCj4gPiBUaGlzIGRvZXNu4oCZdCB5ZXQgZml4IGRybV9wYW5pY19xci5ycywgd2hpY2ggYWxz
byB1c2VzIF9fdWRpdmRpMyB3aGVuDQo+ID4gQ09ORklHX0NDX09QVElNSVpFX0ZPUl9TSVpFPXks
IGJ1dCBhdCBsZWFzdCBtYWtlcyB0aGUgcmVzdCBvZiB0aGUga2VybmVsDQo+ID4gYnVpbGQgb24g
UFBDMzIuDQo+IA0KPiBDYW4gd2UgYWx3YXlzIGJ1aWxkIGxpYmNvcmUgd2l0aCBgLUMgb3B0LWxl
dmVsPTJgIGV2ZW4gaWYNCj4gYENPTkZJR19DQ19PUFRJTUlaRV9GT1JfU0laRWAgaXMgc3BlY2lm
aWVkPyBJdCBmZWVscyBsaWtlIGEgYmV0dGVyIGZpeCB0aGFuDQo+IHN0dWJiaW5nIHRoaW5ncyBv
dXQuDQo+IA0KPiBCZXN0LA0KPiBHYXJ5DQo+IA0KVGhlIGlzc3VlIGlzIG5vdCBjb21pbmcgZnJv
bSBsaWJjb3JlIGl0c2VsZi4gSXQncyB0aGUgZHJpdmVyIHRoYXQncw0KY2F1c2luZyB0aGlzLg0K
DQpSZWdhcmRzLA0KTXVrZXNoDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMaW5rIE1hdXZlIDxs
aW5rbWF1dmVAbGlua21hdXZlLmZyPg0KPiA+IFNpZ25lZC1vZmYtYnk6IE11a2VzaCBLdW1hciBD
aGF1cmFzaXlhIChJQk0pIDxta2NoYXVyYXNAZ21haWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBydXN0
L01ha2VmaWxlICAgICAgICAgICAgIHwgNCArKysrDQo+ID4gIHJ1c3QvY29tcGlsZXJfYnVpbHRp
bnMucnMgfCA2ICsrKysrKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9ydXN0L01ha2VmaWxlIGIvcnVzdC9NYWtlZmlsZQ0KPiA+
IGluZGV4IDJhNTQyOGE1NTAzZC4uZWUxMWZiYTdhMDNkIDEwMDY0NA0KPiA+IC0tLSBhL3J1c3Qv
TWFrZWZpbGUNCj4gPiArKysgYi9ydXN0L01ha2VmaWxlDQo+ID4gQEAgLTYxNiw2ICs2MTYsMTAg
QEAgaWZuZXEgKCQob3IgJChDT05GSUdfQVJNNjQpLCQoYW5kICQoQ09ORklHX1JJU0NWKSwkKENP
TkZJR182NEJJVCkpKSwpDQo+ID4gIAkJX19hc2hydGkzIFwNCj4gPiAgCQlfX2FzaGx0aTMgX19s
c2hydGkzDQo+ID4gIGVuZGlmDQo+ID4gK2lmZGVmIENPTkZJR19QUEMzMg0KPiA+ICsJcmVkaXJl
Y3QtaW50cmluc2ljcyArPSBcDQo+ID4gKwkJX191ZGl2ZGkzIF9fdW1vZGRpMw0KPiA+ICtlbmRp
Zg0KPiA+ICANCj4gPiAgaWZkZWYgQ09ORklHX01PRFZFUlNJT05TDQo+ID4gIGNtZF9nZW5kd2Fy
ZmtzeW1zID0gJChpZiAkKHNraXBfZ2VuZHdhcmZrc3ltcyksLCBcDQo+ID4gZGlmZiAtLWdpdCBh
L3J1c3QvY29tcGlsZXJfYnVpbHRpbnMucnMgYi9ydXN0L2NvbXBpbGVyX2J1aWx0aW5zLnJzDQo+
ID4gaW5kZXggZGQxNmMxZGM4OTljLi5mYzZiNTQ2MzZkZDUgMTAwNjQ0DQo+ID4gLS0tIGEvcnVz
dC9jb21waWxlcl9idWlsdGlucy5ycw0KPiA+ICsrKyBiL3J1c3QvY29tcGlsZXJfYnVpbHRpbnMu
cnMNCj4gPiBAQCAtOTcsNSArOTcsMTEgQEAgcHViIGV4dGVybiAiQyIgZm4gJGlkZW50KCkgew0K
PiA+ICAgICAgX19hZWFiaV91bGRpdm1vZCwNCj4gPiAgfSk7DQo+ID4gIA0KPiA+ICsjW2NmZyh0
YXJnZXRfYXJjaCA9ICJwb3dlcnBjIildDQo+ID4gK2RlZmluZV9wYW5pY2tpbmdfaW50cmluc2lj
cyEoImB1NjRgIGRpdmlzaW9uL21vZHVsbyBzaG91bGQgbm90IGJlIHVzZWQiLCB7DQo+ID4gKyAg
ICBfX3VkaXZkaTMsDQo+ID4gKyAgICBfX3Vtb2RkaTMsDQo+ID4gK30pOw0KPiA+ICsNCj4gPiAg
Ly8gTk9URTogaWYgeW91IGFyZSBhZGRpbmcgYSBuZXcgaW50cmluc2ljIGhlcmUsIHlvdSBzaG91
bGQgYWxzbyBhZGQgaXQgdG8NCj4gPiAgLy8gYHJlZGlyZWN0LWludHJpbnNpY3NgIGluIGBydXN0
L01ha2VmaWxlYC4NCj4gDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3Rz
LmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2ln
LWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
