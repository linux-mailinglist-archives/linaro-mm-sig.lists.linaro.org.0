Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IE7PHOTiBmrVogIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:56 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 0654C54C0F9
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id DD083404E3
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 09:02:32 +0000 (UTC)
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com [74.125.224.53])
	by lists.linaro.org (Postfix) with ESMTPS id 2EBBA3F7F5
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 18:24:07 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=o3PjvJ2O;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 74.125.224.53 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-65c21049dafso9208864d50.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 11:24:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778783047; cv=none;
        d=google.com; s=arc-20240605;
        b=MPHCmOoQXCDf3qMO1NewPs1iFjue/HsEvFJsz+fmypzHAtVO9iF1HHNiJWmrCcO0dS
         rhsv00sRnuqLTrAoNg7FJaYniXKSG6kmqtSoH31azs63vxHZBnSsxYWp6RVHevp+lw/C
         DhAY4wwbHfHk9RfT00MNUNRHkLUTrf0doiqYPITloBVgcIP81FRekmujVO4JS6FPBqdq
         TgsghoRxIeXb7a7qCwS2HaS3BZzrcCfNTjH6+IXQLxm/OPeI08fHn3focRqOm8p06bH2
         +BKx4JB+cSuOwU6WNXlPR3Jhu64QGw0cAhmhlVYCw4Uf7mS2dopkE1XRVdorbTABGOwj
         j3oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PBR7fsLisJgUG1XY+0ZPkiM5XuKRe9INIYxO9y9PY40=;
        fh=4pbx5iuvQKBiB/bYC2gQTbUEE3+f6/ZmlGTY8lZiUek=;
        b=k+xlT+INZcUI9X9mieOozTYbSkF5k4Du4oQLJ72ou44oma3jC8rFtffbupfjTLDV/G
         KSs+T8/3AYCszzN65HoNqRtSzKxuiEJc/xx9e6upL3eaEZuZwQpi+AfCxVZirkZ3ahBZ
         VxWrKQbG7WTWpOVzHqlsv2DCLNlstBUFXFMQcu9gDerFU2K989wUbhFzxPsNXTrWsbDv
         Xn7nffyyf5DR6zq9hUBc2GOTVDJdZns9Hweeh4pPYwErCDQt0nvGfBR3+XsW9X1VqY/B
         8vuCwbwIMonarYDytvwUcxGDYkYctHuuGsZ0tM4/NH6qnswXCfyHXcdJG0+hPkUKgCMZ
         361w==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778783047; x=1779387847; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PBR7fsLisJgUG1XY+0ZPkiM5XuKRe9INIYxO9y9PY40=;
        b=o3PjvJ2O31x+Aym6ZJt/qY5nUxC4KM0/jTFUy30tFyYaw2ZGAp0RWhSJLGsf65VYgk
         pT+Jv8z6yW512HqzSIpqLCOrOnYXh6INPhfswMiaeJxQmUk6gOgJ26YbE0jgMROMlBn9
         lUGVFEARh0n7to/L5coEfQAjBwt65Q49014M65R3jj+lQ7EjkuHd6AdOe1wnlkg5dFpx
         e5ugITiRiOOwnDMlbrcPj33fdkBA71OIDNCNtD4K4kA3VOhOPLXOC9JoFoSgFvruwbQ/
         TN1KNiwm7pqVs+Wsc5JsCqD9fisRwbgKXco1jQXr6le1IZcZp35hA2NV7brAXXxs4uS9
         alcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778783047; x=1779387847;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PBR7fsLisJgUG1XY+0ZPkiM5XuKRe9INIYxO9y9PY40=;
        b=fySfFuuI78iSWuMVfEbLTIr97nsXTj/uao2A+YRjErAEM87cQbC2nVqgD2Dx29aNzP
         R3mmPZ938pclD+e/0NoNY5XKe4TwM78jHuXef1BJk+MLGYf+Q05ZaRJUMvUvb/rLiqEN
         dJqlnX3PXM/NGpTMB+1Iu5iszkqN2QUv1Vx7QHSxh25KBc7bG5sRMAthkqESaE4TgaKO
         e5RWPvNm2aZT5FWyzafGHtUFuyq+qaAaWfDBdF2pX7rfm/YTG0Q4yN7q+rGf8+LM6cCz
         M8S6TFE9oborzRdlOFeleckfOCbRFcgadW/4R9p7g7385b0fmuwrnqt1eablfhKYC2qt
         Vgaw==
X-Forwarded-Encrypted: i=1; AFNElJ/32nW38H7xdEBVCPxf15lxpAhR+tllhcZy+uFyQrtfSRujhiYQZMPYpwvG/7pCbyHjQ5e9b8o+RXqb6wDq@lists.linaro.org
X-Gm-Message-State: AOJu0YzRfoo05S+P0eLAhbfFM4dfVWWQ97VEDq3Ci7z3CEZQ8QL2XkVh
	aPr31t3iOEbyokmemjpzKRC9uoX1AEfy53LrtH8DNueOEkFcexqd6xdshKjO21kHhzt2HwEhFE7
	+EvWiFhWTC/HSkAPe8ThmtFBZ+uaM7ME=
X-Gm-Gg: Acq92OF0BbmnJhIfSgtC8vNH2yhPckO38lXfGgTvkIoHjcNWugkM9oaNyqRfuVgkKNe
	XKWhwamPnM5ODP6rDBqEw/s3Tc4GMAuE0X1lLW1TvGnyTGj+/5f9grtZRW88cgEnKeecuf/Ld+D
	hbOD9dpvCWJgq8jm5A/IOjU5WS1coPDf9ju47/IVCDmAi5+BVvQ8KWj/yElWvjjFsQpKmaLUkuo
	W8pmcP5nLgiI6NrUSpxFHTtlJA8yIu01wvOqaiytuFy+uf2o8WC8i3yJVxT3c2aJSWvxfU+/mWw
	3Ph4bTHgoc1fy3YeisFyom/niywY+Bdcf1gE5XTH/Ahhzzmjf+bxCsuE9PAT2UqEBZCgbvyuoXr
	0P7IkQEad
X-Received: by 2002:a05:690c:112:b0:7bd:7e01:8d89 with SMTP id
 00721157ae682-7c95b824705mr4431567b3.24.1778783046617; Thu, 14 May 2026
 11:24:06 -0700 (PDT)
MIME-Version: 1.0
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com> <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-2-f2d8c15a97ce@collabora.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Thu, 14 May 2026 11:23:55 -0700
X-Gm-Features: AVHnY4IvIwW933CTc4ZbukSnI54Tqb3-T6psAY7x90fXnGSxacMBnoW5RGKAorw
Message-ID: <CAPaKu7QmB8s0J60O2Bpqn9P9Xi0mKH_8Xog_843AHa8wfEBNjA@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Spamd-Bar: /
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: UBGDTHJCIVW7TW37KHGG3GS3NKJ2MJYW
X-Message-ID-Hash: UBGDTHJCIVW7TW37KHGG3GS3NKJ2MJYW
X-Mailman-Approved-At: Fri, 15 May 2026 09:01:34 +0000
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/6] dma-resv: Define guards for context-less dma_resv locks
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/UBGDTHJCIVW7TW37KHGG3GS3NKJ2MJYW/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 0654C54C0F9
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-0.099];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgMTA6MDnigK9BTSBCb3JpcyBCcmV6aWxsb24NCjxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4gd3JvdGU6DQo+DQo+IFdoZW4gdXNlZCB3aXRob3V0
IGEgY29udGV4dCwgZG1hX3Jlc3YgYXJlIG5vIGRpZmZlcmVudCBmcm9tIHJlZ3VsYXINCj4gbG9j
a3MuIERlZmluZSBndWFyZHMgc28gd2UgY2FuIHVzZSB0aGUgZ3VhcmQtc3ludGFjdGljIHN1Z2Fy
cyBmb3INCj4gZXhwbGljaXQvaW1wbGljaXQgc2NvcGVkIGxvY2tzLg0KPg0KPiBTaWduZWQtb2Zm
LWJ5OiBCb3JpcyBCcmV6aWxsb24gPGJvcmlzLmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPg0KUmV2
aWV3ZWQtYnk6IENoaWEtSSBXdSA8b2x2YWZmZUBnbWFpbC5jb20+DQo+IC0tLQ0KPiAgaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oIHwgNSArKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51eC9kbWEtcmVzdi5oIGIvaW5j
bHVkZS9saW51eC9kbWEtcmVzdi5oDQo+IGluZGV4IGM1YWI2ZmQ5ZWJlOC4uZTU1OWIxODExY2Ez
IDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1yZXN2LmgNCj4gKysrIGIvaW5jbHVk
ZS9saW51eC9kbWEtcmVzdi5oDQo+IEBAIC00MCw2ICs0MCw3IEBADQo+ICAjZGVmaW5lIF9MSU5V
WF9SRVNFUlZBVElPTl9IDQo+DQo+ICAjaW5jbHVkZSA8bGludXgvd3dfbXV0ZXguaD4NCj4gKyNp
bmNsdWRlIDxsaW51eC9jbGVhbnVwLmg+DQo+ICAjaW5jbHVkZSA8bGludXgvZG1hLWZlbmNlLmg+
DQo+ICAjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3NlcWxvY2su
aD4NCj4gQEAgLTQ4NCw0ICs0ODUsOCBAQCB2b2lkIGRtYV9yZXN2X3NldF9kZWFkbGluZShzdHJ1
Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91c2FnZSB1c2FnZSwNCj4gIGJvb2wgZG1h
X3Jlc3ZfdGVzdF9zaWduYWxlZChzdHJ1Y3QgZG1hX3Jlc3YgKm9iaiwgZW51bSBkbWFfcmVzdl91
c2FnZSB1c2FnZSk7DQo+ICB2b2lkIGRtYV9yZXN2X2Rlc2NyaWJlKHN0cnVjdCBkbWFfcmVzdiAq
b2JqLCBzdHJ1Y3Qgc2VxX2ZpbGUgKnNlcSk7DQo+DQo+ICtERUZJTkVfR1VBUkQoZG1hX3Jlc3Ys
IHN0cnVjdCBkbWFfcmVzdiAqLCBkbWFfcmVzdl9sb2NrKF9ULCBOVUxMKSwgZG1hX3Jlc3ZfdW5s
b2NrKF9UKSk7DQo+ICtERUZJTkVfR1VBUkRfQ09ORChkbWFfcmVzdiwgX2ludHIsIGRtYV9yZXN2
X2xvY2tfaW50ZXJydXB0aWJsZShfVCwgTlVMTCksICFfUkVUKTsNCj4gK0RFRklORV9HVUFSRF9D
T05EKGRtYV9yZXN2LCBfdHJ5LCBkbWFfcmVzdl90cnlsb2NrKF9UKSk7DQo+ICsNCj4gICNlbmRp
ZiAvKiBfTElOVVhfUkVTRVJWQVRJT05fSCAqLw0KPg0KPiAtLQ0KPiAyLjU0LjANCj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
