Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [44.210.186.118])
	by mail.lfdr.de (Postfix) with ESMTPS id E2FA7D37AC8
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 18:52:40 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 68CE3401BA
	for <lists+linaro-mm-sig@lfdr.de>; Fri, 16 Jan 2026 17:45:06 +0000 (UTC)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com [209.85.160.174])
	by lists.linaro.org (Postfix) with ESMTPS id 7777F3F7FD
	for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 17:45:00 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=GJUHhZMV;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.174 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	arc=pass ("google.com:s=arc-20240605:i=1");
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f174.google.com with SMTP id d75a77b69052e-50299648ae9so548041cf.1
        for <linaro-mm-sig@lists.linaro.org>; Fri, 16 Jan 2026 09:45:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768585500; cv=none;
        d=google.com; s=arc-20240605;
        b=kIfPoHVo9gv7wqE+N0aKtiGMtcpH1U7dI8x2Gs8symhSQAKWHkcPxEr9OZfIg5a2Vd
         4n/wH7OGiJjFZB9AMRPVqoIBToGnE20EOUNpD7oZXS5owWwDNAg8q5cjlNLVx6URUOop
         izbn1ECZjnTMFzKHAMVD5V2TFOHa1XjwgnbVnYrirp7OhEvhVVLd63xN3mYChvC1lZ8B
         dczv+4ElPmRbL2aPJZIzMSt3Q+BxeThb4GBZC/bXLvJYFkxkJs7jKtBh30WspC6mM/Gu
         192MU4Oh+BngLpeW5CP7ro2cHTfYi6+VjQf1lv2Nefz71L+vBZg58iWRFIB+586/KFbw
         ZvuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gl4zFmzxCsueRoLVdUzaTLfY6+bubb8ahnOUlhxx4jc=;
        fh=rLAzlnz1L4yj2p51pa6c5XNtuss9Dw8PPO1iVV3libc=;
        b=NSM7VjpkVvOY6v6ne28UuAg9okjnoothya/Zrhi4BJOXWn98M8kL9EM3MSgjO1ednA
         lIsUcWU/pMYxS3qoUGady0HUr5Wxd7jJi0JdoT6Y+c/aSF1/eU7xDEoDOkJ0Q5Sue08T
         jNI5maEzEYNLZHm4R/HquozYKVWxwWqmz820oMZa806YkrftaoQPHdZjpnIuaEak6lwD
         Vxsj6qm+rQlOIyj7Yo81qUziKTB1JsPyUab+x2tEHUFjgs1KL7Qy2Paxov00faXJsVl5
         CSij2mn2kKRarL/7XsoSHJe2zE/xCFFNxVTcesRGDMe8kNzURIBts2jS861xdDJIzlg5
         V4fg==;
        darn=lists.linaro.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1768585500; x=1769190300; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gl4zFmzxCsueRoLVdUzaTLfY6+bubb8ahnOUlhxx4jc=;
        b=GJUHhZMVNSVitq4we08id/zF6DRHQkD+N8nTFbUgtYxxEUOEawKV+EVa1s1XKfzmui
         1xzlt4cwEbYmNg/wRSVFXnOaKI7J/mGuTuru+XSwNrj2HmhQRF39xVk4u3Ttuoyec2Kc
         7uISyGPeh/y46q4uZ/PpMDEbE8C4F2UJw4uqLJO5tFibB5R/G+rzogqkltWT8BKSjh2V
         oVs1PmBdtdfNoPOxUWI8DeauRnHO0oDjB4AyFLzsDStvWa8aWT3CXEgdS4heU/SxHWzA
         x+TPuLLLp82Zmct2z7TSGoI9utdnn9aoA6LLCZ/agMXhPkVP2GWPpVHu615AQuAmrBrl
         f/5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768585500; x=1769190300;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gl4zFmzxCsueRoLVdUzaTLfY6+bubb8ahnOUlhxx4jc=;
        b=A6TZtYVg2vQHNK3WcPmmgM3osL3dVzClxDwwsykz/XtCVQnYxBlVk/XkzNyC9JWc5/
         64TVh/AvFkBV4eLseNslqsSDydt6xSbFn54R3djZztDSvZqL3Opyv6hVxx6zHKTPqhOc
         A7Sss00StQ1gSHBr7Dop1GtlIu9zp7e7xkRov6u0o8Wf0nxnN7La5AnqTM+CxaIj6LnU
         +m4MSjl5Y9AGnYp/bw/SZQt05lAeePR+NSQp9cZ1LKLeYHYPVq1poTVy/TfLr7pfGUy6
         Y4YNwxhyHiJMlJF5g2C7dSLAf2g8viKmBpli0LvAaJnj67oklyqs39Innxbh7JjE70ok
         2VYw==
X-Forwarded-Encrypted: i=1; AJvYcCUoxNmWUI10WCZp1A669UvtI2mzcYFzt4QsIivBWaU6KOTuIwf4Uj9Y8PtUspaPHN3N/RpyoLwjjIvew/2r@lists.linaro.org
X-Gm-Message-State: AOJu0YxumVzcTwe2ndR2XZcesq+qdztu6I7DWYWX5V1x0ACEVa5lkDQM
	kHC5prJQkXoNyUGkz2ZShLcq5CDnpmWKNHTaseSbMAKDOnoJmP6lvEeK/lpJ2OcZEV1WeApJIr7
	Zsbh5ehXNDwSGtj83rIfyGA94VKlD7TXMKaWJ1vqS
X-Gm-Gg: AY/fxX5Eqa/gl8Rv0SM19TuX4mELoWKun/0a8/rz9Pljy3pIJWaAu0ZD6z/3MxDw3Ld
	3e2gY6veCNaDbwX+YB9SEWB0+19JFAwO1XQ2vIh2CWd5YV9yCrrm3BRhXgUVfWCm06Fl+FoBoI7
	LFE45DkLey5Jsd9niXi/CpORg/3Y7oXd/Sbf3hBDF0mqxs7j6L0Gm2kf6YNS0E+LJ1INlBOuJ20
	7E9s341uJZta5cV/eU35fi2lMityeeTT23Zj7hDPDlf5gjJINuh4gNUPhnwh/ocbVa1aZBkvR0K
	Md9RWdemf9SxuD7um31VR1kWgA==
X-Received: by 2002:a05:622a:14ce:b0:4ff:cb75:2a22 with SMTP id
 d75a77b69052e-502a367be59mr5220311cf.3.1768585499718; Fri, 16 Jan 2026
 09:44:59 -0800 (PST)
MIME-Version: 1.0
References: <20260113-dmabuf-heap-system-memcg-v2-0-e85722cc2f24@redhat.com>
In-Reply-To: <20260113-dmabuf-heap-system-memcg-v2-0-e85722cc2f24@redhat.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Fri, 16 Jan 2026 09:44:46 -0800
X-Gm-Features: AZwV_QhmPRtd-UpS9Tj_-Xhzhu9qNDWnH_sMlLv41UkfjrVz_e5Kte0Y6tFqWfs
Message-ID: <CABdmKX32wj4yHAKMT7v9Na9CFwNM=Lfcop-dPYmcAt=jaygdBA@mail.gmail.com>
To: Eric Chanudet <echanude@redhat.com>
X-Rspamd-Queue-Id: 7777F3F7FD
X-Spamd-Bar: -----
X-Spamd-Result: default: False [-5.10 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW(-1.00)[google.com:s=arc-20240605:i=1];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.174:from];
	MIME_GOOD(-0.10)[text/plain];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_ONE(0.00)[1];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
Message-ID-Hash: 75PSTYMEDHEV3HKRMWAHTLC2TYCXKQ6H
X-Message-ID-Hash: 75PSTYMEDHEV3HKRMWAHTLC2TYCXKQ6H
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Maxime Ripard <mripard@redhat.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 0/2] dma-buf: system_heap: account for system heap allocation in memcg
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/75PSTYMEDHEV3HKRMWAHTLC2TYCXKQ6H/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKYW4gMTMsIDIwMjYgYXQgMTozM+KAr1BNIEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRl
QHJlZGhhdC5jb20+IHdyb3RlOg0KPg0KPiBDYXB0dXJlIGRtYWJ1ZiBzeXN0ZW0gaGVhcCBhbGxv
Y2F0aW9ucyBpbiBtZW1jZyBmb2xsb3dpbmcgcHJpb3INCj4gY29udmVyc2F0aW9uc1sxXVsyXS4g
RGlzYWJsZSB0aGlzIGJlaGF2aW9yIGJ5IGRlZmF1bHQgdW5sZXNzIGNvbmZpZ3VyZWQNCj4gYnkg
ImRtYV9oZWFwLm1lbV9hY2NvdW50aW5nIiBtb2R1bGUgcGFyYW1ldGVyLg0KPg0KPiBbMV0gaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvZHJpLWRldmVsL1otNUdaM2tKRGJoZ1ZCUEdAcGhlbm9tLmZm
d2xsLmxvY2FsLw0KPiBbMl0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL0NBQmRtS1gyX1VP
RU51anBXMGRYZTBaMHgrNFYzb25mR0RtSGYxRE1PWGZEaGE2ZGRPQUBtYWlsLmdtYWlsLmNvbS8N
Cj4NCj4gQ2hhbmdlcyBpbiB2MjoNCj4gLSBBZGQgYSBtb2R1bGUgcGFyYW1ldGVyIHRvIGVuYWJs
ZSBkbWEtYnVmIGNncm91cCBhY2NvdW50aW5nLCBkaXNhYmxlZA0KPiAgIGJ5IGRlZmF1bHQuDQo+
IC0gU3BsaXQgc3lzdGVtX2hlYXAgbG9naWMgaW4gaXRzIG93biBjb21taXQuDQo+IC0gTGluayB0
byB2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDI1MTIxMTE5MzEwNi43NTU0ODUt
Mi1lY2hhbnVkZUByZWRoYXQuY29tLw0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBFcmljIENoYW51ZGV0
IDxlY2hhbnVkZUByZWRoYXQuY29tPg0KPiAtLS0NCj4gRXJpYyBDaGFudWRldCAoMik6DQo+ICAg
ICAgIGRtYS1idWY6IGhlYXBzOiBhZGQgcGFyYW1ldGVyIHRvIGFjY291bnQgYWxsb2NhdGlvbnMg
dXNpbmcgY2dyb3VwDQo+ICAgICAgIGRtYS1idWY6IHN5c3RlbV9oZWFwOiBhY2NvdW50IGZvciBz
eXN0ZW0gaGVhcCBhbGxvY2F0aW9uIGluIG1lbWNnDQo+DQo+ICBkcml2ZXJzL2RtYS1idWYvZG1h
LWhlYXAuYyAgICAgICAgICB8IDUgKysrKysNCj4gIGRyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0
ZW1faGVhcC5jIHwgOSArKysrKysrLS0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9u
cygrKSwgMiBkZWxldGlvbnMoLSkNCj4gLS0tDQo+IGJhc2UtY29tbWl0OiBiNzFlNjM1ZmVlZmM4
NTI0MDViMTQ2MjBhN2ZjNThjNGM4MGMwZjczDQo+IGNoYW5nZS1pZDogMjAyNjAxMDItZG1hYnVm
LWhlYXAtc3lzdGVtLW1lbWNnLWM4NmEzODFkNjYzYQ0KPg0KPiBCZXN0IHJlZ2FyZHMsDQo+IC0t
DQo+IEVyaWMgQ2hhbnVkZXQgPGVjaGFudWRlQHJlZGhhdC5jb20+DQoNClRoYW5rcyBmb3IgYWRk
aW5nIHRoZSBwYXJhbSwgTEdUTS4gTG9va2luZyBmb3J3YXJkIHRvIHYzLg0KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1tLXNpZyBtYWlsaW5n
IGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVuc3Vic2NyaWJlIHNl
bmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5hcm8ub3JnCg==
