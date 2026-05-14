Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BOwI+XiBmoBowIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:57 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 53C4354C11D
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 11:09:57 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 57BCD402B7
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 15 May 2026 09:03:16 +0000 (UTC)
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com [74.125.224.45])
	by lists.linaro.org (Postfix) with ESMTPS id 25BB53F6BD
	for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 18:40:06 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="gdQG9bN/";
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of olvaffe@gmail.com designates 74.125.224.45 as permitted sender) smtp.mailfrom=olvaffe@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-yx1-f45.google.com with SMTP id 956f58d0204a3-651bf695701so10690211d50.2
        for <linaro-mm-sig@lists.linaro.org>; Thu, 14 May 2026 11:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778784005; cv=none;
        d=google.com; s=arc-20240605;
        b=jq255ql4hU4NX9rIPFxOZCRBHldJvNU3O4jndwMesILgnHkcq6Qakc1I7dvIYmn74a
         F2049znqMf0qBUKerqNpIuIZafwFslnYdv5Vu5RIZjY/xW1+mM3ZdeToa73zcZhLFN8j
         +WSayKrxfBknWf9ZY6kFg04yPSvfu+6/rhcgv6I6EgNIe4lzX09auNTmTXlgiRh9rRXV
         WlBQ2G0anX7bq4JMhjE+iNDZnX9pb51tgK1jWPDRqpgSgLNZXqyGoVNU9zipmPEQcGh3
         a8k+HbshIiSO3esTWOagAuCb/IjYSs/5n/53Ij6m0z2qKidn+6+13SuIAj1SqS08WNsu
         yh6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FpoaXEJLcSJc84yZ2vARDAmkfQwqX2rRItHaBW+mwvI=;
        fh=2hWGd6LATBBPKHIZIkl12KpuK0vX1p9XIGIJiV2pxm0=;
        b=MsDcGawrrvumL6vnao1qeTNphH1PCjVJ2MXuE3hZfYdC/FUfSWVe7CfExi8LYGXYWI
         v2U1ukp5kl2wmgeUgK1397nTkOKlQtQke9IPeXOOIUToOAEjIOk5KSv2Mqx757VdOEHt
         9+Gs1Efz70rdWvQyHfBpVdC3g7LXFVelocomMfS/FVjWfTLB/9jFRE5xhYjyRSGFDVl9
         KSkwPXCoDloNSfiAoFZtZgeO+MPDHgyqFYg7VsUbCFRBz4uzQLyyjug1dsOXc/+P/hfk
         SL+/aO1L14yL2dn48JLkAVbleMqO9FiZObqzb5YDe7gMns0CMplWhKhHmpj4+WjJIUeW
         U5Hw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1778784005; x=1779388805; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FpoaXEJLcSJc84yZ2vARDAmkfQwqX2rRItHaBW+mwvI=;
        b=gdQG9bN/yJPissXcPK7i2liVKm5MGIewYF+orjwuI9VhMpKV5A16cub/EsGgGOgX3f
         eDplfl7eT5AdwPRGZCHpgFgqO6dBBagUespxdwUgyrSwATWHkCafBQkquTmHGWFhPJQK
         rd4S600zFRLyi1omt2F3/D8CEYBracn4FuMVmzqmOfgxa2zUI+v/6XfEWCllx+vM/O5P
         jLvSZ3CO3Lv1bhtCaPQvcbfqok5yE0aBE/sMtrpi4Vd/PZ7xHRquTyBFeGubOMsmbosx
         2e8PcxE9XrvM8QGU6jbKI+T68+iWFRD/I7lPEt8AR+iOMPeYReFWL6C3Lu0FA6kdQnYk
         PPsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778784005; x=1779388805;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FpoaXEJLcSJc84yZ2vARDAmkfQwqX2rRItHaBW+mwvI=;
        b=hz4jO1V70C4rYb0YCVU3iDx918BK8jwkRnwgRPXorfACSSz6NfTjQnvG4mTUP46WJW
         q9ICRyHA/IRw8z2fmIb1heSrTbOwKlQ26sWtzXvmFN0hJQSjNWXO2NGUGDEn2p8ill5b
         DIg/bR1AEgtnjwCLqi91qSBJtK5badGRHrR6rXM1ThLGjbvHvRvhLrviBWgM+5nB/fNE
         2gLQHL1u//6tskGay8q+8R+Vlw+qUm0Kjd1FQW3b68t/Ixj1pcUGqNoJGQDNA7LIhBOO
         N/lo6FpDrhQ+h+BorwACi8NKLaZ1nGjn5y7euruapYSSYHq0bc2+EiEYJDpdOuHwMsy9
         RbeA==
X-Forwarded-Encrypted: i=1; AFNElJ9oC996KBNnAjEXa6MiMnFBr9TQjkZ3BvhfNCvYDjxP6mQAt+ShZAN1Rt8SXkogM8cSWHMR7CTvSjcoxS/Z@lists.linaro.org
X-Gm-Message-State: AOJu0YxZa99zY6qJy+z9DA8dSiPOBi/9mxHm0GRtfgbg98fwYqpmiggA
	DQyXWU/A+PN09VHYy2nWFbN1QC8l+BZTgl91siAnCam0s7pXduBHD+UDMfVtFVSnewkSoRzk+WH
	rjPWGyKskze16027rFPL3jp6DHCVBrOI=
X-Gm-Gg: Acq92OFvGTtcYxC4E3687MiWE2Sd654Ef5HyYLfzjza+m11szJlv742L8y3gaIi5Y+2
	90AAYxk5MTgXTX6twkbpvJwkNJuyqQSwEC0S2crSZY9Wt1P3fEhrob+jtITcVvypzFuxDiW5Sut
	nn+YeXQkUq0NCvdHVydWjtl9EzHqWscZDgF34HWC/8zdkQQ3osZoj3ySfPzZKSuR3YttHSilN+I
	EfUpqqKfD/NuUSXNBfCYEK+pL7dJHGvsW2jZHvzZlERuerSfhLcH7DxmnOMl4fxwbnLrmwkODWz
	nIUqgZ8v/hnFX55Jqt7nN+2jzmbG7bmGp0lBecljoS2StTQz2l2UDEKFgpyP2Kod7D6Z4K4EQsQ
	8VylKA4C2
X-Received: by 2002:a05:690c:c504:b0:7b8:926e:3ef4 with SMTP id
 00721157ae682-7c9599a3c98mr6741257b3.17.1778784005522; Thu, 14 May 2026
 11:40:05 -0700 (PDT)
MIME-Version: 1.0
References: <20260513-panthor-guard-refactor-v1-0-f2d8c15a97ce@collabora.com> <20260513-panthor-guard-refactor-v1-6-f2d8c15a97ce@collabora.com>
In-Reply-To: <20260513-panthor-guard-refactor-v1-6-f2d8c15a97ce@collabora.com>
From: Chia-I Wu <olvaffe@gmail.com>
Date: Thu, 14 May 2026 11:39:54 -0700
X-Gm-Features: AVHnY4K0-CnWJWVhrI1GvcjAaDfSNRBL6O_alT4g9naFYZIyIVIX0tJzKPjAXlk
Message-ID: <CAPaKu7Sttfu4xapUwnk6WzskHVEqNuc8NOfpZch-Yp-OGd6bww@mail.gmail.com>
To: Boris Brezillon <boris.brezillon@collabora.com>
X-Spamd-Bar: /
X-MailFrom: olvaffe@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: BPVA3NKF3YUD7N2L4SW2R3S75I5HHQPH
X-Message-ID-Hash: BPVA3NKF3YUD7N2L4SW2R3S75I5HHQPH
X-Mailman-Approved-At: Fri, 15 May 2026 09:02:17 +0000
CC: Steven Price <steven.price@arm.com>, Liviu Dudau <liviu.dudau@arm.com>, Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 6/6] drm/panthor: Add a new guard for our custom resume_and_get() PM helper
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/BPVA3NKF3YUD7N2L4SW2R3S75I5HHQPH/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Queue-Id: 53C4354C11D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[olvaffe@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FREEMAIL_CC(0.00)[arm.com,linaro.org,amd.com,linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,lists.linaro.org];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	NEURAL_SPAM(0.00)[0.075];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

T24gV2VkLCBNYXkgMTMsIDIwMjYgYXQgOTo1OeKAr0FNIEJvcmlzIEJyZXppbGxvbg0KPGJvcmlz
LmJyZXppbGxvbkBjb2xsYWJvcmEuY29tPiB3cm90ZToNCj4NCj4gT3ZlcmxvYWQgdGhlIGFscmVh
ZHkgZXhpc3RpbmcgcG1fcnVudGltZV9hY3RpdmVfYXV0b190cnlfZW5hYmxlZCBndWFyZA0KPiB3
aXRoIG91ciBjdXN0b20gZ3VhcmQgdGhhdCBmb3JjZSB0aGUgc3RhdGUgdG8gc3VzcGVuZWQgKGFu
ZCB0aHVzIGNsZWFyDQo+IHRoZSBydW50aW1lX2Vycm9yKSBpbiBjYXNlIHRoZSByZXN1bWUgZmFp
bHMuDQo+DQo+IE9uY2UgZG9uZSwgd2UgY2FuIHJlcGxhY2UgdGhlIGV4aXN0aW5nIHBsYWNlcyB3
aGVyZSBtYW51YWwNCj4gcGFudGhvcl9kZXZpY2VfcmVzdW1lX2FuZF9nZXQoKStwbV9ydW50aW1l
X3B1dF9hdXRvc3VzcGVuZCgpIHdlcmUNCj4gZG9uZSBieSBndWFyZHMuDQpUaGlzIHBhdGNoIGFs
c28gcmVwbGFjZXMgYSBwbV9ydW50aW1lX3B1dCBjYWxsIGJ5DQpwbV9ydW50aW1lX3B1dF9hdXRv
c3VzcGVuZCwgYW5kIHJlbW92ZXMgcmVkdW5kYW50DQpwbV9ydW50aW1lX21hcmtfbGFzdF9idXN5
IGNhbGxzLiBDYW4gd2UgYWRkIGFub3RoZXIgcGF0Y2ggZm9yIHRoZQ0KZnVuY3Rpb25hbGl0eSBj
aGFuZ2UgZmlyc3Q/DQoNCj4NCj4gU2lnbmVkLW9mZi1ieTogQm9yaXMgQnJlemlsbG9uIDxib3Jp
cy5icmV6aWxsb25AY29sbGFib3JhLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vcGFu
dGhvci9wYW50aG9yX2RldmljZS5oIHwgMTAgKysrKysrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJt
L3BhbnRob3IvcGFudGhvcl9kcnYuYyAgICB8ICA0ICsrLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9w
YW50aG9yL3BhbnRob3Jfc2NoZWQuYyAgfCAxMSArKysrLS0tLS0tLQ0KPiAgMyBmaWxlcyBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSkNCj4NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZGV2aWNlLmggYi9kcml2ZXJzL2dwdS9k
cm0vcGFudGhvci9wYW50aG9yX2RldmljZS5oDQo+IGluZGV4IDFhYWYwNmRmODc1Yi4uNTE1Mjdk
MmUyZjc3IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2Rl
dmljZS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9wYW50aG9yL3BhbnRob3JfZGV2aWNlLmgN
Cj4gQEAgLTQwNyw5ICs0MDcsMTAgQEAgaW50IHBhbnRob3JfZGV2aWNlX21tYXBfaW8oc3RydWN0
IHBhbnRob3JfZGV2aWNlICpwdGRldiwNCj4gIGludCBwYW50aG9yX2RldmljZV9yZXN1bWUoc3Ry
dWN0IGRldmljZSAqZGV2KTsNCj4gIGludCBwYW50aG9yX2RldmljZV9zdXNwZW5kKHN0cnVjdCBk
ZXZpY2UgKmRldik7DQo+DQo+IC1zdGF0aWMgaW5saW5lIGludCBwYW50aG9yX2RldmljZV9yZXN1
bWVfYW5kX2dldChzdHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2KQ0KPiArc3RhdGljIGlubGlu
ZSBpbnQgcGFudGhvcl9kZXZpY2VfcmVzdW1lX2FuZF9nZXQoc3RydWN0IGRldmljZSAqZGV2KQ0K
PiAgew0KPiAtICAgICAgIGludCByZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9hbmRfZ2V0KHB0ZGV2
LT5iYXNlLmRldik7DQo+ICsgICAgICAgc3RydWN0IHBhbnRob3JfZGV2aWNlICpwdGRldiA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOw0KPiArICAgICAgIGludCByZXQgPSBwbV9ydW50aW1lX3Jlc3Vt
ZV9hbmRfZ2V0KGRldik7DQo+DQo+ICAgICAgICAgLyogSWYgdGhlIHJlc3VtZSBmYWlsZWQsIHdl
IG5lZWQgdG8gY2xlYXIgdGhlIHJ1bnRpbWVfZXJyb3IsIHdoaWNoDQo+ICAgICAgICAgICogY2Fu
IGRvbmUgYnkgZm9yY2luZyB0aGUgUlBNIHN0YXRlIHRvIHN1c3BlbmRlZC4gSWYgbXVsdGlwbGUN
Cj4gQEAgLTQyNCwxMSArNDI1LDE0IEBAIHN0YXRpYyBpbmxpbmUgaW50IHBhbnRob3JfZGV2aWNl
X3Jlc3VtZV9hbmRfZ2V0KHN0cnVjdCBwYW50aG9yX2RldmljZSAqcHRkZXYpDQo+ICAgICAgICAg
ICogc29tZXRoaW5nIHdlIGNhbiBsaXZlIHdpdGguDQo+ICAgICAgICAgICovDQo+ICAgICAgICAg
aWYgKHJldCAmJiBhdG9taWNfY21weGNoZygmcHRkZXYtPnBtLnJlY292ZXJ5X25lZWRlZCwgMSwg
MCkgPT0gMSkNCj4gLSAgICAgICAgICAgICAgIHBtX3J1bnRpbWVfc2V0X3N1c3BlbmRlZChwdGRl
di0+YmFzZS5kZXYpOw0KPiArICAgICAgICAgICAgICAgcG1fcnVudGltZV9zZXRfc3VzcGVuZGVk
KGRldik7DQo+DQo+ICAgICAgICAgcmV0dXJuIHJldDsNCj4gIH0NCj4NCj4gK0RFRklORV9HVUFS
RF9DT05EKHBtX3J1bnRpbWVfYWN0aXZlX2F1dG8sIF90cnlfZW5hYmxlZF9vcl9zdXNwZW5kLA0K
PiArICAgICAgICAgICAgICAgICBwYW50aG9yX2RldmljZV9yZXN1bWVfYW5kX2dldChfVCksIF9S
RVQgPT0gMCkNCj4gKw0KPiAgZW51bSBkcm1fcGFudGhvcl9leGNlcHRpb25fdHlwZSB7DQo+ICAg
ICAgICAgRFJNX1BBTlRIT1JfRVhDRVBUSU9OX09LID0gMHgwMCwNCj4gICAgICAgICBEUk1fUEFO
VEhPUl9FWENFUFRJT05fVEVSTUlOQVRFRCA9IDB4MDQsDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3Iv
cGFudGhvcl9kcnYuYw0KPiBpbmRleCA3ODlkZGMwZmY3ZWYuLmYyZDYwZmYwMDg5NiAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9kcnYuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX2Rydi5jDQo+IEBAIC04MjQsNyArODI0LDgg
QEAgc3RhdGljIGludCBwYW50aG9yX3F1ZXJ5X3RpbWVzdGFtcF9pbmZvKHN0cnVjdCBwYW50aG9y
X2RldmljZSAqcHRkZXYsDQo+ICAgICAgICAgICAgICAgICAoZmxhZ3MgJiBEUk1fUEFOVEhPUl9U
SU1FU1RBTVBfRFVSQVRJT04pIHx8DQo+ICAgICAgICAgICAgICAgICAodGltZXN0YW1wX3R5cGVz
ID49IDIpOw0KPg0KPiAtICAgICAgIHJldCA9IHBhbnRob3JfZGV2aWNlX3Jlc3VtZV9hbmRfZ2V0
KHB0ZGV2KTsNCj4gKyAgICAgICBBQ1FVSVJFKHBtX3J1bnRpbWVfYWN0aXZlX2F1dG9fdHJ5X2Vu
YWJsZWRfb3Jfc3VzcGVuZCwgcG1fZ3VhcmQpKHB0ZGV2LT5iYXNlLmRldik7DQo+ICsgICAgICAg
cmV0ID0gQUNRVUlSRV9FUlIocG1fcnVudGltZV9hY3RpdmVfYXV0b190cnlfZW5hYmxlZF9vcl9z
dXNwZW5kLCAmcG1fZ3VhcmQpOw0KPiAgICAgICAgIGlmIChyZXQpDQo+ICAgICAgICAgICAgICAg
ICByZXR1cm4gcmV0Ow0KPg0KPiBAQCAtODk0LDcgKzg5NSw2IEBAIHN0YXRpYyBpbnQgcGFudGhv
cl9xdWVyeV90aW1lc3RhbXBfaW5mbyhzdHJ1Y3QgcGFudGhvcl9kZXZpY2UgKnB0ZGV2LA0KPiAg
ICAgICAgICAgICAgICAgYXJnLT5jcHVfdGltZXN0YW1wX25zZWMgPSAwOw0KPiAgICAgICAgIH0N
Cj4NCj4gLSAgICAgICBwbV9ydW50aW1lX3B1dChwdGRldi0+YmFzZS5kZXYpOw0KPiAgICAgICAg
IHJldHVybiAwOw0KPiAgfQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3BhbnRo
b3IvcGFudGhvcl9zY2hlZC5jIGIvZHJpdmVycy9ncHUvZHJtL3BhbnRob3IvcGFudGhvcl9zY2hl
ZC5jDQo+IGluZGV4IDlhYTk5NDFkMjMwOS4uOWFmYTM4ZTg3ZmM5IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vcGFudGhvci9wYW50aG9yX3NjaGVkLmMNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL3BhbnRob3IvcGFudGhvcl9zY2hlZC5jDQo+IEBAIC0yNjMwLDEzICsyNjMwLDEyIEBA
IHN0YXRpYyB2b2lkIHRpY2tfd29yayhzdHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspDQo+ICAgICAg
ICAgaWYgKEFDUVVJUkVfRVJSKGRybV9kZXZfYWNjZXNzLCAmZGV2X2d1YXJkKSkNCj4gICAgICAg
ICAgICAgICAgIHJldHVybjsNCj4NCj4gLSAgICAgICByZXQgPSBwYW50aG9yX2RldmljZV9yZXN1
bWVfYW5kX2dldChwdGRldik7DQo+ICsgICAgICAgQUNRVUlSRShwbV9ydW50aW1lX2FjdGl2ZV9h
dXRvX3RyeV9lbmFibGVkX29yX3N1c3BlbmQsIHBtX2d1YXJkKShwdGRldi0+YmFzZS5kZXYpOw0K
PiArICAgICAgIHJldCA9IEFDUVVJUkVfRVJSKHBtX3J1bnRpbWVfYWN0aXZlX2F1dG9fdHJ5X2Vu
YWJsZWRfb3Jfc3VzcGVuZCwgJnBtX2d1YXJkKTsNCj4gICAgICAgICBpZiAoZHJtX1dBUk5fT04o
JnB0ZGV2LT5iYXNlLCByZXQpKQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuOw0KPg0KPiAgICAg
ICAgIHRpY2soc2NoZWQpOw0KPiAtICAgICAgIHBtX3J1bnRpbWVfbWFya19sYXN0X2J1c3kocHRk
ZXYtPmJhc2UuZGV2KTsNCj4gLSAgICAgICBwbV9ydW50aW1lX3B1dF9hdXRvc3VzcGVuZChwdGRl
di0+YmFzZS5kZXYpOw0KPiAgfQ0KPg0KPiAgc3RhdGljIGludCBwYW50aG9yX3F1ZXVlX2V2YWxf
c3luY3dhaXQoc3RydWN0IHBhbnRob3JfZ3JvdXAgKmdyb3VwLCB1OCBxdWV1ZV9pZHgpDQo+IEBA
IC0zMzU5LDcgKzMzNTgsOCBAQCBxdWV1ZV9ydW5fam9iKHN0cnVjdCBkcm1fc2NoZWRfam9iICpz
Y2hlZF9qb2IpDQo+ICAgICAgICAgICAgICAgICByZXR1cm4gZG1hX2ZlbmNlX2dldChqb2ItPmRv
bmVfZmVuY2UpOw0KPiAgICAgICAgIH0NCj4NCj4gLSAgICAgICByZXQgPSBwYW50aG9yX2Rldmlj
ZV9yZXN1bWVfYW5kX2dldChwdGRldik7DQo+ICsgICAgICAgQUNRVUlSRShwbV9ydW50aW1lX2Fj
dGl2ZV9hdXRvX3RyeV9lbmFibGVkX29yX3N1c3BlbmQsIHBtX2d1YXJkKShwdGRldi0+YmFzZS5k
ZXYpOw0KPiArICAgICAgIHJldCA9IEFDUVVJUkVfRVJSKHBtX3J1bnRpbWVfYWN0aXZlX2F1dG9f
dHJ5X2VuYWJsZWRfb3Jfc3VzcGVuZCwgJnBtX2d1YXJkKTsNCj4gICAgICAgICBpZiAoZHJtX1dB
Uk5fT04oJnB0ZGV2LT5iYXNlLCByZXQpKQ0KPiAgICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9Q
VFIocmV0KTsNCj4NCj4gQEAgLTMzNjcsOSArMzM2Nyw2IEBAIHF1ZXVlX3J1bl9qb2Ioc3RydWN0
IGRybV9zY2hlZF9qb2IgKnNjaGVkX2pvYikNCj4gICAgICAgICAgICAgICAgIGRvbmVfZmVuY2Ug
PSBxdWV1ZV9ydW5fam9iX2xvY2tlZChqb2IpOw0KPiAgICAgICAgIH0NCj4NCj4gLSAgICAgICBw
bV9ydW50aW1lX21hcmtfbGFzdF9idXN5KHB0ZGV2LT5iYXNlLmRldik7DQo+IC0gICAgICAgcG1f
cnVudGltZV9wdXRfYXV0b3N1c3BlbmQocHRkZXYtPmJhc2UuZGV2KTsNCj4gLQ0KPiAgICAgICAg
IHJldHVybiBkb25lX2ZlbmNlOw0KPiAgfQ0KPg0KPg0KPiAtLQ0KPiAyLjU0LjANCj4NCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
