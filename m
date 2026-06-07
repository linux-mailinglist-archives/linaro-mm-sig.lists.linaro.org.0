Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6xsAOEqFJWrHIwIAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 07 Jun 2026 16:50:50 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 636FF650CBA
	for <lists+linaro-mm-sig@lfdr.de>; Sun, 07 Jun 2026 16:50:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("body hash did not verify") header.d=gmail.com header.s=20251104 header.b=pUqxSZwV;
	spf=pass (mail.lfdr.de: domain of "linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org" designates 44.210.186.118 as permitted sender) smtp.mailfrom="linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org";
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=gmail.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:google.com:reject}")
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7925940976
	for <lists+linaro-mm-sig@lfdr.de>; Sun,  7 Jun 2026 14:50:49 +0000 (UTC)
Received: from mail-dy1-f180.google.com (mail-dy1-f180.google.com [74.125.82.180])
	by lists.linaro.org (Postfix) with ESMTPS id D3C044010F
	for <linaro-mm-sig@lists.linaro.org>; Sun,  7 Jun 2026 14:50:39 +0000 (UTC)
Received: by mail-dy1-f180.google.com with SMTP id 5a478bee46e88-304eb0fc233so280044eec.3
        for <linaro-mm-sig@lists.linaro.org>; Sun, 07 Jun 2026 07:50:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780843839; cv=none;
        d=google.com; s=arc-20240605;
        b=D1+yD1R7AIZIjP16UWankJen/IlJaz+EEBm1C48nQtf14N2lkMVJ44irz3JogymcGa
         RFGfO95CYJpVVI6eU1yH7SgzKkGFe55/4qLsUwNSyM6atFmaXrC2MewIWOZozbtGCyrs
         Lldd0f3UgW6qKMxA6xmJh3Wn88kApeEs5pIQIHuNWj3gCU9Dqkr1wOi4P3qFOjGbWbDt
         zkVV+6CC1JyVLdsP5GJY9kbkcCUtbMYjc9TMJr1DSLvEYqxchPlsV2VcPqG6gHL9KgJU
         GtJqqSKUAb9dqj8AwxHs0Q1arONmU6dQQvLwrcpy1Tjcs5pIcinrc9ixSAfK16Cua/hN
         YDbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KeOkw3p+smUt9mDbUXijVkwoFTCqBK/LvWOrl4P+Zo4=;
        fh=lFK+cwpCRsX2BRy8m9qA4l6u4swUrmZAzHeBckflrbk=;
        b=L+DylNTP0krbPepSEDezX/UWU9trGzWhlq9wXco9ndWzUBkqsUiEOn8lxRrGks4JYV
         Umc2/qFWvNkamgn69mZ1vFyHc46SOPEBjdRt0G0bs0sllSRA0cyj2nuYuH7mv+pXZNzU
         Xo0QGk6DuWov+UFHr1cAtpRcGEBBy+f4Z4ASvGZ21h9Vu77RPuIey/ilUqUH9AhavuJn
         ZmdGSzJvOO9C7jQbAXQBiOZmBvtKAXHlUIJ9BXbwW87ul8TQoW/JTgcspGvTLiaLKHfn
         kBqXSw2iq299F7NVaR9f2t9skE03fRApExEVfBN3EoCeo93jKKZ0u4wwfow+ZcOQurf3
         tNVw==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780843839; x=1781448639; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KeOkw3p+smUt9mDbUXijVkwoFTCqBK/LvWOrl4P+Zo4=;
        b=pUqxSZwVrB2Co6gEKrKTfA0yUpuuHhJ0/tCFvpDWncvXOn/0T6NCe3pui9X0OcgQXZ
         CbxetfwGN7RHpUYt1cdmjtWZcOxRdLdYUld20+ARpGX1gnoBTEEu9V36ejhMtantIh9r
         H6iAqfa863HnzYnTsoj1NnbkugF04f37mAqEyWxPZivrDuXGcrM2GbUnTVJyTZPc/T1K
         rfUoDUA+LURrNgPV584AQqJYh0239utKInJ91fXYSSFmSnP+F8sB0HntqCX4Nj/Me8QY
         D3iri/8HNG8ygssHQjkYCMRqCPndo/9uncoKYJ4D/PlHFXsjHhY+Ky7Iprvq9QpKvMAi
         yAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780843839; x=1781448639;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KeOkw3p+smUt9mDbUXijVkwoFTCqBK/LvWOrl4P+Zo4=;
        b=rNN9jVjzFvV1rm0JsKTSHG0b1vZ8pCEyCBfbUSAyNRPdrCcQSrG3cxzfrp2SFpe9LC
         MM/ZdDrFySaan8/co20QdrlsRpQkkPPePxO+PC2RDy8KSKzotes+Jr5MXd4sxSDK/nYd
         eq/RPMLdZyER7JlXn10KjEVXgI2HaMsKb3WU3oj8g0uwZ1jIkF5vxix1moyykCu2u6hJ
         Wfm9EkX4SFOJiH3y10Y3X1O8t8B1aWf/N1pDZGiDV+bkEOwrdbosN+Ycs9TE4gHyZx6R
         PKNjpZPcQmdYxO2ChFuig861pgqFgil+WD2KlDRusRCb5HbIOGf81m6ojpqV7A4EdZm/
         Q87g==
X-Forwarded-Encrypted: i=1; AFNElJ/CcG+7B/KmTV4NVDqkaekbCnPgzjgwNM0vTGyhCqXh6mu0HgCVVax+t+9im3RTwDMrYE9pSXo3U/thHQaH@lists.linaro.org
X-Gm-Message-State: AOJu0Yz0vbp7VAU/qgbTZVmBUz3BmAMx3l9iFDU/eqotkeyC2FwVodol
	SbdNoF0Nrf7n+WX7DJ4uFdCulFg/zikOnz4JtLqxUnYiVO3B2UkHjMqWKHF1X85RQqh+2qFbolD
	McnphWDvtI9Dxk8gMEiZ6aOYYdjwZuJs=
X-Gm-Gg: Acq92OFBxZmYw6ldcV0zkyTfx1opO08rXZeuW1tb1unIURnjtO7tnqewoeeSUc9fZUK
	oR6p0BhFZG2gzzgflyo/PDcv0irowuYDOVKSlvAyx9CW3M03hG9mrfJ96sq9zdbpPfaLt0TNaxj
	dG5WISC3yChJW6Uxuh0ov4q2WLDsGgH35UlUrujIYXZFw3UJl2dtPmiWTyOGCxQL0j4llxh7Z9n
	Z7Y8QrcyjwW11anTus0oBL5abhr9zyr/PcwEFDdGKlAQC006hgLs3QHyMUGypudeH5dTJM7JT8b
	mZdr8Cm5HT2sc4vG+ol9hVClwu23iocxWIJwL5QMxSdmA7l5BySZQYHjsbJ1SvFiw9WzM2QQ8GM
	8MmmA4NXCcs4z5woDYwkLpZOns4649qbzqA==
X-Received: by 2002:a05:7300:5723:b0:2ea:5057:a320 with SMTP id
 5a478bee46e88-3077af4a612mr3072058eec.2.1780843838713; Sun, 07 Jun 2026
 07:50:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260604192740.659240-1-lyude@redhat.com> <DJ2G8D0N6EK7.2PDDSC28O8K4P@nvidia.com>
 <DJ2T75A5H6Y2.ISIBOQVMAO4I@garyguo.net>
In-Reply-To: <DJ2T75A5H6Y2.ISIBOQVMAO4I@garyguo.net>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sun, 7 Jun 2026 16:50:26 +0200
X-Gm-Features: AVVi8CeFi5djIGvrvuLFIe0ggcr2ckGO7PwhkagBDt7mLNkIJPuv5Gv_nWehfL0
Message-ID: <CANiq72=qKckJXFJU6TDKf1yh3a2wBS4SQE9fiGKpVOYWYtL8QA@mail.gmail.com>
To: Gary Guo <gary@garyguo.net>
X-Spamd-Bar: ----
Message-ID-Hash: NCRSRORPP6FSUWHQ2YYCHATBBBP2RUIS
X-Message-ID-Hash: NCRSRORPP6FSUWHQ2YYCHATBBBP2RUIS
X-MailFrom: miguel.ojeda.sandonis@gmail.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Alexandre Courbot <acourbot@nvidia.com>, Lyude Paul <lyude@redhat.com>, Miguel Ojeda <ojeda@kernel.org>, dri-devel@lists.freedesktop.org, rust-for-linux@vger.kernel.org, nouveau@lists.freedesktop.org, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, driver-core@lists.linux.dev, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Alice Ryhl <aliceryhl@google.com>, Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org, Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org, "Rafael J . Wysocki" <rafael@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <mripard@kernel.org>, David Airlie <airlied@gmail.com>, Benno Lossin <lossin@kernel.org>, linaro-mm-sig@lists.linaro.org, Danilo Krummrich <dakr@kernel.org>, Mukesh Kumar Chaurasiya <mkchauras@gmail.com>, Asahi Lina <lina+kernel@asahilina.net>, Daniel Almeida <daniel.almeida@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v18 0/4] Rust bindings for gem shmem
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/NCRSRORPP6FSUWHQ2YYCHATBBBP2RUIS/>
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
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:gary@garyguo.net,m:acourbot@nvidia.com,m:lyude@redhat.com,m:ojeda@kernel.org,m:dri-devel@lists.freedesktop.org,m:rust-for-linux@vger.kernel.org,m:nouveau@lists.freedesktop.org,m:christian.koenig@amd.com,m:driver-core@lists.linux.dev,m:maarten.lankhorst@linux.intel.com,m:aliceryhl@google.com,m:simona@ffwll.ch,m:linux-kernel@vger.kernel.org,m:sumit.semwal@linaro.org,m:linux-media@vger.kernel.org,m:rafael@kernel.org,m:tzimmermann@suse.de,m:mripard@kernel.org,m:airlied@gmail.com,m:lossin@kernel.org,m:linaro-mm-sig@lists.linaro.org,m:dakr@kernel.org,m:mkchauras@gmail.com,m:lina+kernel@asahilina.net,m:daniel.almeida@collabora.com,m:gregkh@linuxfoundation.org,m:lina@asahilina.net,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[26];
	FORGED_SENDER(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[nvidia.com,redhat.com,kernel.org,lists.freedesktop.org,vger.kernel.org,amd.com,lists.linux.dev,linux.intel.com,google.com,ffwll.ch,linaro.org,suse.de,gmail.com,lists.linaro.org,asahilina.net,collabora.com,linuxfoundation.org];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[miguelojedasandonis@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig,kernel];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:-];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,garyguo.net:email,lists.linaro.org:helo,lists.linaro.org:rdns,lists.linaro.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 636FF650CBA

T24gU3VuLCBKdW4gNywgMjAyNiBhdCAyOjE34oCvUE0gR2FyeSBHdW8gPGdhcnlAZ2FyeWd1by5u
ZXQ+IHdyb3RlOg0KPg0KPiBJTU8gd2UgcmVhbGx5IHNob3VsZG4ndCB1c2UgQ2xpcHB5IHRvIGdl
bmVyYXRlIGNvZGUuIFdlIHNwZW50IHRvbyBtdWNoIGVmZm9ydCBpbg0KPiBmaXhpbmcgY29kZWdl
biBpc3N1ZXMgdGhhdCBhcmUgb25seSBwcmVzZW50IHdoZW4gZHJpdmVuIGJ5IGNsaXBweS4NCj4N
Cj4gV2Ugc2hvdWxkIGp1c3QgcnVuIGEgY2hlY2sgcGhhc2Ugd2l0aCBjbGlwcHkgdG8gZ2V0IHRo
ZSBsaW50cyBvbmx5LCBhbmQgdGhlbiB1c2UNCj4gcnVzdGMgdG8gZ2VuZXJhdGUgYWN0dWFsIGNv
ZGUuDQoNClllYWgsIGdpdmVuIHRoZSB0cm91YmxlIGl0IGlzIGdpdmluZywgSSB0aGluayB0aGF0
IHdpbGwgcHJvYmFibHkgYmUgYQ0KYmV0dGVyIGFwcHJvYWNoIG1lZGl1bSB0ZXJtLiBJIGRvbid0
IGxvdmUgaXQsIGJlY2F1c2UgdGhlIG9yaWdpbmFsDQppZGVhIHdhcyB0byBhdm9pZCBzdWNoIGFu
IGV4dHJhIHBoYXNlLCBidXQgaXQgaXMgZGVmaW5pdGVseSBiZXR0ZXIgdnMuDQpyYW5kb20gc291
cmNlIGNvZGUgY2hhbmdlcy4uLg0KDQpXZSBjb3VsZCBhbHNvIGluY3JlYXNlIHRoZSBzeW1ib2wg
c2l6ZS1yZWxhdGVkIHZhcmlhYmxlcw0KKGBLU1lNX05BTUVfTEVOYCwgYFNaYCBpbiBgbW9kcG9z
dGAuLi4pIG9ubHkgZm9yIENsaXBweSBidWlsZHMgdG8gYQ0KbHVkaWNyb3VzIHZhbHVlLiBUaGUg
ZXh0cmEgcGhhc2UgYXBwcm9hY2ggd291bGQgYXZvaWQgc3VycHJpc2VzIG1vcmUNCmdlbmVyYWxs
eSB0aG91Z2gsIHNvIEkgbGlrZSBpdCBpbiB0aGF0IHNlbnNlLCBhbmQgaGFzIHRoZSBpbXBsaWNp
dA0KYWR2YW50YWdlIG9mIGF2b2lkaW5nIHNvbWVvbmUgdXNpbmcgYSBDbGlwcHkga2VybmVsIGlu
IHByb2R1Y3Rpb24gYnkNCm1pc3Rha2UuDQoNCk9rLCBJIGNhbiB0YWtlIGEgbG9vayBhdCB0aGF0
LiBGb3Igbm93LCBJIHdpbGwgcGljayB0aGUgb3RoZXIgcGF0Y2guDQoNCkNoZWVycywNCk1pZ3Vl
bA0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJv
LW1tLXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRv
IHVuc3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5s
aW5hcm8ub3JnCg==
