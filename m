Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DDB3A4F2F7
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 01:48:50 +0100 (CET)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id EA9CD44B34
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  5 Mar 2025 00:48:48 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by lists.linaro.org (Postfix) with ESMTPS id 1961E43FB4
	for <linaro-mm-sig@lists.linaro.org>; Wed,  5 Mar 2025 00:48:29 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=ApgkptyA;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.41 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43ba8a87643so24455e9.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 04 Mar 2025 16:48:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1741135708; x=1741740508; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WpdfKf6RfaEe0n4JSWIwj1bvttMewhoSuLGnC7ajBRY=;
        b=ApgkptyAnk+cyYsIp6ffxs2FOuuxPmwm/9PaMphvHOKETZ6/POoo/xlw8dC0Z7JWa8
         ivSarSc4VIXWFAF+xdxfYq12Z7u/C+DxoyOgtaqtLgVcLLmqUfQK/Xnz4FbhPUrn35iX
         w0DTMRRqQtqdWqxaxDALo9L8PiWwzKoLZipNU6zhXFTYkOe9CKu+RaiBJchHfn9ZZZ7T
         8SCrBPWjY3oZfSl1reY+0K09XPnBR5nxbcRN82qBPu2kYoeFRyOZHiY4vEcLIrgDkJ1d
         HXhK5qynOgsq2LT8GbjOQCnz3Lu2ewa5FV3EYGOn28VrLVbV6CNJcRD4vUaxZ49DQHv1
         fDMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741135708; x=1741740508;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WpdfKf6RfaEe0n4JSWIwj1bvttMewhoSuLGnC7ajBRY=;
        b=MK7ZxzbQKv0GVYsxHHvBetiujraP+ZBvc3CfO+29O9rKuZHEIOFo7qcNtB+2WRpPSd
         1WOdFCK0HnaMBO3A+4fqOBklUEYx/i6LVfNZraal+0+bmF9RkUXcVj92sOsDnaIFkesU
         D9GRE8sS16hIs8Puyrt6gXtzBNsmf++VwTutGJddd9PAC8Qd9FwlMNVNZ9sVMW42wo54
         F6Y+QsIg3vFsCOmrPEZj+1LCc1hkZVBA5bzNkYvY0e+vBGzkXf4wRKHKkCV+WPNdrzFj
         sSMOJn9FkY8x6uJD5RbkKZbr5u8/xNZIM2UMbuQDyPk5EX6jt8aFoqk11+WMBO7xGuFx
         /6sA==
X-Forwarded-Encrypted: i=1; AJvYcCUnaWJ56ZkCMhh/7hy7m0pHuFtWFV9OCBhGnf6dSm9nwjfzgUov2rNoBPp3c9RlNILtpTMNTZGZwtRGZSQg@lists.linaro.org
X-Gm-Message-State: AOJu0YzOCunxlIjxMxIWM/vJBX9ES8EJOESGOtS3hbDEAeibBDUWTYvn
	WhGkmw41e4B5qzAZeU+nlu5SbAK2VVKLhn1EU1EfKpefpzZEksKjxphrm4vbB/RdQUeR9cYR0d9
	52g68scO5rQsfrTPYQQly6yvp7R8HCuME1I0Z
X-Gm-Gg: ASbGncv+UD725Fu5LdEcS9V39dQB3Xf8GztVpPkfoglwMANIJOn1Xs2JgiBfxHS1NVP
	3K/WDDidorTENYC9TDBx4k0+WRQqxPvDTf5KlmX/1PRWm/9XPXY2ljWzON8OuHtceEUcSFL4UU6
	tNmYj24IQWVMEDJXat++H+Gp9bKmxqeAesnVnJEPTPFDnuwwL6xhZu26cp
X-Google-Smtp-Source: AGHT+IHS/CmjXgegGcxmRpNS98l46ZS6jKoa5Lns8rQL3j5jNusGGs4P4kOCp/wB0pBcvC4rGkpBgAWFwp9wMlZaewY=
X-Received: by 2002:a05:600c:a20e:b0:439:7fc2:c7ad with SMTP id
 5b1f17b1804b1-43bd360dd0bmr264395e9.7.1741135707908; Tue, 04 Mar 2025
 16:48:27 -0800 (PST)
MIME-Version: 1.0
References: <20250303160249.118549-1-mripard@kernel.org>
In-Reply-To: <20250303160249.118549-1-mripard@kernel.org>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 4 Mar 2025 16:48:16 -0800
X-Gm-Features: AQ5f1Jq3ZGx0qLsX7f-KsnmsL9RZFbs2tncfnAJKVdS694Nl6LlvniytB56xX18
Message-ID: <CABdmKX2bA3R3RTvzaRTj5313o5cxdhf8b30YTNNKFq5Bqs09=Q@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 1961E43FB4
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	RBL_SENDERSCORE_REPUT_7(0.50)[209.85.128.41:from];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	ARC_NA(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[google.com,reject];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	MIME_TRACE(0.00)[0:+];
	R_SPF_ALLOW(0.00)[+ip4:209.85.128.0/17];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.41:from];
	NEURAL_HAM(-0.00)[-0.992];
	R_DKIM_ALLOW(0.00)[google.com:s=20230601];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: ZBBJRMBWXYSJRT6LF7R2IF446QXLBF2Q
X-Message-ID-Hash: ZBBJRMBWXYSJRT6LF7R2IF446QXLBF2Q
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Jonathan Corbet <corbet@lwn.net>, Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, John Stultz <jstultz@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-media@vger.kernel.org, linux-doc@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v3] Documentation: dma-buf: heaps: Add heap name definitions
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZBBJRMBWXYSJRT6LF7R2IF446QXLBF2Q/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCBNYXIgMywgMjAyNSBhdCA4OjAy4oCvQU0gTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBr
ZXJuZWwub3JnPiB3cm90ZToNCj4NCj4gRm9sbG93aW5nIGEgcmVjZW50IGRpc2N1c3Npb24gYXQg
bGFzdCBQbHVtYmVycywgSm9obiBTdHVsdHosIFN1bWl0DQo+IFNld2FsLCBUSiBNZXJjaWVyIGFu
ZCBJIGNhbWUgdG8gYW4gYWdyZWVtZW50IHRoYXQgd2Ugc2hvdWxkIGRvY3VtZW50DQo+IHdoYXQg
dGhlIGRtYS1idWYgaGVhcHMgbmFtZXMgYXJlIGV4cGVjdGVkIHRvIGJlLCBhbmQgd2hhdCB0aGUg
YnVmZmVycw0KPiBhdHRyaWJ1dGVzIHlvdSdsbCBnZXQgc2hvdWxkIGJlIGRvY3VtZW50ZWQuDQo+
DQo+IExldCdzIGNyZWF0ZSB0aGF0IGRvYyB0byBtYWtlIHN1cmUgdGhvc2UgYXR0cmlidXRlcyBh
bmQgbmFtZXMgYXJlDQo+IGd1YXJhbnRlZWQgZ29pbmcgZm9yd2FyZC4NCj4NCj4gU2lnbmVkLW9m
Zi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPg0KPg0KPg0KPiAtLS0NCj4N
Cj4gQ2hhbmdlcyBmcm9tIHYyOg0KPiAgIC0gUmVtb3ZlIGV4aGF1c3RpdmUgbGlzdCBvZiBuYW1l
cyBmb3IgcGxhdGZvcm1zLCBhbmQganVzdCBtZW50aW9uIHRoZQ0KPiAgICAgYWx0ZXJuYXRpdmVz
Lg0KPiAgIC0gQWRkIE1BSU5UQUlORVJTIGVudHJ5DQo+DQo+IENoYW5nZXMgZnJvbSB2MToNCj4g
ICAtIEFkZCB0aGUgbWVudGlvbiB0aGF0IHRoZSBjbWEgLyByZXNlcnZlZCBoZWFwIGlzIG9wdGlv
bmFsLg0KPiAtLS0NCj4gIERvY3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBz
LnJzdCB8IDI1ICsrKysrKysrKysrKysrKysrKysNCj4gIERvY3VtZW50YXRpb24vdXNlcnNwYWNl
LWFwaS9pbmRleC5yc3QgICAgICAgICB8ICAxICsNCj4gIE1BSU5UQUlORVJTICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB8ICAxICsNCj4gIDMgZmlsZXMgY2hhbmdlZCwgMjcgaW5z
ZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vdXNlcnNwYWNl
LWFwaS9kbWEtYnVmLWhlYXBzLnJzdA0KPg0KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0IGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2Ut
YXBpL2RtYS1idWYtaGVhcHMucnN0DQo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0DQo+IGluZGV4IDAw
MDAwMDAwMDAwMC4uNWI5MmQ2OTY0NmY2DQo+IC0tLSAvZGV2L251bGwNCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi91c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0DQo+IEBAIC0wLDAgKzEsMjUg
QEANCj4gKy4uIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wDQo+ICsNCj4gKz09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiArQWxsb2NhdGluZyBkbWEtYnVmIHVzaW5nIGhl
YXBzDQo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCj4gKw0KPiArRG1hLWJ1ZiBI
ZWFwcyBhcmUgYSB3YXkgZm9yIHVzZXJzcGFjZSB0byBhbGxvY2F0ZSBkbWEtYnVmIG9iamVjdHMu
IFRoZXkgYXJlDQo+ICt0eXBpY2FsbHkgdXNlZCB0byBhbGxvY2F0ZSBidWZmZXJzIGZyb20gYSBz
cGVjaWZpYyBhbGxvY2F0aW9uIHBvb2wsIG9yIHRvIHNoYXJlDQo+ICtidWZmZXJzIGFjcm9zcyBm
cmFtZXdvcmtzLg0KPiArDQo+ICtIZWFwcw0KPiArPT09PT0NCj4gKw0KPiArQSBoZWFwIHJlcHJl
c2VudCBhIHNwZWNpZmljIGFsbG9jYXRvci4gVGhlIExpbnV4IGtlcm5lbCBjdXJyZW50bHkgc3Vw
cG9ydHMgdGhlDQoNCiJyZXByZXNlbnRzIg0KDQo+ICtmb2xsb3dpbmcgaGVhcHM6DQo+ICsNCj4g
KyAtIFRoZSBgYHN5c3RlbWBgIGhlYXAgYWxsb2NhdGVzIHZpcnR1YWxseSBjb250aWd1b3VzLCBj
YWNoZWFibGUsIGJ1ZmZlcnMNCg0KUGVyaW9kIGF0IHRoZSBlbmQ/DQoNClRoaXMgZGVzY3JpcHRp
b24gaXMgbXkgdW5kZXJzdGFuZGluZyBvZiB0aGUgY3VycmVudCBzdGF0ZSBvZiB0aGluZ3MsIHNv
Og0KUmV2aWV3ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW5hcm8tbW0tc2ln
IG1haWxpbmcgbGlzdCAtLSBsaW5hcm8tbW0tc2lnQGxpc3RzLmxpbmFyby5vcmcKVG8gdW5zdWJz
Y3JpYmUgc2VuZCBhbiBlbWFpbCB0byBsaW5hcm8tbW0tc2lnLWxlYXZlQGxpc3RzLmxpbmFyby5v
cmcK
