Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 60A50AAE7FA
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 19:37:29 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 7FCEF41014
	for <lists+linaro-mm-sig@lfdr.de>; Wed,  7 May 2025 17:37:28 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	by lists.linaro.org (Postfix) with ESMTPS id DDC22459DC
	for <linaro-mm-sig@lists.linaro.org>; Wed,  7 May 2025 17:37:14 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=sr42PkTm;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.128.47 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cf3192d8bso4835e9.1
        for <linaro-mm-sig@lists.linaro.org>; Wed, 07 May 2025 10:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1746639434; x=1747244234; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bQHhiJb/IfsuDYo0XF1+Y57pCH6WG6CKDTT1nxeWSmE=;
        b=sr42PkTm9+dTCVQ4SCGNZSmQXbAKb4y1Nt2rzgyG7BqwgrHWgvxFOoMx8qs8RrV/T4
         nGfPbWKsbIWyfR1B7kLSvcol8GOJrYCFD0ERk3dL6n+AKfBWeFT1YH19SV+4bUEkrTgN
         m23hYgiYfA8c8SsMrIuj+u1hww9LmCyTvzpeubY9170qbxi2HIo2P7A5OeykDL0MyAmQ
         sCtpRrsISuFvjdHyP/rK1OAB2fiOif4th/cemg9Xd6H4SwWI7YA07eUXCJz0t96qgCFh
         v4X6iRFl2AmXvtBYW45jFzs1mY11MYlfcmYGh0cEuTjzlMbGNUg7gCgBP+dVHThketxr
         gnWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746639434; x=1747244234;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bQHhiJb/IfsuDYo0XF1+Y57pCH6WG6CKDTT1nxeWSmE=;
        b=hHB6qFkiq9LNYkyky1x55ejCuG+dDVLetyNDiaom5FyXz5WqD8fQeBqVb3W6pDh4NF
         dwF4uXit7o22wzeqsI8BgtCptsj7ZOJDTnkUFpCCn3364/pupojGegF2RBoq8P8LT2zx
         X66CW2svSI5+ENM9rZsld6E9iPC/bEpmp7NwC+uY3l/Q/2m+6xAuDDTCd7zP7V292df+
         9Dw4znlYSiOKILnJeVJ2yCzQIWfMbOZg6YbiA2JykSSA30nlPx7Lbry5qGgZgVNpZqgR
         QZJWEAzSLg44D7UJe0OYRdNE/rbN3i03UhtxZso0hSGG0ZDqvEb/b7edv7nZSl67KJkN
         Qsgw==
X-Forwarded-Encrypted: i=1; AJvYcCU9KhG+B1VuOjAxhor2PA2DX3brnHcJ8Lh4e7SE4G5Y+teFTtuZgx9I4rIKSzD2+jmZIF52KuuvOBokVE7Q@lists.linaro.org
X-Gm-Message-State: AOJu0YydZoBvbclJZ9d8h3gkqBTGeSJJimveYd090aRR4e7mz77CIo1x
	bqqGLAIpz6kYFl2YJU5rJKoc2Kf4pWZYuF7PcYpJvkQtUaVf4yTO4+r0XUQmMpNsqW690WT0jYf
	3cRawW8WdbwBSFnVoUhj8ZPBUYND0Lq2CXM2b
X-Gm-Gg: ASbGncsaSthTjGrWnbwhgQ5mCHCPizwOXT6LCV7/MOrvLJPQna9mn7/93o8Hl7zuavc
	vPbV08d+JAeEYwcsyGZn9pVMpQjj+J42fhayYEZgDD70Z8fXx86SGA7w/+femvzJhSXMcME9x+Y
	fPwULLOTTX1bucxDdyfwOf09h/4mQetxII+bTD2n/djVxQom+BKQU=
X-Google-Smtp-Source: AGHT+IGhDsyDC4rx4Jh4KPoVriF6uM/2LMAigWo/dJgJXOk4tdHRjlokfIMBEcSr4ZZiHUTQp//vG2FjpjSJlL89x3c=
X-Received: by 2002:a05:600c:4448:b0:43b:c2cc:5075 with SMTP id
 5b1f17b1804b1-441d4d4b8d4mr1462165e9.5.1746639433809; Wed, 07 May 2025
 10:37:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250507001036.2278781-1-tjmercier@google.com>
 <20250507001036.2278781-3-tjmercier@google.com> <CAADnVQL2i87Q4NEX-4rXDBa_xpTWnh=VY-sMCJzK+nY0qogeqw@mail.gmail.com>
In-Reply-To: <CAADnVQL2i87Q4NEX-4rXDBa_xpTWnh=VY-sMCJzK+nY0qogeqw@mail.gmail.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 7 May 2025 10:37:01 -0700
X-Gm-Features: ATxdqUGvlgXnJv15CWumpdguGu0hVB25voP1FwyUGSqp8OgHDoPOAE5CsZeJmPA
Message-ID: <CABdmKX15i760AKT3e6BL-mOUgOjNfX7ugYJQmy_J6YD1TeNEfw@mail.gmail.com>
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: DDC22459DC
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.50 / 15.00];
	BAYES_HAM(-3.00)[99.98%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17:c];
	MIME_GOOD(-0.10)[text/plain];
	FREEMAIL_CC(0.00)[linaro.org,amd.com,kernel.org,iogearbox.net,linux.dev,linuxfoundation.org,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,google.com,ffwll.ch,gmail.com,fomichev.me,fb.com];
	FROM_HAS_DN(0.00)[];
	URIBL_BLOCKED(0.00)[mail.gmail.com:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[google.com:+];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	DNSWL_BLOCKED(0.00)[209.85.128.47:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	TAGGED_RCPT(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.128.47:from];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action
Message-ID-Hash: HCU6F7MVFT4F3QBAM543COSWUEGOLFPR
X-Message-ID-Hash: HCU6F7MVFT4F3QBAM543COSWUEGOLFPR
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Alexei Starovoitov <ast@kernel.org>, Daniel Borkmann <daniel@iogearbox.net>, Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <martin.lau@linux.dev>, Shuah Khan <skhan@linuxfoundation.org>, Song Liu <song@kernel.org>, LKML <linux-kernel@vger.kernel.org>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, bpf <bpf@vger.kernel.org>, "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>, android-mm@google.com, simona@ffwll.ch, Eduard <eddyz87@gmail.com>, Yonghong Song <yonghong.song@linux.dev>, John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>, Stanislav Fomichev <sdf@fomichev.me>, Jiri Olsa <jolsa@kernel.org>, Mykola Lysenko <mykolal@fb.com>
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH bpf-next v3 2/5] bpf: Add dmabuf iterator
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/HCU6F7MVFT4F3QBAM543COSWUEGOLFPR/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgNywgMjAyNSBhdCA3OjE04oCvQU0gQWxleGVpIFN0YXJvdm9pdG92DQo8YWxl
eGVpLnN0YXJvdm9pdG92QGdtYWlsLmNvbT4gd3JvdGU6DQo+DQo+IE9uIFR1ZSwgTWF5IDYsIDIw
MjUgYXQgNToxMOKAr1BNIFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+IHdyb3Rl
Og0KPiA+DQo+ID4gKy8qKg0KPiA+ICsgKiBnZXRfZmlyc3RfZG1hYnVmIC0gYmVnaW4gaXRlcmF0
aW9uIHRocm91Z2ggZ2xvYmFsIGxpc3Qgb2YgRE1BLWJ1ZnMNCj4gPiArICoNCj4gPiArICogUmV0
dXJucyB0aGUgZmlyc3QgYnVmZmVyIGluIHRoZSBnbG9iYWwgbGlzdCBvZiBETUEtYnVmcyB0aGF0
J3Mgbm90IGluIHRoZQ0KPiA+ICsgKiBwcm9jZXNzIG9mIGJlaW5nIGRlc3Ryb3llZC4gSW5jcmVt
ZW50cyB0aGF0IGJ1ZmZlcidzIHJlZmVyZW5jZSBjb3VudCB0bw0KPiA+ICsgKiBwcmV2ZW50IGJ1
ZmZlciBkZXN0cnVjdGlvbi4gQ2FsbGVycyBtdXN0IHJlbGVhc2UgdGhlIHJlZmVyZW5jZSwgZWl0
aGVyIGJ5DQo+ID4gKyAqIGNvbnRpbnVpbmcgaXRlcmF0aW9uIHdpdGggZ2V0X25leHRfZG1hYnVm
KCksIG9yIHdpdGggZG1hX2J1Zl9wdXQoKS4NCj4gPiArICoNCj4gPiArICogUmV0dXJucyBOVUxM
IElmIG5vIGFjdGl2ZSBidWZmZXJzIGFyZSBwcmVzZW50Lg0KPiA+ICsgKi8NCj4NCj4ga2RvYyB3
YW50cyB0byBzZWUgJ1JldHVybjonLg0KPg0KPiBTZWUgZXJyb3JzIGluIEJQRiBDSS4NCj4NCj4g
QW5kIHBhdGNoIDUgc2hvdWxkbid0IGJlIHVzaW5nIC8qKiBmb3IgcGxhaW4gY29tbWVudHMuDQoN
ClRoYW5rcywgSSBmb3VuZCB0aGUgQ0kgZXJyb3JzLCBmaXhlZCwgYW5kIHZlcmlmaWVkIHdpdGgN
CnNjcmlwdHMva2VybmVsLWRvYy4gSSBkaWRuJ3QgcmVjZWl2ZSBlbWFpbHMgYWJvdXQgdGhlbSB0
aG91Z2gsIG5vdA0Kc3VyZSBpZiBJIHNob3VsZCBoYXZlLg0KDQo+IHB3LWJvdDogY3INCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcg
bWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNj
cmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9y
Zwo=
