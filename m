Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 68638ABEA07
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 04:47:05 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 4FD8945994
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 21 May 2025 02:47:04 +0000 (UTC)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by lists.linaro.org (Postfix) with ESMTPS id 975563F6A9
	for <linaro-mm-sig@lists.linaro.org>; Wed, 21 May 2025 02:46:52 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=iQ5JMrDe;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.208.176 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32934448e8bso4934061fa.3
        for <linaro-mm-sig@lists.linaro.org>; Tue, 20 May 2025 19:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1747795611; x=1748400411; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nxt6arEcdTzqN2aNV7xZMthDenOsecbhCIniDpCb5w8=;
        b=iQ5JMrDeWkT7/Prs/rd/ZlPoGi4NmfcMRakkUpQdl3XEjVMYcS0A9+88geWzKEKBjf
         yPwo2gmsweetS3VntB3p0m6wV/IOkFsNQRBeKJLXMLCajN6PBH0cltLPaxCzcK15HGpM
         ymhP2D8hOdT0Py4p8B6RWWdi4IaIfUKBWyMbYys3BOzmG/EoYp7Nd1SjMC+gXgOKwadF
         HTd9PAYNqCYG21Vo+KMnJjrvJVA251M7/GF0L2TXs7zmglO9qzIuoipSkogdviu99lS5
         YhCBuUebT0JeeXi5gjxeXdrDsexKfSmIDvOS6ADpChq3nL4zEo+6czzPZiosIh9RxbUf
         jTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747795611; x=1748400411;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nxt6arEcdTzqN2aNV7xZMthDenOsecbhCIniDpCb5w8=;
        b=aT9EvPQUjk5YLxawFazzAX2SHyK349tr5ZU6vzaTQ7BveGFcuT/uwqgUuoJxP4sU46
         X8Cgt9tBea7taTWloq9jCAH7MhEsjqJX8Yw4YsnnuqJfQLrcHMGJ+ay5CdWeeRJaFsOT
         qyS5JlLnIhVeKcqWAsdJpUTQ25mZpO/lSMeSb023h5UbHlQLJZHMY0/xtCx1kLBDdntZ
         E/BAKNbzpX/qbFjixNYH7nLTbRf4NwkfShE1hcgtSjxzYTUY23ny6S/SLzgJjOaFzwcs
         oVywdKlPk5BVOtzptuSVapALXEdnX4TGqixtbaZ3NG8LZ5NM8mbQ7gvV9xTlUswYyr75
         8yTA==
X-Forwarded-Encrypted: i=1; AJvYcCXRzuAE48TmWfYrQ8F13uARs/ypVEOBViMKkHMoq9J/kdtv2POLh3ZFVPbZWmHmsUo4tR47q3bP/sC++QSw@lists.linaro.org
X-Gm-Message-State: AOJu0YxesHAgCQDfEn3LEpqDU2BO6UJdqFj7IBELKki+kFxOmlLrAJri
	mvV/1bTgEhBkfpJufYfIKjsfst+KECFtEZZzFiQ839lZLTbF6aHmeABV/NhVps5RrtZMeM0PWNH
	CqxfinMQWs8SBln4VN3QgOdj8vbPJqR4e1qR+NhI=
X-Gm-Gg: ASbGncvzvnFVCxEsHl5Ia5gdLgAPk4yzugtUT8hGdPbx0J3ddVDneGm+NPD3CwAk0hM
	SLn9lHtxU51B2EAGXo2QFDa0aJ6lidrh9ZLAUhvmFYM09HnUqOfb8TkJRTubDS0NBOt93gZgYvi
	j/VMNg3gMWcjrIFC0jXt20f/E4J+e0BPvP4Sg6i55KmhfGYv67gImYu0xBqoN9zyLYm6fZ1pE=
X-Google-Smtp-Source: AGHT+IHPiBTH/IUONoliZXjExrOKudiG9XvffXjRUKLNtiXlLaXy9m8H+bx6CRbSWTdibiF38hi9o5vXfOGfvKq6xdY=
X-Received: by 2002:a05:651c:54c:b0:30c:201a:149a with SMTP id
 38308e7fff4ca-328077a9f1bmr71629351fa.25.1747795611095; Tue, 20 May 2025
 19:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org>
In-Reply-To: <20250520-dma-buf-heap-names-doc-v1-1-ab31f74809ee@kernel.org>
From: John Stultz <jstultz@google.com>
Date: Tue, 20 May 2025 19:46:39 -0700
X-Gm-Features: AX0GCFvaIAnE0yZNsTcLxjSWVR6RvkV3hbcw5IoUnGn4QI2anEO8q4-VMGo9Bvw
Message-ID: <CANDhNCoQ=V5Uk0ThmeHdn20xmUucPb-mjCjX5pbM94EvzGRZMw@mail.gmail.com>
To: Maxime Ripard <mripard@kernel.org>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Spamd-Result: default: False [-8.00 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	MISSING_XM_UA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_NONE(0.00)[google.com:dkim];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.208.176:from];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[209.85.208.176:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	URIBL_BLOCKED(0.00)[mail-lj1-f176.google.com:rdns,mail-lj1-f176.google.com:helo,2.128.222.128:email];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Queue-Id: 975563F6A9
X-Spamd-Bar: -------
Message-ID-Hash: XPWGIUBA5Y3TVLAKQLOZZTUIMBARVID3
X-Message-ID-Hash: XPWGIUBA5Y3TVLAKQLOZZTUIMBARVID3
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, "T.J. Mercier" <tjmercier@google.com>, Jonathan Corbet <corbet@lwn.net>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH] Documentation: dma-buf: heaps: Add naming guidelines
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/XPWGIUBA5Y3TVLAKQLOZZTUIMBARVID3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBNYXkgMjAsIDIwMjUgYXQgMzowMOKAr0FNIE1heGltZSBSaXBhcmQgPG1yaXBhcmRA
a2VybmVsLm9yZz4gd3JvdGU6DQo+DQo+IFdlJ3ZlIGRpc2N1c3NlZCBhIG51bWJlciBvZiB0aW1l
cyBvZiBob3cgc29tZSBoZWFwIG5hbWVzIGFyZSBiYWQsIGJ1dA0KPiBub3QgcmVhbGx5IHdoYXQg
bWFrZXMgYSBnb29kIGhlYXAgbmFtZS4NCj4NCj4gTGV0J3MgZG9jdW1lbnQgd2hhdCB3ZSBleHBl
Y3QgdGhlIGhlYXAgbmFtZXMgdG8gbG9vayBsaWtlLg0KPg0KPiBTaWduZWQtb2ZmLWJ5OiBNYXhp
bWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+DQo+IC0tLQ0KPiAgRG9jdW1lbnRhdGlvbi91
c2Vyc3BhY2UtYXBpL2RtYS1idWYtaGVhcHMucnN0IHwgMTkgKysrKysrKysrKysrKysrKysrKw0K
PiAgMSBmaWxlIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykNCj4NCj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJzdCBiL0RvY3VtZW50YXRp
b24vdXNlcnNwYWNlLWFwaS9kbWEtYnVmLWhlYXBzLnJzdA0KPiBpbmRleCA1MzVmNDkwNDdjZTY0
NTA3OTZiZjQzODBjOTg5ZTEwOTM1NWVmYzA1Li5iMjQ2MThlMzYwYTlhOWJhMGJkODUxMzVkOGMx
NzYwNzc2ZjFhMzdmIDEwMDY0NA0KPiAtLS0gYS9Eb2N1bWVudGF0aW9uL3VzZXJzcGFjZS1hcGkv
ZG1hLWJ1Zi1oZWFwcy5yc3QNCj4gKysrIGIvRG9jdW1lbnRhdGlvbi91c2Vyc3BhY2UtYXBpL2Rt
YS1idWYtaGVhcHMucnN0DQo+IEBAIC0yMSw1ICsyMSwyNCBAQCBmb2xsb3dpbmcgaGVhcHM6DQo+
ICAgICB1c3VhbGx5IGNyZWF0ZWQgZWl0aGVyIHRocm91Z2ggdGhlIGtlcm5lbCBjb21tYW5kbGlu
ZSB0aHJvdWdoIHRoZQ0KPiAgICAgYGNtYWAgcGFyYW1ldGVyLCBhIG1lbW9yeSByZWdpb24gRGV2
aWNlLVRyZWUgbm9kZSB3aXRoIHRoZQ0KPiAgICAgYGxpbnV4LGNtYS1kZWZhdWx0YCBwcm9wZXJ0
eSBzZXQsIG9yIHRocm91Z2ggdGhlIGBDTUFfU0laRV9NQllURVNgIG9yDQo+ICAgICBgQ01BX1NJ
WkVfUEVSQ0VOVEFHRWAgS2NvbmZpZyBvcHRpb25zLiBEZXBlbmRpbmcgb24gdGhlIHBsYXRmb3Jt
LCBpdA0KPiAgICAgbWlnaHQgYmUgY2FsbGVkIGBgcmVzZXJ2ZWRgYCwgYGBsaW51eCxjbWFgYCwg
b3IgYGBkZWZhdWx0LXBvb2xgYC4NCj4gKw0KPiArTmFtaW5nIENvbnZlbnRpb24NCj4gKz09PT09
PT09PT09PT09PT09DQo+ICsNCj4gK0EgZ29vZCBoZWFwIG5hbWUgaXMgYSBuYW1lIHRoYXQ6DQo+
ICsNCj4gKy0gSXMgc3RhYmxlLCBhbmQgd29uJ3QgY2hhbmdlIGZyb20gb25lIHZlcnNpb24gdG8g
dGhlIG90aGVyOw0KPiArDQo+ICstIERlc2NyaWJlcyB0aGUgbWVtb3J5IHJlZ2lvbiB0aGUgaGVh
cCB3aWxsIGFsbG9jYXRlIGZyb20sIGFuZCB3aWxsDQo+ICsgIHVuaXF1ZWx5IGlkZW50aWZ5IGl0
IGluIGEgZ2l2ZW4gcGxhdGZvcm07DQo+ICsNCj4gKy0gRG9lc24ndCB1c2UgaW1wbGVtZW50YXRp
b24gZGV0YWlscywgc3VjaCBhcyB0aGUgYWxsb2NhdG9yOw0KPiArDQo+ICstIENhbiBkZXNjcmli
ZSBpbnRlbmRlZCB1c2FnZS4NCj4gKw0KDQpUaGFua3MgYWdhaW4gZm9yIHNlbmRpbmcgdGhpcyBv
dXQuIFNvcnJ5IEkndmUgYmVlbiBzcG90dHkgaW4gc29tZSBvZg0KdGhlIGRpc2N1c3Npb25zIChJ
J20gcmVhbGx5IHRyeWluZyB0byBzdGVwIGJhY2sgZnJvbSB0aGlzIGFyZWEpLg0KDQpJIG1pZ2h0
IG9ubHkgc3VnZ2VzdCB5b3UgcHJvdmlkZSBhIGJpdCBtb3JlICJ3aHkiIHRvIHRoZSBsaXN0IG9m
DQpxdWFsaXRpZXMgeW91IGhpZ2hsaWdodCBoZXJlLCBqdXN0IHRvIGNvbW11bmljYXRlIG1vcmUg
b2YgdGhlDQpzcGlyaXQvcGhpbG9zb3BoeSBvZiBob3cgdGhlc2UgbWlnaHQgYmUganVkZ2VkIG9y
IHJldmlld2VkIGluIHRoZQ0KZnV0dXJlLg0KDQo+ICtGb3IgZXhhbXBsZSwgYXNzdW1pbmcgYSBw
bGF0Zm9ybSB3aXRoIGEgcmVzZXJ2ZWQgbWVtb3J5IHJlZ2lvbiBsb2NhdGVkDQo+ICthdCB0aGUg
UkFNIGFkZHJlc3MgMHg0MjAwMDAwMCwgaW50ZW5kZWQgdG8gYWxsb2NhdGUgdmlkZW8gZnJhbWVi
dWZmZXJzLA0KPiArYW5kIGJhY2tlZCBieSB0aGUgQ01BIGtlcm5lbCBhbGxvY2F0b3IuIEdvb2Qg
bmFtZXMgd291bGQgYmUNCj4gK2BtZW1vcnlANDIwMDAwMDBgIG9yIGB2aWRlb0A0MjAwMDAwMGAs
IGJ1dCBgY21hLXZpZGVvYCB3b3VsZG4ndC4NCg0KVGhlIHBvaW50IGFib3V0IGF2b2lkaW5nIHRo
ZSBhbGxvY2F0b3IgZGV0YWlscywganVzdCBzbyBJIGJldHRlcg0KdW5kZXJzdGFuZCB0aGUgY3Jp
dGVyaWE6IFdvdWxkIGRpc3Rpbmd1aXNoaW5nIGZyb20gYSBjb250aWd1b3VzIHBvb2wNCnZzIG5v
bi1jb250aWd1b3VzIGluIHRoZSBuYW1lIGJlIGNvbnNpZGVyZWQgb2s/IEFzIGl0J3MgYSBwcm9w
ZXJ0eSBvZg0KdGhlIGJ1ZmZlciByZXR1cm5lZCwgYW5kIG9uZSB0aGF0IGlzIGNyaXRpY2FsbHkg
aW1wb3J0YW50IGZvciBzb21lDQpkZXZpY2VzLiBPciBkbyB5b3UgaW50ZW5kIHRoYXQgdG8gYmUg
b3BhcXVlLCBhbmQgdGhlIHVzYWdlLT5oZWFwDQptYXBwaW5nIGxvZ2ljIHRvIHByb3ZpZGUgdGhh
dCBpdHNlbGY/IChFZmZlY3RpdmVseSBhdm9pZGluZyBmb2xrcyBmcm9tDQpiZWluZyBhYmxlIHRv
IG1ha2UgcG90ZW50aWFsbHkgcHJvYmxlbWF0aWMgYXNzdW1wdGlvbnMgZnJvbSB0aGUgbmFtZT8p
DQoNClNpbWlsYXJseSwgaG93IHdvdWxkIHlvdSBzdWdnZXN0IG5hbWluZyBhIGhlYXAgdGhhdCBw
cm92aWRlcyAzMmJpdA0KYWxsb2NhdGlvbnM/ICAgU2ltaWxhcmx5IGZvciAicHJvdGVjdGVkJyBh
bGxvY2F0aW9ucywgd2hpY2ggYXJlIGJlaW5nDQpwcm9wb3NlZD8NCg0KdGhhbmtzDQotam9obg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGluYXJvLW1t
LXNpZyBtYWlsaW5nIGxpc3QgLS0gbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnClRvIHVu
c3Vic2NyaWJlIHNlbmQgYW4gZW1haWwgdG8gbGluYXJvLW1tLXNpZy1sZWF2ZUBsaXN0cy5saW5h
cm8ub3JnCg==
