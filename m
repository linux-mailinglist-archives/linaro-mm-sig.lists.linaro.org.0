Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kAsBLNxh5mm6vgEAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:52 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 580C0431360
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 19:26:52 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 67DCC3F6F8
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 20 Apr 2026 17:26:51 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	by lists.linaro.org (Postfix) with ESMTPS id 6E48D3F683
	for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 12:58:12 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=resnulli-us.20230601.gappssmtp.com header.s=20230601 header.b=p6yz8xeB;
	spf=none (lists.linaro.org: domain of jiri@resnulli.us has no SPF policy when checking 209.85.128.42) smtp.mailfrom=jiri@resnulli.us;
	dmarc=none
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-483487335c2so41954445e9.2
        for <linaro-mm-sig@lists.linaro.org>; Tue, 24 Mar 2026 05:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=resnulli-us.20230601.gappssmtp.com; s=20230601; t=1774357091; x=1774961891; darn=lists.linaro.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EJ9KhFxElQQZSu9ghWXCoeiyYOoUrbSYY15jZoKWOCg=;
        b=p6yz8xeBCmBvhItdjazGUCsNuDGXJZBbcIoulHfnjNsbNw9zMe1nCZJrCQShQ2OgjC
         Mpdiq5kZxsX6IsE297rmtdBRupCn1rDiBj0x9iFIRchMxKIfmeM2FaMHZqKCtCqeqnVj
         zfu1cFN8SXcTaZ2tt32VkwIsgXgj3w6egleuJzDZNI98uDlAdNORY3tTL5nnpXfZlAUa
         YlWYhXQPG5EjlJfBtelvcuXWwq+gw3PYaRsi/1r+/VZps3QkDJAzdIeoeCypCmLQacJW
         WGeQ5U7QCHIFyjmo0A79T+I/4bNktYCacyQX87O73f53UR9zUi20eKzJKzlFJYtWrXtb
         ze4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774357091; x=1774961891;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EJ9KhFxElQQZSu9ghWXCoeiyYOoUrbSYY15jZoKWOCg=;
        b=WQORoq5Qfr4QugtnOCwHMQr3alKREr3MmplGMTp8cxSl5mmQkNYrFfK8hr314bRzx9
         Jfsl++V4Bfy47tr1UR8pJeZo7TrREr0Jpqm8pmaSHRYZySeyv59uS6J7F0RlMeqyuU82
         dUKUMtY4/C85GkceAo9ezg5rreMwUq2wUOxOMclAFLWyE1alL0BdRu1Uio9LMTvUDgdp
         xZElVZF0NMo5iqapJ3ewfLycDJyM4tAuxtJV+SlfPyfEQPot9vh5Oa9J9oSUQH8u8FkL
         HOfhTEBBBbHPRKAuszlAQqAn2yoKbs60+omv0Yj6/u7U7BEeJ3ZJKgaSOcjo28mAkSL4
         W6Zw==
X-Forwarded-Encrypted: i=1; AJvYcCVh0233duDsSUqfhaNp5wZqTyQAYjpvhIrQnkyLuTf7acW369pj5Z3PagWfzD5Ilv5vysVfEEmwI5XXY9vl@lists.linaro.org
X-Gm-Message-State: AOJu0YxsNgYp01h/O8G8dej8GLrq8nkOwQKepE53qz+xH/4xrPUa5AJd
	Y909Bn9Ep2dynBvYU34ENxIo3KccGnGvIY+9Ru4RXjgW5nqS4XeQZGv6fp0G4C+Ndu8=
X-Gm-Gg: ATEYQzytcwUE8LUZVwoqdH0QJXLNjcScZKZbkPqWYJazVWfSNZeE6KZP4tOOAJ5Mbml
	2GkneUsqBKeQ54ZajCGTf64EEV0KzdE2AXbd20Hj6XHouENFzUHhWxyCkDqY/3w4y72q7mcLD/w
	2ATsCaqJn9ylrGXgSeajR8LXNVp2ixkxby8vL2v5v1NcLTgZZYMDX/eNimtoIac8JGHr5++k0gR
	iFvbX08sanK3tuedWy6u+7Ed8NQOAGIVLDM1eP2Zx5y6NhQDFVXJMlQkB4rj08iCqao6up0bGLv
	enx/DFv8qgmzM+asbVku1EcQiCPKrhIaAk6f6oBdPshkedSHnfCkshLm90wxickZqoCLVHcFu8B
	JhBK18a6xiaOZmmAdP+k8+sEMNThOsDBDz/hfNOu431H6S1GEQbZK+zFpb/rrqSVxrcO8FAkrxu
	mqOSeaXHAGq+z3UukTNUOqqWVKdyXESLWcGXA=
X-Received: by 2002:a05:600c:3b07:b0:47e:e2eb:bc22 with SMTP id 5b1f17b1804b1-486febb59acmr211442975e9.5.1774357091334;
        Tue, 24 Mar 2026 05:58:11 -0700 (PDT)
Received: from FV6GYCPJ69 ([140.209.217.211])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4871109e659sm17440195e9.23.2026.03.24.05.58.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Mar 2026 05:58:10 -0700 (PDT)
Date: Tue, 24 Mar 2026 13:58:07 +0100
From: Jiri Pirko <jiri@resnulli.us>
To: "T.J. Mercier" <tjmercier@google.com>
Message-ID: <vflgbxlfg4pzj3yrnkz7g5dwncnod6uenwpwgs5z2qflbrjucv@coqj6fmjkyye>
References: <20260316125857.617836-1-jiri@resnulli.us>
 <20260316125857.617836-3-jiri@resnulli.us>
 <CABdmKX0Ux2HMTTuOnvZryBBRwCjH0zUe-EMvL9k1VxZtz+BWiA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABdmKX0Ux2HMTTuOnvZryBBRwCjH0zUe-EMvL9k1VxZtz+BWiA@mail.gmail.com>
X-Spamd-Bar: --
X-MailFrom: jiri@resnulli.us
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: 7TU77XOAGFF5ACQTNUVROPQBYYGIDSTV
X-Message-ID-Hash: 7TU77XOAGFF5ACQTNUVROPQBYYGIDSTV
X-Mailman-Approved-At: Mon, 20 Apr 2026 17:25:29 +0000
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v4 2/2] dma-buf: heaps: system: add system_cc_decrypted heap for explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7TU77XOAGFF5ACQTNUVROPQBYYGIDSTV/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.09 / 15.00];
	DATE_IN_PAST(1.00)[652];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[resnulli.us];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_SPAM(0.00)[0.914];
	FROM_NEQ_ENVFROM(0.00)[jiri@resnulli.us,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[resnulli.us:email,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,ti.com:email]
X-Rspamd-Queue-Id: 580C0431360
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

VHVlLCBNYXIgMjQsIDIwMjYgYXQgMTI6MjU6NDZBTSArMDEwMCwgdGptZXJjaWVyQGdvb2dsZS5j
b20gd3JvdGU6DQo+T24gTW9uLCBNYXIgMTYsIDIwMjYgYXQgNTo1OeKAr0FNIEppcmkgUGlya28g
PGppcmlAcmVzbnVsbGkudXM+IHdyb3RlOg0KDQpbLi5dDQoNCg0KPj4gLS0tIGEvZHJpdmVycy9k
bWEtYnVmL2hlYXBzL3N5c3RlbV9oZWFwLmMNCj4+ICsrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFw
cy9zeXN0ZW1faGVhcC5jDQo+PiBAQCAtMTAsMTcgKzEwLDI1IEBADQo+PiAgICogICAgIEFuZHJl
dyBGLiBEYXZpcyA8YWZkQHRpLmNvbT4NCj4+ICAgKi8NCj4+DQo+PiArI2luY2x1ZGUgPGxpbnV4
L2NjX3BsYXRmb3JtLmg+DQo+PiAgI2luY2x1ZGUgPGxpbnV4L2RtYS1idWYuaD4NCj4+ICAjaW5j
bHVkZSA8bGludXgvZG1hLW1hcHBpbmcuaD4NCj4+ICAjaW5jbHVkZSA8bGludXgvZG1hLWhlYXAu
aD4NCj4+ICAjaW5jbHVkZSA8bGludXgvZXJyLmg+DQo+PiAgI2luY2x1ZGUgPGxpbnV4L2hpZ2ht
ZW0uaD4NCj4+ICsjaW5jbHVkZSA8bGludXgvbWVtX2VuY3J5cHQuaD4NCj4+ICAjaW5jbHVkZSA8
bGludXgvbW0uaD4NCj4+ICsjaW5jbHVkZSA8bGludXgvc2V0X21lbW9yeS5oPg0KPj4gICNpbmNs
dWRlIDxsaW51eC9tb2R1bGUuaD4NCj4+ICsjaW5jbHVkZSA8bGludXgvcGd0YWJsZS5oPg0KPj4g
ICNpbmNsdWRlIDxsaW51eC9zY2F0dGVybGlzdC5oPg0KPj4gICNpbmNsdWRlIDxsaW51eC9zbGFi
Lmg+DQo+PiAgI2luY2x1ZGUgPGxpbnV4L3ZtYWxsb2MuaD4NCj4+DQo+PiArc3RydWN0IHN5c3Rl
bV9oZWFwX3ByaXYgew0KPj4gKyAgICAgICBib29sIGRlY3J5cHRlZDsNCj4+ICt9Ow0KPg0KPkhp
IEppcmksDQo+DQo+SSB3b25kZXIgaWYgaXQnZCBiZXR0ZXIgdG8gY2FsbCB0aGlzIGNjX2RlY3J5
cHRlZCAob3IgSSBndWVzcw0KPmNjX3NoYXJlZCBiYXNlZCBvbiBSb2JpbidzIGNvbW1lbnQgaW4g
dGhlIHByZXZpb3VzIHBhdGNoKSBsaWtlIHRoZSBETUENCj5hdHRyPyBUaGVyZSdzIGEgc2VwYXJh
dGUgZWZmb3J0IGZvciAicmVzdHJpY3RlZCIgaGVhcHMgd2l0aCBURUUgZm9yDQo+KGVuY3J5cHRl
ZCkgdmlkZW8gcGxheWJhY2ssIHdoaWNoIGRvZXNuJ3QgaW52b2x2ZSBWTXMgb3IgUkRNQS4gSSB0
aGluaw0KPnRoZSBjY18gcHJlZml4IG1pZ2h0IGhlbHAgYXZvaWQgYW55IGNvbmZ1c2lvbiBiZXR3
ZWVuIHRoZSB1c2VjYXNlIGhlcmUNCj5hbmQgcmVzdHJpY3RlZCBoZWFwcy4NCg0KU3VyZS4gSSds
bCByZW5hbWUgdGhpcy4NCg0KVGhhbmtzIQ0KDQpbLi5dDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
