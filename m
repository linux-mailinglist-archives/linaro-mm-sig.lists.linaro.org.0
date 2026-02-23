Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6Om7EnWdnGmyJgQAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 19:33:25 +0100
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A0F17B923
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 19:33:24 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D62D44047D
	for <lists+linaro-mm-sig@lfdr.de>; Mon, 23 Feb 2026 18:33:23 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
	by lists.linaro.org (Postfix) with ESMTPS id ED37C4047D
	for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 18:33:20 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=SrQJa6Pp;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.218.54 as permitted sender) smtp.mailfrom=jstultz@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-b9047e72201so676617866b.2
        for <linaro-mm-sig@lists.linaro.org>; Mon, 23 Feb 2026 10:33:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771871600; cv=none;
        d=google.com; s=arc-20240605;
        b=HHRWHZZn7kAFO6P1RLzeP8PRh4ySwddgBZp3PPkvbrRtJs8BtOdLyp6PaHYf6W+pt9
         hPs6cSXvKz+sgb2XvLwhWjr2JEnjIZk5ayM28GML+dMN7pSg1Yux42+4vKIhaXPxko9I
         /2UnruXc+aWvX2qTWChbsrXvLchvwVBS9Ds/WZ8iSHZIQFeu9NlJt4XpGT0NPoS3UABK
         aeF92hKE4Iw1XjuDIEKVMC6SelYtQjJIgm3C9L15yJNEECKlIv5RJvc1rk4NfyET7ST3
         5oVXaumwZe7Kny6PnsAzQM+2Nspk0Usf/odgcE5Mvqj/Sd7yUa58MYqTuG0iUQJKzNM1
         uMmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=SdXTYyc+CZiWHvNxIlGUblHb7sAtxXqArT15DTb3rus=;
        fh=A3KFiWsxwzFj6c6PRNIvSAeag16DYejkLzSYhJzfqa8=;
        b=I/UJ69j/WYolipAwllj20NZsbum0ejfASKjALN4MULa8wIaq4g5hNbWP/OLsrafIM3
         4w1eXDbaCi/Vx/dia+6aTSVimupQr9PjHmtltOK1qKeZ047pEG3fFTBY1ZLx5kN/xp7C
         VZMSEEseP5AdITdcnPiJCtF9ufsLRTlJBsTa6dkITLZcWfP9ulottlPYOe4NZjxk657z
         tk+4yBBzoWPuKq1T4vKE+IQiSC2jyFWSHpANumHjw3m7KHVpSygju+Gqy9GSHNy2Dtco
         s2NCpx/4Y4THpGrKn/yDRQe4PkVFtqxsm6lJVnrwcRZ4tPDLIQoaRrDh8U/qY1lC4l23
         VH6w==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1771871600; x=1772476400; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SdXTYyc+CZiWHvNxIlGUblHb7sAtxXqArT15DTb3rus=;
        b=SrQJa6Pp10y8jFkFqXVPBdYhj1rg3TO9mgeOKK3FFFURxoQ1febqmhvFhe57C3e76G
         yP69Tk+AHPm1mvXcaZtyQ9eP5ZA4ro0f0Jl2OgX7+/8hb5h7zLqcmYOx/OWEr1XGn/cm
         0uP4+Oi7XJsEqgcFU3dnCJBf7IxGKuJ4RDaW4GEbXu4h257o6mYBwOXDvq8oYCBkxi41
         SeVyDQK6mZiHvEOS83/PlPiSbsBCpxu6PWklT/QIDZldHst2TWEDZo3U3Kn1+ZRH2bOj
         gQqfRwL1hxL839rz16PBSBd2n1hgS4b6IBVdXgqJgLDBSHfRFcv6Ln3zbFny9ST6p9D/
         w3xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771871600; x=1772476400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SdXTYyc+CZiWHvNxIlGUblHb7sAtxXqArT15DTb3rus=;
        b=eoxPuAIYKzWfLLUiJywILCCk8CJZByJfvXo6rboluazzD44JVuV/mU3fRd8UsGiEzu
         IthFV6krRYHEJeNng/WBg0o3rnk4Q+EMnu/ZVlgiYmOkpKUvEZx22ii4qNbo9k7BOs6F
         Miahxo75OZOva5jBFiFm1ujdrsQzasKtHonjLFhcqG/LBQK15QfBIzv77IANmmDKz7Xv
         CvxCdf9ZxvoM8XXaRVr2646SlOKUHDESCmSswItpE6CzWkANGFPbNe2hxHMmDvp/O3lZ
         sXqLPHVvvlkp10x+d9aO0BvNE1yVkdUyqqw+Y2Lq7SbI5g1I1sN7t3kySiRS3QHRB3T2
         RfWA==
X-Forwarded-Encrypted: i=1; AJvYcCVSMvNuVMUURL/zocLdHnDIyy97z3FZJlbgGOSK5IQB2wi0RqTHSFZPTZAF7guKmrrmdDuDi/Tqzu6Io6LQ@lists.linaro.org
X-Gm-Message-State: AOJu0YwsUDPxmKQrQQzqea+nTVI7oCOjgSRPDuQxiFQ97jEFYmhLAQoL
	LVbaZsPoeZ7ZLq7K2d+YS8TQVHw1NCpqR6dsbjrAiQqoZtcYH9WRvAe+ZubMPeaJ5I5Vu+hNbCv
	4PXq89GK7YfGdMInDbxKrqcPiYvqUfPJQ+DsG9gI=
X-Gm-Gg: AZuq6aKbmmlkvAJbxtsKoLlWKBqhnaYtrRC38ZVfoFbOsRK/vVMUAuaVcwrUR2E/+4Z
	nVa0TJ6lkx1ni7ZerYFnYU+jQ4+igNpW6G7AR7Gq9H1VNUV0OBXMr1FCN24r6jDU/bqwWIMvMiW
	rx2PVcjamJ+7kqVU+9AQY5ChuFM8QxBSpV82K1FJb9kPr3u21x4QEfYUO8kiKyBjuUIVENyg732
	/15xPaQjWpC/0HciLJLWhLWMNm1UX/aSgGzJ2/qAg16OeExxPyz86XH/maDYfy6OXcQYN6TCVer
	fb/Q4pgfBT66z8azSgLgi2QDDAgY2iZlS3iu
X-Received: by 2002:a17:907:9452:b0:b88:713e:78a5 with SMTP id
 a640c23a62f3a-b9081aeedf7mr579641266b.28.1771871599312; Mon, 23 Feb 2026
 10:33:19 -0800 (PST)
MIME-Version: 1.0
References: <20260223095136.225277-1-jiri@resnulli.us> <20260223095136.225277-3-jiri@resnulli.us>
In-Reply-To: <20260223095136.225277-3-jiri@resnulli.us>
From: John Stultz <jstultz@google.com>
Date: Mon, 23 Feb 2026 10:33:07 -0800
X-Gm-Features: AaiRm51mY0mKY0_1_wq03WmYtA7Qg-aNpUveVzAZTLNHpqLqVMbVU7X_E2imwkI
Message-ID: <CANDhNCp94KG06P_7ivMTNA27qEM9g8ox-h3b_tZ=v6e-25xJ3g@mail.gmail.com>
To: Jiri Pirko <jiri@resnulli.us>
X-Spamd-Bar: -----
Message-ID-Hash: WG3Z75JJIUZCDMO522ZOCWR2F355MTJK
X-Message-ID-Hash: WG3Z75JJIUZCDMO522ZOCWR2F355MTJK
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, linux-media@vger.kernel.org, sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, tjmercier@google.com, christian.koenig@amd.com, robin.murphy@arm.com, jgg@ziepe.ca, leon@kernel.org, sean.anderson@linux.dev, ptesarik@suse.com, catalin.marinas@arm.com, aneesh.kumar@kernel.org, suzuki.poulose@arm.com, steven.price@arm.com, thomas.lendacky@amd.com, john.allen@amd.com, ashish.kalra@amd.com, suravee.suthikulpanit@amd.com, linux-coco@lists.linux.dev
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 2/2] dma-buf: heaps: system: add system_cc_decrypted heap for explicitly decrypted memory
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/WG3Z75JJIUZCDMO522ZOCWR2F355MTJK/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.59 / 15.00];
	DMARC_POLICY_REJECT(2.00)[google.com : SPF not aligned (relaxed),reject];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[google.com:-];
	NEURAL_HAM(-0.00)[-0.979];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nvidia.com:email,mail.gmail.com:mid,lists.linaro.org:helo,lists.linaro.org:rdns,linaro.org:email,resnulli.us:email]
X-Rspamd-Queue-Id: D6A0F17B923
X-Rspamd-Action: no action

T24gTW9uLCBGZWIgMjMsIDIwMjYgYXQgMTo1MeKAr0FNIEppcmkgUGlya28gPGppcmlAcmVzbnVs
bGkudXM+IHdyb3RlOg0KPg0KPiBGcm9tOiBKaXJpIFBpcmtvIDxqaXJpQG52aWRpYS5jb20+DQo+
DQo+IEFkZCBhIG5ldyAic3lzdGVtX2NjX2RlY3J5cHRlZCIgZG1hLWJ1ZiBoZWFwIHRvIGFsbG93
IHVzZXJzcGFjZSB0bw0KPiBhbGxvY2F0ZSBkZWNyeXB0ZWQgKHNoYXJlZCkgbWVtb3J5IGZvciBj
b25maWRlbnRpYWwgY29tcHV0aW5nIChDb0NvKQ0KPiBWTXMuDQo+DQo+IE9uIENvQ28gVk1zLCBn
dWVzdCBtZW1vcnkgaXMgZW5jcnlwdGVkIGJ5IGRlZmF1bHQuIFRoZSBoYXJkd2FyZSB1c2VzIGFu
DQo+IGVuY3J5cHRpb24gYml0IGluIHBhZ2UgdGFibGUgZW50cmllcyAoQy1iaXQgb24gQU1EIFNF
ViwgInNoYXJlZCIgYml0IG9uDQo+IEludGVsIFREWCkgdG8gY29udHJvbCB3aGV0aGVyIGEgZ2l2
ZW4gbWVtb3J5IGFjY2VzcyBpcyBlbmNyeXB0ZWQgb3INCj4gZGVjcnlwdGVkLiBUaGUga2VybmVs
J3MgZGlyZWN0IG1hcCBpcyBzZXQgdXAgd2l0aCBlbmNyeXB0aW9uIGVuYWJsZWQsDQo+IHNvIHBh
Z2VzIHJldHVybmVkIGJ5IGFsbG9jX3BhZ2VzKCkgYXJlIGVuY3J5cHRlZCBpbiB0aGUgZGlyZWN0
IG1hcA0KPiBieSBkZWZhdWx0LiBUbyBtYWtlIHRoaXMgbWVtb3J5IHVzYWJsZSBmb3IgZGV2aWNl
cyB0aGF0IGRvIG5vdCBzdXBwb3J0DQo+IERNQSB0byBlbmNyeXB0ZWQgbWVtb3J5IChubyBURElT
UCBzdXBwb3J0KSwgaXQgaGFzIHRvIGJlIGV4cGxpY2l0bHkNCj4gZGVjcnlwdGVkLiBBIGNvdXBs
ZSBvZiB0aGluZ3MgYXJlIG5lZWRlZCB0byBwcm9wZXJseSBoYW5kbGUNCj4gZGVjcnlwdGVkIG1l
bW9yeSBmb3IgdGhlIGRtYS1idWYgdXNlIGNhc2U6DQo+DQo+IC0gc2V0X21lbW9yeV9kZWNyeXB0
ZWQoKSBvbiB0aGUgZGlyZWN0IG1hcCBhZnRlciBhbGxvY2F0aW9uOg0KPiAgIEJlc2lkZXMgY2xl
YXJpbmcgdGhlIGVuY3J5cHRpb24gYml0IGluIHRoZSBkaXJlY3QgbWFwIFBURXMsIHRoaXMNCj4g
ICBhbHNvIG5vdGlmaWVzIHRoZSBoeXBlcnZpc29yIGFib3V0IHRoZSBwYWdlIHN0YXRlIGNoYW5n
ZS4gT24gZnJlZSwNCj4gICB0aGUgaW52ZXJzZSBzZXRfbWVtb3J5X2VuY3J5cHRlZCgpIG11c3Qg
YmUgY2FsbGVkIGJlZm9yZSByZXR1cm5pbmcNCj4gICBwYWdlcyB0byB0aGUgYWxsb2NhdG9yLiBJ
ZiByZS1lbmNyeXB0aW9uIGZhaWxzLCBwYWdlcw0KPiAgIGFyZSBpbnRlbnRpb25hbGx5IGxlYWtl
ZCB0byBwcmV2ZW50IGRlY3J5cHRlZCBtZW1vcnkgZnJvbSBiZWluZw0KPiAgIHJldXNlZCBhcyBw
cml2YXRlLg0KPg0KPiAtIHBncHJvdF9kZWNyeXB0ZWQoKSBmb3IgdXNlcnNwYWNlIGFuZCBrZXJu
ZWwgdmlydHVhbCBtYXBwaW5nczoNCj4gICBBbnkgbmV3IG1hcHBpbmcgb2YgdGhlIGRlY3J5cHRl
ZCBwYWdlcywgYmUgaXQgdG8gdXNlcnNwYWNlIHZpYQ0KPiAgIG1tYXAgb3IgdG8ga2VybmVsIHZt
YWxsb2Mgc3BhY2UgdmlhIHZtYXAsIGNyZWF0ZXMgUFRFcyBpbmRlcGVuZGVudA0KPiAgIG9mIHRo
ZSBkaXJlY3QgbWFwLiBUaGVzZSBtdXN0IGFsc28gaGF2ZSB0aGUgZW5jcnlwdGlvbiBiaXQgY2xl
YXJlZCwNCj4gICBvdGhlcndpc2UgYWNjZXNzZXMgdGhyb3VnaCB0aGVtIHdvdWxkIHNlZSBlbmNy
eXB0ZWQgKGdhcmJhZ2UpIGRhdGEuDQo+DQo+IC0gRE1BX0FUVFJfQ0NfREVDUllQVEVEIGZvciBE
TUEgbWFwcGluZzoNCj4gICBTaW5jZSB0aGUgcGFnZXMgYXJlIGFscmVhZHkgZGVjcnlwdGVkLCB0
aGUgRE1BIEFQSSBuZWVkcyB0byBiZQ0KPiAgIGluZm9ybWVkIHZpYSBETUFfQVRUUl9DQ19ERUNS
WVBURUQgc28gaXQgY2FuIG1hcCB0aGVtIGNvcnJlY3RseQ0KPiAgIGFzIHVuZW5jcnlwdGVkIGZv
ciBkZXZpY2UgYWNjZXNzLg0KPg0KPiBPbiBub24tQ29DbyBWTXMsIHRoZSBzeXN0ZW1fY2NfZGVj
cnlwdGVkIGhlYXAgaXMgbm90IHJlZ2lzdGVyZWQNCj4gdG8gcHJldmVudCBtaXN1c2UgYnkgdXNl
cnNwYWNlIHRoYXQgZG9lcyBub3QgdW5kZXJzdGFuZA0KPiB0aGUgc2VjdXJpdHkgaW1wbGljYXRp
b25zIG9mIGV4cGxpY2l0bHkgZGVjcnlwdGVkIG1lbW9yeS4NCj4NCj4gU2lnbmVkLW9mZi1ieTog
SmlyaSBQaXJrbyA8amlyaUBudmlkaWEuY29tPg0KDQpUaGFua3MgZm9yIHJld29ya2luZyB0aGlz
ISBJJ3ZlIG5vdCByZXZpZXdlZCBpdCBzdXBlciBjbG9zZWx5LCBidXQgSQ0KYmVsaWV2ZSBpdCBy
ZXNvbHZlcyBteSBvYmplY3Rpb24gb24geW91ciBmaXJzdCB2ZXJzaW9uLg0KDQpGZXcgbml0cy9x
dWVzdGlvbnMgYmVsb3cuDQoNCj4gQEAgLTI5Niw2ICszNDUsMTQgQEAgc3RhdGljIHZvaWQgc3lz
dGVtX2hlYXBfZG1hX2J1Zl9yZWxlYXNlKHN0cnVjdCBkbWFfYnVmICpkbWFidWYpDQo+ICAgICAg
ICAgZm9yX2VhY2hfc2d0YWJsZV9zZyh0YWJsZSwgc2csIGkpIHsNCj4gICAgICAgICAgICAgICAg
IHN0cnVjdCBwYWdlICpwYWdlID0gc2dfcGFnZShzZyk7DQo+DQo+ICsgICAgICAgICAgICAgICAv
Kg0KPiArICAgICAgICAgICAgICAgICogSW50ZW50aW9uYWxseSBsZWFrIHBhZ2VzIHRoYXQgY2Fu
bm90IGJlIHJlLWVuY3J5cHRlZA0KPiArICAgICAgICAgICAgICAgICogdG8gcHJldmVudCBkZWNy
eXB0ZWQgbWVtb3J5IGZyb20gYmVpbmcgcmV1c2VkLg0KPiArICAgICAgICAgICAgICAgICovDQo+
ICsgICAgICAgICAgICAgICBpZiAoYnVmZmVyLT5kZWNyeXB0ZWQgJiYNCj4gKyAgICAgICAgICAg
ICAgICAgICBzeXN0ZW1faGVhcF9zZXRfcGFnZV9lbmNyeXB0ZWQocGFnZSkpDQo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiArDQoNCldoYXQgYXJlIHRoZSBjb25kaXRpb25z
IHdoZXJlIHRoaXMgd291bGQgZmFpbD8gSG93IG11Y2ggb2YgYW4gZWRnZQ0KY2FzZSBpcyB0aGlz
PyBJIGZyZXQgdGhpcyBvcGVucyBhIERvUyB2ZWN0b3IgaWYgb25lIGlzIGFibGUgdG8NCmFsbG9j
YXRlIGZyb20gdGhpcyBoZWFwIGFuZCB0aGVuIHN0cmVzcyB0aGUgc3lzdGVtIHdoZW4gZG9pbmcg
dGhlDQpmcmVlLg0KDQpTaG91bGQgdGhlcmUgYmUgc29tZSBnbG9iYWwgbGlzdCBvZiBsZWFrZWQg
ZGVjcnlwdGVkIHBhZ2VzIHN1Y2ggdGhhdA0KdGhlIG1tIHN1YnN5c3RlbSBjb3VsZCB0cnkgYWdh
aW4gbGF0ZXIgdG8gcmVjb3ZlciB0aGVzZT8NCg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9kbWEtaGVhcC5oIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQo+IGluZGV4IDY0ODMyOGE2
NGIyNy4uZDk3YjY2ODQxM2MxIDEwMDY0NA0KPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1oZWFw
LmgNCj4gKysrIGIvaW5jbHVkZS9saW51eC9kbWEtaGVhcC5oDQo+IEBAIC0xMCw2ICsxMCw3IEBA
DQo+ICAjZGVmaW5lIF9ETUFfSEVBUFNfSA0KPg0KPiAgI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+
DQo+ICsjaW5jbHVkZSA8dWFwaS9saW51eC9kbWEtaGVhcC5oPg0KPg0KPiAgc3RydWN0IGRtYV9o
ZWFwOw0KPg0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1oZWFwLmggYi9p
bmNsdWRlL3VhcGkvbGludXgvZG1hLWhlYXAuaA0KPiBpbmRleCBhNGNmNzE2YTQ5ZmEuLmFiOTVi
YjM1NWVkNSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1oZWFwLmgNCj4g
KysrIGIvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1oZWFwLmgNCj4gQEAgLTE4LDggKzE4LDcgQEAN
Cj4gIC8qIFZhbGlkIEZEX0ZMQUdTIGFyZSBPX0NMT0VYRUMsIE9fUkRPTkxZLCBPX1dST05MWSwg
T19SRFdSICovDQo+ICAjZGVmaW5lIERNQV9IRUFQX1ZBTElEX0ZEX0ZMQUdTIChPX0NMT0VYRUMg
fCBPX0FDQ01PREUpDQo+DQo+IC0vKiBDdXJyZW50bHkgbm8gaGVhcCBmbGFncyAqLw0KPiAtI2Rl
ZmluZSBETUFfSEVBUF9WQUxJRF9IRUFQX0ZMQUdTICgwVUxMKQ0KPiArI2RlZmluZSBETUFfSEVB
UF9WQUxJRF9IRUFQX0ZMQUdTICgwKQ0KPg0KPiAgLyoqDQo+ICAgKiBzdHJ1Y3QgZG1hX2hlYXBf
YWxsb2NhdGlvbl9kYXRhIC0gbWV0YWRhdGEgcGFzc2VkIGZyb20gdXNlcnNwYWNlIGZvcg0KDQpB
cmUgdGhlc2UgaGVhZGVyIGNoYW5nZXMgc3RpbGwgbmVjZXNzYXJ5Pw0KDQp0aGFua3MNCi1qb2hu
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8t
bW0tc2lnIG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8g
dW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxp
bmFyby5vcmcK
