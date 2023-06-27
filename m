Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBAB74039B
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jun 2023 20:52:55 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id D3CC243BEB
	for <lists+linaro-mm-sig@lfdr.de>; Tue, 27 Jun 2023 18:52:54 +0000 (UTC)
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com [209.85.160.169])
	by lists.linaro.org (Postfix) with ESMTPS id B17203EF4B
	for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jun 2023 18:52:39 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20221208 header.b=tPrpWdnP;
	spf=pass (lists.linaro.org: domain of jstultz@google.com designates 209.85.160.169 as permitted sender) smtp.mailfrom=jstultz@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-qt1-f169.google.com with SMTP id d75a77b69052e-4007b5bafceso46611cf.1
        for <linaro-mm-sig@lists.linaro.org>; Tue, 27 Jun 2023 11:52:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20221208; t=1687891959; x=1690483959;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XanXoDlHYuqu7WYlucQ21J3KG2JUv31j1KTL+YaYRcw=;
        b=tPrpWdnP56AC15CdynAtlLaMhZcoMrwTEd/uWTCfR3x6ZSk2aQs18un036H4Ui91Mz
         yipTpkAWSSEw3sBbMhjNPTFYagOc2smOlg8be0RQW47nzZtgo+C5Ptfe55oDSxjaSkX0
         idJ5n7fJQSXQxasfFIWbg2LKCscxSP6nA95ZRZt6P+sFiMDn6Y+k3aHiI3giIk0UJOI+
         RsBiyEWPVmLE1yxdaMJ8gPZHKUeeMrjGJJGfIo73hE1hVi5UIcHUAG/2LgLNnAze8rTB
         /iF1/wOik0/z5RMYKefbcBecyhdwgNOoRGVNJZZZCrdwIR3VXSMUnaseQ55GbmLr05Td
         l7VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687891959; x=1690483959;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XanXoDlHYuqu7WYlucQ21J3KG2JUv31j1KTL+YaYRcw=;
        b=eCP91w4ViUM8YLvv3/4TnnCejaSc/7r6AKPCBYpWxnQcYpz6gD7c7lSLAYL8pnsrkM
         yu7edOMfJzwH31jVZVfd9MRJgllwx/hR7ByGfgsbErTdp0fPMiljWg0HHFEs7PFOkkZc
         N1d2nqpixaLNIHGOaJZ8kllWWUM65X55wPie4Eb9jdAcvnKUX3owd0LPKLnmW56rFm3F
         BjncND1ajtzAXInnsAX5ITeDr33bqNsd2Mx211zzdHA7yITFPYSrX1p6QjCMLlNlfdi3
         UT2hVj+SWTknaR8RboWR3wptwOvuyjQ/DhJV9i/FgLPwR9p7g2p8W+8HurTQ/rig4QwP
         fw+A==
X-Gm-Message-State: AC+VfDwm7NTL40sNQj994UwO2XztEeY3DYGa74HVTrUcFkkjqsI+al1u
	hhB+zA4aCfEYEgQH331tblXAulmLP8nEPiAQQZLL
X-Google-Smtp-Source: ACHHUZ5dfRe4sjCsi1avwvjKJ8EPuqVzC75vPw7U/LlRFR2FRvQRAfeRSfejLqd26KQk3zITWlc71jc5mXyGnWmKbCs=
X-Received: by 2002:ac8:5905:0:b0:3f8:5b2:aef0 with SMTP id
 5-20020ac85905000000b003f805b2aef0mr19156qty.24.1687891959197; Tue, 27 Jun
 2023 11:52:39 -0700 (PDT)
MIME-Version: 1.0
References: <20230627144339.144478-1-Julia.Lawall@inria.fr> <20230627144339.144478-7-Julia.Lawall@inria.fr>
In-Reply-To: <20230627144339.144478-7-Julia.Lawall@inria.fr>
From: John Stultz <jstultz@google.com>
Date: Tue, 27 Jun 2023 11:52:27 -0700
Message-ID: <CANDhNCrPHJjDwGLMY_p8Z21bCnBvTzQmztYqRykTBD9t-+mbcQ@mail.gmail.com>
To: Julia Lawall <Julia.Lawall@inria.fr>
X-Spamd-Result: default: False [-8.10 / 15.00];
	REPLY(-4.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	R_DKIM_ALLOW(-0.20)[google.com:s=20221208];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.169:from];
	FROM_EQ_ENVFROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	FREEMAIL_CC(0.00)[linaro.org,vger.kernel.org,chromium.org,wanadoo.fr,kernel.org,collabora.com,codeaurora.org,redhat.com,arm.com,amd.com,lists.freedesktop.org,lists.linaro.org];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[inria.fr:email,mail-qt1-f169.google.com:helo,mail-qt1-f169.google.com:rdns];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[209.85.160.169:from]
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: B17203EF4B
X-Spamd-Bar: --------
Message-ID-Hash: KFSUZ2RYASV3CX3GOKFMLOJBXMEU3FXG
X-Message-ID-Hash: KFSUZ2RYASV3CX3GOKFMLOJBXMEU3FXG
X-MailFrom: jstultz@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, kernel-janitors@vger.kernel.org, keescook@chromium.org, christophe.jaillet@wanadoo.fr, kuba@kernel.org, Benjamin Gaignard <benjamin.gaignard@collabora.com>, Liam Mark <lmark@codeaurora.org>, Laura Abbott <labbott@redhat.com>, Brian Starkey <Brian.Starkey@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2 06/24] dma-buf: system_heap: use vmalloc_array and vcalloc
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/KFSUZ2RYASV3CX3GOKFMLOJBXMEU3FXG/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBKdW4gMjcsIDIwMjMgYXQgNzo0NOKAr0FNIEp1bGlhIExhd2FsbCA8SnVsaWEuTGF3
YWxsQGlucmlhLmZyPiB3cm90ZToNCj4NCj4gVXNlIHZtYWxsb2NfYXJyYXkgYW5kIHZjYWxsb2Mg
dG8gcHJvdGVjdCBhZ2FpbnN0DQo+IG11bHRpcGxpY2F0aW9uIG92ZXJmbG93cy4NCj4NCj4gVGhl
IGNoYW5nZXMgd2VyZSBkb25lIHVzaW5nIHRoZSBmb2xsb3dpbmcgQ29jY2luZWxsZQ0KPiBzZW1h
bnRpYyBwYXRjaDoNCj4NCj4gLy8gPHNtcGw+DQo+IEBpbml0aWFsaXplOm9jYW1sQA0KPiBAQA0K
Pg0KPiBsZXQgcmVuYW1lIGFsbG9jID0NCj4gICBtYXRjaCBhbGxvYyB3aXRoDQo+ICAgICAidm1h
bGxvYyIgLT4gInZtYWxsb2NfYXJyYXkiDQo+ICAgfCAidnphbGxvYyIgLT4gInZjYWxsb2MiDQo+
ICAgfCBfIC0+IGZhaWx3aXRoICJ1bmtub3duIg0KPg0KPiBAQA0KPiAgICAgc2l6ZV90IGUxLGUy
Ow0KPiAgICAgY29uc3RhbnQgQzEsIEMyOw0KPiAgICAgZXhwcmVzc2lvbiBFMSwgRTIsIENPVU5U
LCB4MSwgeDIsIHgzOw0KPiAgICAgdHlwZWRlZiB1ODsNCj4gICAgIHR5cGVkZWYgX191ODsNCj4g
ICAgIHR5cGUgdCA9IHt1OCxfX3U4LGNoYXIsdW5zaWduZWQgY2hhcn07DQo+ICAgICBpZGVudGlm
aWVyIGFsbG9jID0ge3ZtYWxsb2MsdnphbGxvY307DQo+ICAgICBmcmVzaCBpZGVudGlmaWVyIHJl
YWxsb2MgPSBzY3JpcHQ6b2NhbWwoYWxsb2MpIHsgcmVuYW1lIGFsbG9jIH07DQo+IEBADQo+DQo+
ICgNCj4gICAgICAgYWxsb2MoeDEqeDIqeDMpDQo+IHwNCj4gICAgICAgYWxsb2MoQzEgKiBDMikN
Cj4gfA0KPiAgICAgICBhbGxvYygoc2l6ZW9mKHQpKSAqIChDT1VOVCksIC4uLikNCj4gfA0KPiAt
ICAgICBhbGxvYygoZTEpICogKGUyKSkNCj4gKyAgICAgcmVhbGxvYyhlMSwgZTIpDQo+IHwNCj4g
LSAgICAgYWxsb2MoKGUxKSAqIChDT1VOVCkpDQo+ICsgICAgIHJlYWxsb2MoQ09VTlQsIGUxKQ0K
PiB8DQo+IC0gICAgIGFsbG9jKChFMSkgKiAoRTIpKQ0KPiArICAgICByZWFsbG9jKEUxLCBFMikN
Cj4gKQ0KPiAvLyA8L3NtcGw+DQo+DQo+IFNpZ25lZC1vZmYtYnk6IEp1bGlhIExhd2FsbCA8SnVs
aWEuTGF3YWxsQGlucmlhLmZyPg0KPg0KPiAtLS0NCj4gdjI6IFVzZSB2bWFsbG9jX2FycmF5IGFu
ZCB2Y2FsbG9jIGluc3RlYWQgb2YgYXJyYXlfc2l6ZS4NCj4gVGhpcyBhbHNvIGxlYXZlcyBhIG11
bHRpcGxpY2F0aW9uIG9mIGEgY29uc3RhbnQgYnkgYSBzaXplb2YNCj4gYXMgaXMuICBUd28gcGF0
Y2hlcyBhcmUgdGh1cyBkcm9wcGVkIGZyb20gdGhlIHNlcmllcy4NCj4NCj4gIGRyaXZlcnMvZG1h
LWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jIHwgICAgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDEg
aW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+DQo+IGRpZmYgLXUgLXAgYS9kcml2ZXJzL2Rt
YS1idWYvaGVhcHMvc3lzdGVtX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1f
aGVhcC5jDQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+ICsr
KyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9zeXN0ZW1faGVhcC5jDQo+IEBAIC0yMjEsNyArMjIx
LDcgQEAgc3RhdGljIHZvaWQgKnN5c3RlbV9oZWFwX2RvX3ZtYXAoc3RydWN0DQo+ICB7DQo+ICAg
ICAgICAgc3RydWN0IHNnX3RhYmxlICp0YWJsZSA9ICZidWZmZXItPnNnX3RhYmxlOw0KPiAgICAg
ICAgIGludCBucGFnZXMgPSBQQUdFX0FMSUdOKGJ1ZmZlci0+bGVuKSAvIFBBR0VfU0laRTsNCj4g
LSAgICAgICBzdHJ1Y3QgcGFnZSAqKnBhZ2VzID0gdm1hbGxvYyhzaXplb2Yoc3RydWN0IHBhZ2Ug
KikgKiBucGFnZXMpOw0KPiArICAgICAgIHN0cnVjdCBwYWdlICoqcGFnZXMgPSB2bWFsbG9jX2Fy
cmF5KG5wYWdlcywgc2l6ZW9mKHN0cnVjdCBwYWdlICopKTsNCj4gICAgICAgICBzdHJ1Y3QgcGFn
ZSAqKnRtcCA9IHBhZ2VzOw0KPiAgICAgICAgIHN0cnVjdCBzZ19wYWdlX2l0ZXIgcGl0ZXI7DQo+
ICAgICAgICAgdm9pZCAqdmFkZHI7DQoNClNlZW1zIHJlYXNvbmFibGUuIFRoYW5rcyBmb3Igc2Vu
ZGluZyB0aGlzIG91dCENCg0KQWNrZWQtYnk6IEpvaG4gU3R1bHR6IDxqc3R1bHR6QGdvb2dsZS5j
b20+DQoNCnRoYW5rcw0KLWpvaG4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdA
bGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1t
bS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
