Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ULjyIjNgPWqx2AgAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:06:59 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 241396C7B20
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 19:06:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=Z2TIcAT4;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 431194455F
	for <lists+linaro-mm-sig@lfdr.de>; Thu, 25 Jun 2026 17:06:58 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	by lists.linaro.org (Postfix) with ESMTPS id 79EC53F6A0
	for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 12:52:39 +0000 (UTC)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-7dbcb505578so45316827b3.3
        for <linaro-mm-sig@lists.linaro.org>; Mon, 22 Jun 2026 05:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1782132759; cv=none;
        d=google.com; s=arc-20240605;
        b=f9toZdYlLEKrajWdeKdq7wQNtvTcNlftI+kehrb0Spr0hriac8PeDjNsuDaPuYmiEK
         SGrYUXFvACPl13/VdGEDoqrCO7pJlsJ6LrJt3OAopQks3sFar9S94JWUFHhZ7/AzuR5G
         0djE/7PQvVPZQ+nSHcctYHyyn/2Vou9J4euuYCEHmAnO7/Voi0pj57N3/4GlzAS4vmYY
         v2EC0qoi6kJFVuxlpNyTh3dlRff0j10i5hv6d41Cur0fR24Tdvp42JRdttpLRjvcvuxa
         IKq9xDjsG7GSGGCvfEjvl92v+JBnmvEnw+Zc41YrfrkFe12uqoQkcuHS62MEhlNzsiZz
         ys7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gQG1dK1Pn3kDMIdZo6j2PggknuXDB9/v9hKNqUmuRqo=;
        fh=ZLf3ogd/OX+5Wh8ZcJReY9UtM3luKqhXqkNuGYJ/fGs=;
        b=RQLdjtFgdpimApFcXZQRZ3kmYTC+YeKGfYFMCum54wTWcxMXyA4c/EGHn4tP5njw1p
         u03CDgUuq+xG3l3ZrUcdAizxmLwx/RYQ1wF6PBPcnyDbBTxLE5wTA0ohbuz9T7sb1iWz
         wmtm8ZW1+q6mBboKkf7za4TPsdKXa64I+QKFwFdKXTMcDD9g6h/6Bz/KhDdTOEciltIR
         lH6KGQ+it/+CQLi4VDLt7yHVih4WZvKvXatmmItlGtI5fNB01jbHPdNNBdeXqayuzbgn
         +XN62jpp3cqdS969n4Og3dNv7VXHy4QTGBRJAoBDPn/MyvsENrEkGZmdsLdEsKlNkvor
         H/eA==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782132759; x=1782737559; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gQG1dK1Pn3kDMIdZo6j2PggknuXDB9/v9hKNqUmuRqo=;
        b=Z2TIcAT4tX0IEXtfF2b0aLpWnY5o7T8x3zfZt+K4iO5q0arsV9o2Q5TUNzHwQf82mi
         MTwLg1Ofzlb+DODw48vNLdrsWahNPWL8hrqVUra7Ql7ZPNEWFuGR5YpmXfchc4wVIvTZ
         +e6su65tUofDLKd6Fs2745TH4Af6E/6b4lv6dnQuGQ0knSC/HtGPd7hUtHK8/wtReP8f
         AnOXrEue3k7k8qWbNhNUIb0w4O2ODxHo+ezE+/tlC349pGUJjM3rF2HNE3AjjZN9ugY5
         MSZNRZKcxyv0DWuEt7TAqPx6YJ867hucPyR2Te1aTvjoJtyfvOpMj9UjXBFHNMvnCgmm
         OFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782132759; x=1782737559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gQG1dK1Pn3kDMIdZo6j2PggknuXDB9/v9hKNqUmuRqo=;
        b=AfhThtNVdmSHvITHQQLHeIAi8K+xgQxOCJsG9YpXESxCzlrjoggAV/wGC5gLGrOiol
         yxXC5D8IHb9qRxD9G9fLifDxMW1CYaTdivn0uNY9/cGjWkybuajROl7uLqZrb9fInBmN
         +K/aeI+HCAsPUifzHGnRTl38BhL1TnZOnAarNYZI+QbR8ZflwJAVSx4psB8W5vYvjXzF
         WenaORM9YXjzAMF1guiMn9HApXzEGQl5XDAWEASHxduQtqSBA3/FE0ks36xsusSUnPQa
         Y5stvnzAK82c8rZezYlvYsesM2OmXoXgjnBvyc6oHlTbzvSZ/g/ZPjEP9j+02Wq9Wx4q
         NuQg==
X-Forwarded-Encrypted: i=1; AHgh+Rp2dwxbm4SHoP++C8vs9dKqllXBFf+NrppcBoCjylZUaGXOIK4Qn0X+Y9N9jPJUgBTBYnzdKyVH9C0vP5Lx@lists.linaro.org
X-Gm-Message-State: AOJu0YxrCoQ5nDTfAS1yFaHQ0CZ3ouRRRqxilAz7yMCPYIXlQQSOIRih
	qofSeJ+8fPoF5p5kQpP/ejjtwNj+TiVjc/ZOjHrXsrIucZ2qgb6c8KJmSSeg2M0LTSIsuibpHmx
	aHOnwtpetFAiO/Gkr5i47LSFVmV74hhA=
X-Gm-Gg: AfdE7clhK5ReqK2ZVamEH+Fw/4OQlvHo04NoQyaa3DMBguvV/lEPzuw15WDZMRm8I/M
	CiWV9jToGot88NEMReghvTYaWGXj3CFsvUZ5MelMKI+RRBpXChvgFcxj20fx14JR3We4yh8lpVO
	lKlvXcJQe3p+YF5Yynbq52InGfQM/WKsCQP0UCoKiEPbiZlhvNsVwG+7ydbVQwro4DLoyPk7XKK
	9XIHDH0E7IH4Q9ounH3OxxmXkkkgOc5gFjKZvkKW4GQ29QmiUcCyB8H1MoUjlxZirihuDJz
X-Received: by 2002:a05:690c:e346:b0:7bd:882a:43d9 with SMTP id
 00721157ae682-8013236fffbmr132455027b3.27.1782132758806; Mon, 22 Jun 2026
 05:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260616181956.61476-2-birenpandya@gmail.com> <20260622115544.GA3899302@killaraus.ideasonboard.com>
In-Reply-To: <20260622115544.GA3899302@killaraus.ideasonboard.com>
From: biren pandya <birenpandya@gmail.com>
Date: Mon, 22 Jun 2026 18:22:27 +0530
X-Gm-Features: AVVi8Cck-hMvuxp0n3mewo-gqCHtjTxGDRmA3jAjW6tNVdbjxYSJyw9YAMsTs2w
Message-ID: <CAAeMi9LMootkxmRE0tjo0mwijAuA0u+49HhxWxRGU-pSz+Cggw@mail.gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
X-Spamd-Bar: ----
X-MailFrom: birenpandya@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
Message-ID-Hash: NGRXNIHTX6ELK54GCVCD4OFHMTD5TMYA
X-Message-ID-Hash: NGRXNIHTX6ELK54GCVCD4OFHMTD5TMYA
X-Mailman-Approved-At: Thu, 25 Jun 2026 17:06:26 +0000
CC: maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, sumit.semwal@linaro.org, christian.koenig@amd.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/gem: modernize locks to use scoped_guard()
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NGRXNIHTX6ELK54GCVCD4OFHMTD5TMYA/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Rspamd-Action: no action
X-Spamd-Result: default: False [2.69 / 15.00];
	DATE_IN_PAST(1.00)[76];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:laurent.pinchart@ideasonboard.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:sumit.semwal@linaro.org,m:christian.koenig@amd.com,m:dri-devel@lists.freedesktop.org,m:linux-kernel@vger.kernel.org,m:linux-media@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_SENDER(0.00)[birenpandya@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,linaro.org,amd.com,lists.freedesktop.org,vger.kernel.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[birenpandya@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp,mail.gmail.com:mid,ideasonboard.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 241396C7B20

T24gTW9uLCBKdW4gMjIsIDIwMjYgYXQgNToyNeKAr1BNIExhdXJlbnQgUGluY2hhcnQNCjxsYXVy
ZW50LnBpbmNoYXJ0QGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOg0KPg0KPiBPbiBUdWUsIEp1biAx
NiwgMjAyNiBhdCAxMTo0OTo1N1BNICswNTMwLCBCaXJlbiBQYW5keWEgd3JvdGU6DQo+ID4gU2V2
ZXJhbCBHRU0gY29yZSBmdW5jdGlvbnMgbWFudWFsbHkgbWFuYWdlZCBtdXRleF9sb2NrKCkgYW5k
DQo+ID4gbXV0ZXhfdW5sb2NrKCkgb3ZlciBzaW5nbGUgc2NvcGVzIG9yIGVycm9yIHBhdGhzLiBU
aGlzIGFkZHMgYm9pbGVycGxhdGUNCj4gPiBhbmQgY2FycmllcyB0aGUgcmlzayBvZiBsb2NrIGxl
YWtzIGlmIGVycm9yIHBhdGhzIGFyZSByZWZhY3RvcmVkLg0KPiA+DQo+ID4gTW9kZXJuaXplIHRo
ZXNlIGxvY2tzIGJ5IGRlcGxveWluZyB0aGUgPGxpbnV4L2NsZWFudXAuaD4gc2NvcGVkX2d1YXJk
KCkNCj4gPiBtYWNyby4gVGhpcyBlbnN1cmVzIHRoYXQgdGhlIGxvY2tzIGFyZSByZWxpYWJseSBk
cm9wcGVkIHdoZW4gdGhlIGJsb2NrDQo+ID4gZXhpdHMsIGNsZWFubHkgcmVtb3ZpbmcgZ290byBv
dXRfdW5sb2NrIHBhdGhzIGFuZCB0aWdodGVuaW5nIHRoZQ0KPiA+IGxpZmVjeWNsZS4NCj4NCj4g
V2hhdCdzIHRoZSByZWFzb24gZm9yIGRvaW5nIHNvIGluIGluIGRybV9nZW0gYW5kIG5vdCBvdGhl
ciBhcmVhcyBpbiBEUk0NCj4gPw0KDQpIaSBMYXVyZW50LA0KDQpUaGFua3MgZm9yIHRha2luZyBh
IGxvb2suDQpObyBkZWVwZXIgcmVhc29uIHRoYW4gaXQgYmVpbmcgd2hlcmUgSSBoYXBwZW5lZCB0
byBzdGFydCDigJQgSSBkaWRuJ3QNCm1lYW4gdG8gc2luZ2xlIGl0IG91dCwgYW5kIEknZCByYXRo
ZXIgdGhlIHRyZWF0bWVudCBiZSBjb25zaXN0ZW50IHRoYW4NCnBpZWNlbWVhbC4NCg0KPiA+IEBA
IC0xMDIxLDM3ICsxMDE4LDM0IEBAIGludCBkcm1fZ2VtX2NoYW5nZV9oYW5kbGVfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwNCj4gPiAgICAgICAgICAgICAgIGdvdG8g
b3V0Ow0KPiA+ICAgICAgIH0NCj4gPg0KPiA+IC0gICAgIG11dGV4X2xvY2soJmZpbGVfcHJpdi0+
cHJpbWUubG9jayk7DQo+ID4gKyAgICAgc2NvcGVkX2d1YXJkKG11dGV4LCAmZmlsZV9wcml2LT5w
cmltZS5sb2NrKSB7DQo+ID4gKyAgICAgICAgICAgICBzcGluX2xvY2soJmZpbGVfcHJpdi0+dGFi
bGVfbG9jayk7DQo+ID4gKyAgICAgICAgICAgICByZXQgPSBpZHJfYWxsb2MoJmZpbGVfcHJpdi0+
b2JqZWN0X2lkciwgb2JqLCBoYW5kbGUsIGhhbmRsZSArIDEsDQo+ID4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR0ZQX05PV0FJVCk7DQo+ID4gKyAgICAgICAgICAgICBzcGluX3VubG9j
aygmZmlsZV9wcml2LT50YWJsZV9sb2NrKTsNCj4NCj4gQW5kIHdoeSBkb24ndCB5b3UgdXNlIGd1
YXJkcyBmb3IgdGhlIHNwaW5sb2NrIGFzIHdlbGwgPw0KDQpGYWlyIHBvaW50IOKAlCB0aGUgc3Bp
bmxvY2tzIGhlcmUgYXJlIGVxdWFsbHkgZ29vZCBjYW5kaWRhdGVzOyBJIG9ubHkNCmtlcHQgdjEg
dG8gbXV0ZXhlcyB0byBrZWVwIGl0IHNtYWxsLg0KDQpUaGF0IHNhaWQsIHRoaXMgaXMgYSBwdXJl
IGNsZWFudXAgd2l0aCBubyBmdW5jdGlvbmFsIGNoYW5nZSwgc28gaXQncw0KZW50aXJlbHkgeW91
ciBjYWxsIHdoZXRoZXIgaXQncyB3b3J0aCBjYXJyeWluZy4NCklmIHlvdSdkIGxpa2UgaXQsIEkn
bGwgc2VuZCBhIHYyIHRoYXQgY29udmVydHMgYm90aCB0aGUgbXV0ZXhlcyBhbmQNCnRoZSBzcGlu
bG9ja3MgaW4gZHJtX2dlbS5jIGNvbnNpc3RlbnRseS4gSWYgeW91J2QgcHJlZmVyIG5vdCB0byB0
YWtlDQpjbGVhbnVwLW9ubHkgY2h1cm4sIEknbSBoYXBweSB0byBkcm9wIGl0IOKAlCBubyBwcm9i
bGVtIGVpdGhlciB3YXkuDQoNClRoYW5rcywNCkJpcmVuDQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2lnIG1haWxpbmcgbGlzdCAtLSBs
aW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5vcmcK
