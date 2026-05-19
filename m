Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CBKFOA9gDGpvggUAu9opvQ
	(envelope-from <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>)
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:05:19 +0200
X-Original-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id 640A857F468
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 15:05:19 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4EF4640961
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 19 May 2026 13:05:18 +0000 (UTC)
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	by lists.linaro.org (Postfix) with ESMTPS id C3977401E2
	for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 13:05:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=PIy8BuBZ;
	arc=pass ("google.com:s=arc-20240605:i=1");
	spf=pass (lists.linaro.org: domain of mikhail.v.gavrilov@gmail.com designates 209.85.210.50 as permitted sender) smtp.mailfrom=mikhail.v.gavrilov@gmail.com;
	dmarc=pass (policy=none) header.from=gmail.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7e55b95ba13so1974468a34.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 19 May 2026 06:05:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779195914; cv=none;
        d=google.com; s=arc-20240605;
        b=axwLdiMAIGl4cjfqXLECWZKRfyXE0Bs0rN2rxfUoAe2KuGq+JTDP0aLWkK/35x7mPP
         Yrc5u4m6OYXWMELYtuoTmKbM/uu/N29LRLmGlhCKKGuM9fwAvFMjoVulMAhLaIGrFNpf
         45mynVi4B6XSaTt6ZS9Y5sUy0sKruoxLM05Rw4xU+IpsWxsKyyf2oh8nlzDIzWnncdhx
         oFhJvkMcyy6GoXhNXrNkouboLyWf2irr9OKgwmdmNdPBL9eTasxLS4vquBw39kcf8Su9
         p3jffTEIy6SJt3pe4sTwM4UdTlNLE6CEwAphjYOzcXBudq4cUt/SHNOL/NaoXPAT9Acp
         TEcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=TjyeZ+mSATOr/oLHbZdmIDYIxgcfoHII5fmcydeHYjc=;
        fh=MUjvvQoKmAVfoPLO2p4ZDRvg+j+YOb03Sy3H0Jwgzfo=;
        b=hlec0HLrqVUKOWBJGsIhpPSN4gbK8jW3+chHhjrH1x79/SejnVASksld59GKhS5w/5
         w65Oqh3wvMAl7UyO+d1Sfq4+b/DEfQ8GWuXMNhQP8WAgVIOY7M3sD9zlU9LLXglxnT5k
         MQsNY8JH/2u7PJdJNjnUfXoG/j88AO0k44Gagdi4uv/YpruSCPlyLff5M8bwSw6ZvaPm
         Hg+T3G/Fi3/+tmItSs/65h7oVQxYDj0gsg8llwPE9QeahpAYOPjJ1QIsFbUAqce3hGe4
         CyMArl+jXSSw/zjuiDIkb4m7pHcvvhRXNYsvszY8Gg2sAt2rsZfZ9hyo6nETBRTElzds
         8xfQ==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779195914; x=1779800714; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TjyeZ+mSATOr/oLHbZdmIDYIxgcfoHII5fmcydeHYjc=;
        b=PIy8BuBZRi3MaDn0+yf3pJvakBiIrIGoC2hqnsSEVbkthn1kLf6Tglrwt+x/h7VTSP
         ppFUsRb5JS0qBpyOu28F0h+0Zia0uSyqzjKkVs4I8unftDbeoT1LO/lfQC/9hVd0Vocs
         ns7aS2ya+rQ3NaHtmSvLE+vnmjBx98Bvp4EN8Yi4yyyh/NPGjxiWwmNwiGA5oO402Sk5
         1JHxTVaQo8X2WJ/A0DwNScE/K7lchChzoxqlwNPPISwv7eQ8tU8QjB05bigusPltvt3D
         Oi1uaDZHbMBehfsszgV9fGmgEVA3OMvqBCnB7R9lXTap+YX8Zhq3vlvJ/SaAVYWFEmSf
         xLNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779195914; x=1779800714;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=TjyeZ+mSATOr/oLHbZdmIDYIxgcfoHII5fmcydeHYjc=;
        b=Rd99vDHy10w0dkCZN/vnSAdGoJhYt6QGzbkmT+NlXvN/wu5BRXHjRk42oNK4XpGbjl
         FO+gi9RzZobR0m15lNOF/phSWMNKdh6ZQqJD1muJ/HaIABhwKvvmDYOQteXnwu6MzNs6
         1lce/0J1HNEpvd3d36b6lA4teECuPbjBtNIWXGXE71OjQPSpHVNaETCcrtLF9RuMksqm
         y2nC/B3j9tE0Nv1/cxmDwl+x/qpTxYWInzy1kni6EWzXMsOoWF8BVKul71Rbq3zbAw56
         CPFRrdeuBCXxwu7ujGVjXrPgIrrCohzrStGDR7gaY73YhdSGzCgM/SnVtkAhLq8BbzQP
         GAJg==
X-Forwarded-Encrypted: i=1; AFNElJ+pJ7FJvZ2HNW5HmyIOGqovK4aMjniRjBY/7H6gNOzXR19i0aAB7i7xxcl7qci1mb1ByfoPj1FCByENWlb6@lists.linaro.org
X-Gm-Message-State: AOJu0Yy2KLsH3MsUy6G2IMiM0rNr6Kxo60SB0k5R0QmMSt+ZVsd42jRG
	eAAajN876RN7DSgFnGvjvKCoSvEQWzdkVJTY/+ouF063bHJ6epwoXjl0/VP6DgU7mBza4wxkxtq
	kBeeXYvr12//xRtTBefvaQm9QnjHH6MM=
X-Gm-Gg: Acq92OFTgT0m8Gh3SAZy5a7KIRj//UI8vUiUi5WFElbE/KTezLvCBTgSzZVuL3CKjz+
	JsrCH+JXLVok5VkrbnSjXTsX8cXkjnLsNCIx0gkTqTyxcX5yPMaeIRqaMR+lOq2KWug3fU5LgiN
	jfEXlr9P4hEgYFDKiyHS/Z9+6zp5zTBYOP0ZpmsCCIaqlg5rl26V6lPbk2K91kilA2sSw1l5qqV
	1NXS186gbhzNO8sTPb59D5CMuQUXBH3EMNBV6QZFTTZmHj1qMHb+7H7+d/CNpVA6U9ujhKG1XUS
	8sH4FHJrFA==
X-Received: by 2002:a9d:454c:0:b0:7e5:b3f6:c6ad with SMTP id
 46e09a7af769-7e5b3f6dde6mr1978777a34.4.1779195914046; Tue, 19 May 2026
 06:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
In-Reply-To: <20260429143743.50743-1-mikhail.v.gavrilov@gmail.com>
From: Mikhail Gavrilov <mikhail.v.gavrilov@gmail.com>
Date: Tue, 19 May 2026 18:05:00 +0500
X-Gm-Features: AVHnY4KCjg5xnLKDTpF_UzV8orViAi1sRvhjRQeLBblOdok117UByI2OEfFaxHs
Message-ID: <CABXGCsM_YJ+UY86yFJF-jBcbQXRoc0qnSw0saaGWnaSYWG0mmQ@mail.gmail.com>
To: amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
X-Spamd-Bar: -----
Message-ID-Hash: QZEGV2RB3BYGLEQGAPTHJ6WGPE3ZXWYM
X-Message-ID-Hash: QZEGV2RB3BYGLEQGAPTHJ6WGPE3ZXWYM
X-MailFrom: mikhail.v.gavrilov@gmail.com
X-Mailman-Rule-Hits: member-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address
CC: stable@vger.kernel.org, Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Sumit Semwal <sumit.semwal@linaro.org>, Pierre-Eric Pelloux-Prayer <pierre-eric.pelloux-prayer@amd.com>, linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] drm/amdgpu: fix recursive ww_mutex acquire in amdgpu_devcoredump_format
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/QZEGV2RB3BYGLEQGAPTHJ6WGPE3ZXWYM/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
X-Spamd-Result: default: False [1.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_REJECT(1.00)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[lists,linaro-mm-sig=lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,amd.com,gmail.com,ffwll.ch,linaro.org,lists.linaro.org];
	DKIM_TRACE(0.00)[gmail.com:-];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mikhailvgavrilov@gmail.com,linaro-mm-sig-bounces@lists.linaro.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[linaro-mm-sig];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:14618, ipnet:44.192.0.0/11, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 640A857F468
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCBBcHIgMjksIDIwMjYgYXQgNzozN+KAr1BNIE1pa2hhaWwgR2F2cmlsb3YNCjxtaWto
YWlsLnYuZ2F2cmlsb3ZAZ21haWwuY29tPiB3cm90ZToNCj4NCj4gV2hlbiBkdW1waW5nIElCIGNv
bnRlbnRzIGZyb20gYSBodW5nIGpvYiwgYW1kZ3B1X2RldmNvcmVkdW1wX2Zvcm1hdCgpDQo+IGFj
cXVpcmVzIHRoZSBWTSByb290IFBEJ3MgcmVzZXJ2YXRpb24gbG9jayB2aWEgYW1kZ3B1X3ZtX2xv
Y2tfYnlfcGFzaWQoKQ0KPiBhbmQgdGhlbiwgZm9yIGVhY2ggSUIgcmVmZXJlbmNlZCBieSB0aGUg
am9iLCBjYWxscyBhbWRncHVfYm9fcmVzZXJ2ZSgpDQo+IG9uIHRoZSBCTyB0aGF0IGJhY2tzIHRo
ZSBJQi4gIEJvdGggcmVzZXJ2YXRpb25zIGFyZSB0YWtlbiBvbg0KPiByZXNlcnZhdGlvbl93d19j
bGFzc19tdXRleCBvYmplY3RzIGJ1dCBuZWl0aGVyIHVzZXMgYSB3d19hY3F1aXJlX2N0eCwNCj4g
d2hpY2ggdHJpcHMgbG9ja2RlcDoNCj4NCj4gICBXQVJOSU5HOiBwb3NzaWJsZSByZWN1cnNpdmUg
bG9ja2luZyBkZXRlY3RlZA0KPiAgIC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tDQo+ICAga3dvcmtlci91MTI4OjAgaXMgdHJ5aW5nIHRvIGFjcXVpcmUgbG9jazoN
Cj4gICBmZmZmODg4MzhiMTZlMWYwIChyZXNlcnZhdGlvbl93d19jbGFzc19tdXRleCl7Ky4rLn0t
ezQ6NH0sDQo+ICAgICBhdDogYW1kZ3B1X2RldmNvcmVkdW1wX2Zvcm1hdCsweDE1OTQvMHgyM2Yw
IFthbWRncHVdDQo+DQo+ICAgYnV0IHRhc2sgaXMgYWxyZWFkeSBob2xkaW5nIGxvY2s6DQo+ICAg
ZmZmZjg4ODJmODI2ODFmMCAocmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0ZXgpeysuKy59LXs0OjR9
LA0KPiAgICAgYXQ6IGFtZGdwdV9kZXZjb3JlZHVtcF9mb3JtYXQrMHgxNTk0LzB4MjNmMCBbYW1k
Z3B1XQ0KPg0KPiAgICBQb3NzaWJsZSB1bnNhZmUgbG9ja2luZyBzY2VuYXJpbzoNCj4gICAgICAg
ICAgQ1BVMA0KPiAgICAgICAgICAtLS0tDQo+ICAgICBsb2NrKHJlc2VydmF0aW9uX3d3X2NsYXNz
X211dGV4KTsNCj4gICAgIGxvY2socmVzZXJ2YXRpb25fd3dfY2xhc3NfbXV0ZXgpOw0KPg0KPiAg
ICAqKiogREVBRExPQ0sgKioqDQo+ICAgIE1heSBiZSBkdWUgdG8gbWlzc2luZyBsb2NrIG5lc3Rp
bmcgbm90YXRpb24NCj4NCj4gICBXb3JrcXVldWU6IGV2ZW50c191bmJvdW5kIGFtZGdwdV9kZXZj
b3JlZHVtcF9kZWZlcnJlZF93b3JrIFthbWRncHVdDQo+ICAgQ2FsbCBUcmFjZToNCj4gICAgX193
d19tdXRleF9sb2NrLmNvbnN0cHJvcC4wDQo+ICAgIHd3X211dGV4X2xvY2sNCj4gICAgYW1kZ3B1
X2JvX3Jlc2VydmUNCj4gICAgYW1kZ3B1X2RldmNvcmVkdW1wX2Zvcm1hdCsweDE1OTQgW2FtZGdw
dV0NCj4gICAgYW1kZ3B1X2RldmNvcmVkdW1wX2RlZmVycmVkX3dvcmsrMHhlYSBbYW1kZ3B1XQ0K
PiAgICBwcm9jZXNzX29uZV93b3JrDQo+ICAgIHdvcmtlcl90aHJlYWQNCj4gICAga3RocmVhZA0K
Pg0KDQpGcmllbmRseSBwaW5nLiBQaWVycmUtRXJpYywgQ2hyaXN0aWFuLCBBbGV4IOKAlCBhbnkg
dGhvdWdodHMgb24gdGhpcyBmaXg/DQoNCkhhcHB5IHRvIHNwaW4gYSB2MiB3aXRoIGFueSByZXZp
ZXcgZmVlZGJhY2suIE9uZSB0aGluZyBJJ20gYXdhcmUgb2Y6DQp0aGUgYENjOiBzdGFibGVAdmdl
ci5rZXJuZWwub3JnICMgNy4xYCB0YWcgaXMgcHJvYmFibHkgdW5uZWNlc3NhcnkNCnNpbmNlIHRo
ZSByZWdyZXNzaW9uIG9ubHkgbGFuZGVkIGluIDcuMS1yYzEgYW5kIHRoZSBmaXggd2lsbCByZWFj
aCA3LjENCmZpbmFsIG5hdHVyYWxseSB2aWEgZHJtLWZpeGVzOyBJIGNhbiBkcm9wIGl0IGluIHYy
IGlmIHByZWZlcnJlZC4NCg0KLS0gDQpCZXN0IFJlZ2FyZHMsDQpNaWtlIEdhdnJpbG92Lg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNp
ZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vi
c2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8u
b3JnCg==
