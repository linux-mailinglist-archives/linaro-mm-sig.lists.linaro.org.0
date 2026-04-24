Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNv7FBGI72mwCQEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:17 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 038E0475D5E
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 18:00:16 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 15938406EC
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 27 Apr 2026 16:00:16 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	by lists.linaro.org (Postfix) with ESMTPS id 13A443F796
	for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 11:09:53 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=GTN+ORDU;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (lists.linaro.org: domain of david.laight.linux@gmail.com designates 209.85.221.45 as permitted sender) smtp.mailfrom=david.laight.linux@gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-43d0deb7ad5so6354532f8f.2
        for <linaro-mm-sig@lists.linaro.org>; Fri, 24 Apr 2026 04:09:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777028992; x=1777633792; darn=lists.linaro.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FDKNX6OzlxA7jl/VimGCsLSHmvQn0nEFxj0ZFcUDDEc=;
        b=GTN+ORDUnY8nFMwD1NNbo3z4v2oaOF+2yDZmEpwIKZ12KYPmhtgKJY2eXDnKsVp0Um
         VeCPROC0Kv9pn0lpE/MQERHqSSE3WEXMDkvZWVXdW9Y1mP0P7tb++FR8GVp+sqy9aT5A
         GhM/pEwe+Ky/xyfFtYnDNmtNe+M/0cLbF0azqKOh2VHHn+Faa4zxBfVZDSaEQzS5ifpW
         v9evqYfMEafdog3hpk9DvJHWRUTpLHnX8wvWEUPqgUv0DHrCX/VX3uuNshJonTrSBg3S
         mphUZ9g4A/t4/w6x0zDM+hMeOsngL4a/Wc2+tK4HQdBT+uf62eE4hhXB+pb9yW1c1+YH
         3DcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777028992; x=1777633792;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FDKNX6OzlxA7jl/VimGCsLSHmvQn0nEFxj0ZFcUDDEc=;
        b=PaWa1JwSEv1/wC3rxrX93r7v6ePliVMJhnyvbgYUspJvm0/y4URbh2xOCnOBS1TLVQ
         b4RED8Ll/Wv/J+7EkHnfgtZiyUbdzUfC/kS9aBJKktXT5A2dqRnagTGxce62328BaWin
         1ZvmpnZwoCEHV031/ejgFC+QB2hf0O5LEHXF5TgJCIxtaXuWedMk4hXJEAAKToO5XPov
         I7VQHAZMrH33KX99NzBjH2nZgkYa7r/hbRcxuC2LE6dgAjBvfjLjpKCBNp34kZi1vF8I
         VQEGduBGsbso063n+aBZXn+Qf5Z7jRumPQaD9Rlb7c0saknuxo7lXtlFWmViRpeXd9CL
         lkkQ==
X-Forwarded-Encrypted: i=1; AFNElJ947tFepbcLC1jkcyYBnpTJbRZ6eEpwV4vv97X06/FtxPEHDx+I2OA2CjgsBMGSBYlfNe7uIeP9pEsKYZTC@lists.linaro.org
X-Gm-Message-State: AOJu0YzTNCc9Qu/pJsctH5pU4HWEWPoEkcIp42NNbPgn1xX6mnW44ooM
	AwaT2x+gDRaAsCwUZ/hVSnyIvgc7BN6+uTFue/uAlQ/Z05kBiH+1xOkQ
X-Gm-Gg: AeBDieuI8RWcwor03YDU4+UtLMJUCdhqxH9WB50qQmke/tDbv7bzRYbjnuHEz+UkKz5
	RDgDAMjZlDPIPapFUsOSSqP7bu11MwN4wPve2qBuc82/U9wUk79LTru6fnskQAfqfnFMRf8K5l1
	6OvI6tKxO8pvPiaQSv6msWjC7z47fgP5gy80iisk0KEU/VPMO7hyV3DUfSZuZzvydcCsIzAX9yJ
	qqmBYpufxlnJwWFpuYH6RMSfk74QydovSZ/Zr9h3497Q73c9Y9m6vV1AmyTvgAAe5VoMCdtgUpv
	Li6mP0GWRcXgTe34IJiHJKFbModHcPzfv7f/KO4SqqiCvfCTO4HYlZPemcJeVdD47GEVaNbnThz
	D5rWjNZ6A79wWiFIhYUhUDNfvtk444T1eZsXrM59Ppr8VqW9H9lqM/JzeXkGjIy3V60KfmjdEky
	5fwRvadfeNwjp25J0b6HwrMwXP+2VRjg49U/MfjQa7dHlfYzBjzisSvmdjzPTrmTKrBl0HTJp9D
	bTriTw986YHBw==
X-Received: by 2002:a05:6000:1863:b0:43e:a69b:d818 with SMTP id ffacd0b85a97d-43fe3e0ab5dmr49306229f8f.38.1777028991633;
        Fri, 24 Apr 2026 04:09:51 -0700 (PDT)
Received: from pumpkin (82-69-66-36.dsl.in-addr.zen.co.uk. [82.69.66.36])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43fe4cc0f31sm59174867f8f.12.2026.04.24.04.09.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 04:09:51 -0700 (PDT)
Date: Fri, 24 Apr 2026 12:09:43 +0100
From: David Laight <david.laight.linux@gmail.com>
To: Link Mauve <linkmauve@linkmauve.fr>
Message-ID: <20260424120943.4a65dd69@pumpkin>
In-Reply-To: <aes7L3M1d_LvvGKa@luna>
References: <20260424054742.45832-1-mkchauras@gmail.com>
	<20260424054742.45832-6-mkchauras@gmail.com>
	<20260424101425.6bde0e17@pumpkin>
	<aes7L3M1d_LvvGKa@luna>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; arm-unknown-linux-gnueabihf)
MIME-Version: 1.0
X-Spamd-Bar: ---
X-MailFrom: david.laight.linux@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: YZBGPJZ63VNQT2T2E5BVC5VXNLNTZ3MY
X-Message-ID-Hash: YZBGPJZ63VNQT2T2E5BVC5VXNLNTZ3MY
X-Mailman-Approved-At: Mon, 27 Apr 2026 15:59:54 +0000
CC: "Mukesh Kumar Chaurasiya (IBM)" <mkchauras@gmail.com>, maddy@linux.ibm.com, mpe@ellerman.id.au, npiggin@gmail.com, chleroy@kernel.org, peterz@infradead.org, jpoimboe@kernel.org, jbaron@akamai.com, aliceryhl@google.com, rostedt@goodmis.org, ardb@kernel.org, sumit.semwal@linaro.org, christian.koenig@amd.com, ojeda@kernel.org, boqun@kernel.org, gary@garyguo.net, bjorn3_gh@protonmail.com, lossin@kernel.org, a.hindborg@kernel.org, tmgross@umich.edu, dakr@kernel.org, nathan@kernel.org, nick.desaulniers+lkml@gmail.com, morbo@google.com, justinstitt@google.com, tamird@kernel.org, arnd@arndb.de, nsc@kernel.org, simona.vetter@ffwll.ch, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, rust-for-linux@vger.kernel.org, llvm@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH V13 5/7] rust: Make __udivdi3() and __umoddi3() panic
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/YZBGPJZ63VNQT2T2E5BVC5VXNLNTZ3MY/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 038E0475D5E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	DATE_IN_PAST(1.00)[76];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[37];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[gmail.com,linux.ibm.com,ellerman.id.au,kernel.org,infradead.org,akamai.com,google.com,goodmis.org,linaro.org,amd.com,garyguo.net,protonmail.com,umich.edu,arndb.de,ffwll.ch,lists.ozlabs.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,lists.linux.dev];
	DKIM_TRACE(0.00)[gmail.com:-];
	NEURAL_HAM(-0.00)[-0.351];
	FROM_NEQ_ENVFROM(0.00)[davidlaightlinux@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,lkml];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linkmauve.fr:email,linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns]

T24gRnJpLCAyNCBBcHIgMjAyNiAxMTo0MzoxMSArMDIwMA0KTGluayBNYXV2ZSA8bGlua21hdXZl
QGxpbmttYXV2ZS5mcj4gd3JvdGU6DQoNCj4gT24gRnJpLCBBcHIgMjQsIDIwMjYgYXQgMTA6MTQ6
MjVBTSArMDEwMCwgRGF2aWQgTGFpZ2h0IHdyb3RlOg0KPiA+IE9uIEZyaSwgMjQgQXByIDIwMjYg
MTE6MTc6NDAgKzA1MzANCj4gPiAiTXVrZXNoIEt1bWFyIENoYXVyYXNpeWEgKElCTSkiIDxta2No
YXVyYXNAZ21haWwuY29tPiB3cm90ZToNCj4gPiAgIA0KPiA+ID4gRnJvbTogTGluayBNYXV2ZSA8
bGlua21hdXZlQGxpbmttYXV2ZS5mcj4NCj4gPiA+IA0KPiA+ID4gVGhlIGNvcmUgY3JhdGUgY3Vy
cmVudGx5IGRlcGVuZHMgb24gdGhlc2UgdHdvIGZ1bmN0aW9ucyBmb3IgaTY0L3U2NC8NCj4gPiA+
IGkxMjgvdTEyOC9jb3JlOjp0aW1lOjpEdXJhdGlvbiBmb3JtYXR0aW5nLCBidXQgd2Ugc2hvdWxk
buKAmXQgdXNlIHRoYXQgaW4NCj4gPiA+IHRoZSBrZXJuZWwgc28gbGV04oCZcyBwYW5pYyBpZiB0
aGV5IGFyZSBldmVyIGNhbGxlZC4gIA0KPiA+IA0KPiA+IFVnZy4NCj4gPiBTdXJlbHkgeW91IGNh
biBtYWtlIGl0IGEgbGluay10aW1lIGZhaWx1cmU/DQo+ID4gT3IgY2hhbmdlIHRoZSB1bmRlcmx5
aW5nIGNvZGUgdG8gYXZvaWQgdGhlIGRpdmlkZS4gIA0KPiANCj4gVGhpcyBpcyBjdXJyZW50bHkg
YSBsaW5rLXRpbWUgZmFpbHVyZSwgd2hpY2ggbWVhbnMgaWYgYW55IG9mIHRoZSBjb3JlDQo+IGNy
YXRlIG9yIGRybV9wYW5pY19xciBhcmUgbGlua2VkIGluLCB0aGUga2VybmVsIHdpbGwgZmFpbCB0
byBsaW5rLg0KPiANCj4gQW5kIHNpbmNlIHdlIHJlbHkgb24gY29yZSwgdGhhdCBtZWFucyBubyBr
ZXJuZWwgY2FuIGJlIGJ1aWx0IG9uIFBvd2VyUEMNCj4gd2l0aG91dCB0aGlzIHBhdGNoLg0KPiAN
Cj4gQSBwb3NzaWJsZSBzb2x1dGlvbiB3b3VsZCBiZSB0byBjaGFuZ2UgdGhlIGNvcmUgY3JhdGUg
dG8gbm90IGRpdmlkZQ0KPiB1NjRzLCBidXQgdGhlIGxhc3QgdGltZSBJIHRyaWVkIHRvIGRvIHRo
YXQgSSBjb3VsZG7igJl0IHF1aXRlIGZpZ3VyZSBvdXQNCj4gaG93IHRvIGRvIGZvcm1hdHRpbmcg
d2l0aG91dCBpdCwgbWF5YmUgSSB3aWxsIGp1c3Qgb3BlbiBhbiBpc3N1ZSBhZ2FpbnN0DQo+IFJ1
c3QuDQoNCklmIHRoZSBwcm9ibGVtYXRpYyBjb2RlIGlzIChlZmZlY3RpdmVseSkgcHJpbnRmKCIl
bGxkIiwgdmFsKSB0aGVyZSBhcmUgbXVjaA0KYmV0dGVyIHdheXMgdG8gZ2VuZXJhdGUgdGhlIGRp
Z2l0IHN0cmluZyB0aGFuIHJlcGVhdGVkIDY0Yml0IGRpdmlkZXMuDQpPbiBwYXJ0aWN1bGFyIHlv
dSBjYW4gdXNlICdtdWx0aXBseSBieSByZWNpcHJvY2FsJyBpbnN0ZWFkLg0KRm9yIGV4YW1wbGUg
c2VlIHRoZSBsYXRlc3QgKEkgdGhpbmsgaXQnbGwgYmUgaW4gNy4xLXJjKSB2ZXJzaW9uIG9mDQp0
b29scy9pbmNsdWRlL25vbGliYy9zdGRsaWIuaA0KDQoJRGF2aWQNCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0
IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFu
IGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
