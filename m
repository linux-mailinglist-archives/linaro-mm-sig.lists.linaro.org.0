Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC918CC65F
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 May 2024 20:34:03 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 6E0664477D
	for <lists+linaro-mm-sig@lfdr.de>; Wed, 22 May 2024 18:34:02 +0000 (UTC)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by lists.linaro.org (Postfix) with ESMTPS id 402B33F368
	for <linaro-mm-sig@lists.linaro.org>; Wed, 22 May 2024 18:33:51 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=kBW748mM;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.219.175 as permitted sender) smtp.mailfrom=tjmercier@google.com;
	dmarc=pass (policy=reject) header.from=google.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dcc71031680so5148494276.2
        for <linaro-mm-sig@lists.linaro.org>; Wed, 22 May 2024 11:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1716402831; x=1717007631; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7EbhQWdOoh78Q/g/fDhY/dpoBbFrko5oWqLo7rk8/U0=;
        b=kBW748mMVLkPSc1yIS3pJe3+VwvqotQdHrPYm3p2rcaxsZo00NdDj1/jbdlMsJ4j6v
         fT38+mUH/r9C2hryAgpJsbPLFfyS4SZlnZS+hCKmIEnxCf1Lnh4/qQ2OdGkb4M9y4xjq
         btwsKkygNJvF6QlJNk4iBtZtpv6hteysReKNRqXsnJW9q6CcnTJXmzB7s21xa1cuKCXN
         TP8ATYk99+KB+n540YUyvg7Mxs7sM76YVx4H0DddTlkXDLGF6rJbFhDfcEdTdL2e1qwU
         bWYQsE/YUYmC1Ty3HJULN9TAVX5wo6Nt99uibXgalW3C+AjDJfc0ssFVFd24mZs4xpsN
         aMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716402831; x=1717007631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7EbhQWdOoh78Q/g/fDhY/dpoBbFrko5oWqLo7rk8/U0=;
        b=WSIX2HIBo/J8lm6yCmkEWs4xFnRcUMualvUL+sPirdG/u/dSau70/hQ7ig7FybzIVl
         I32Q3aE31pUHawGu02fajcvz21fssMRruwZ6PGOl+gdwvRkxQC+XCRlCUVhKRG9xmhco
         KTpyaCRY4VXrFvNN/5o+A50KwejEQ/l0dot+8qB161Hxt0/cYme4zoJsn5EvGxy8m9BY
         sSFu6gkoSmOB1AjGCUn73RR/sTYmFFrLJTs7GuBE3UY2s8CjJ5x6TI+XPOSp2rZcmGGh
         Mp+UCc9HmxGoWjjAyNsPSPLm2Btsj4bCexu4FzhLbcsmWfqzReL6RL+XL36bgrqCsJQ9
         YiVw==
X-Forwarded-Encrypted: i=1; AJvYcCUaTNqRz3s6XyvrazzLWWVACwWSOUTcotPtEyj4CZO89gxVxxvxtQHxe8kdUsj7Sm3fkLd+Ag5YOMIQJ18TIRskvrxZFWwnJhjU3JvBXSE=
X-Gm-Message-State: AOJu0Yzi0JiAV2f0+Nr5x5rIZPbXI5sLvrZ9nP+a2LJir8/Eoq48Mrpf
	ltPkCwKQGXdiqJDrcFRvs+y56g10RxTfVR4iKIg4wqFbUQSEgI7ZJlfxACqrJwiL5HrWT/VhMwU
	Pi12V+n/aN3zrMCm1hOfYrEgY9wmO+Z0FcyVl
X-Google-Smtp-Source: AGHT+IGN47Nmo4f4RGiZUu/PPp/jTEE3uqbIMeUgnJAorz3ApRFTFuY2uRHKB4JKQhH3PzXLlW1bM1uS2dJXihd38dY=
X-Received: by 2002:a25:a2c4:0:b0:de5:51a1:d47a with SMTP id
 3f1490d57ef6-df4e0c1d0dbmr2686142276.28.1716402830630; Wed, 22 May 2024
 11:33:50 -0700 (PDT)
MIME-Version: 1.0
References: <20240522181308.841686-1-pchelkin@ispras.ru>
In-Reply-To: <20240522181308.841686-1-pchelkin@ispras.ru>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Wed, 22 May 2024 11:33:38 -0700
Message-ID: <CABdmKX2qdT0HvkX0B6kcxALwxZsLFOtgPsOP_rY0AXM1eAtAtA@mail.gmail.com>
To: Fedor Pchelkin <pchelkin@ispras.ru>
X-Rspamd-Action: no action
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 402B33F368
X-Spamd-Bar: ----
X-Spamd-Result: default: False [-4.00 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	RCVD_COUNT_ONE(0.00)[1];
	NEURAL_HAM(-0.00)[-1.000];
	MISSING_XM_UA(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	RWL_MAILSPIKE_POSSIBLE(0.00)[209.85.219.175:from];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	DKIM_TRACE(0.00)[google.com:+]
Message-ID-Hash: ZUCUUZIWGFS2YDENNWUMQCQWQOTSGL6R
X-Message-ID-Hash: ZUCUUZIWGFS2YDENNWUMQCQWQOTSGL6R
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, Sumit Semwal <sumit.semwal@linaro.org>, Chris Wilson <chris@chris-wilson.co.uk>, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, Alexey Khoroshilov <khoroshilov@ispras.ru>, lvc-project@linuxtesting.org, stable@vger.kernel.org
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH v2] dma-buf: handle testing kthreads creation failure
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/ZUCUUZIWGFS2YDENNWUMQCQWQOTSGL6R/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gV2VkLCBNYXkgMjIsIDIwMjQgYXQgMTE6MTTigK9BTSBGZWRvciBQY2hlbGtpbiA8cGNoZWxr
aW5AaXNwcmFzLnJ1PiB3cm90ZToNCj4NCj4ga3RocmVhZCBjcmVhdGlvbiBtYXkgcG9zc2libHkg
ZmFpbCBpbnNpZGUgcmFjZV9zaWduYWxfY2FsbGJhY2soKS4gSW4NCj4gc3VjaCBhIGNhc2Ugc3Rv
cCB0aGUgYWxyZWFkeSBzdGFydGVkIHRocmVhZHMsIHB1dCB0aGUgYWxyZWFkeSB0YWtlbg0KPiBy
ZWZlcmVuY2VzIHRvIHRoZW0gYW5kIHJldHVybiB3aXRoIGVycm9yIGNvZGUuDQo+DQo+IEZvdW5k
IGJ5IExpbnV4IFZlcmlmaWNhdGlvbiBDZW50ZXIgKGxpbnV4dGVzdGluZy5vcmcpLg0KPg0KPiBG
aXhlczogMjk4OWY2NDUxMDg0ICgiZG1hLWJ1ZjogQWRkIHNlbGZ0ZXN0cyBmb3IgZG1hLWZlbmNl
IikNCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcNCj4gU2lnbmVkLW9mZi1ieTogRmVkb3Ig
UGNoZWxraW4gPHBjaGVsa2luQGlzcHJhcy5ydT4NClJldmlld2VkLWJ5OiBULkouIE1lcmNpZXIg
PHRqbWVyY2llckBnb29nbGUuY29tPg0KPiAtLS0NCj4gdjI6IHVzZSBrdGhyZWFkX3N0b3BfcHV0
KCkgdG8gYWN0dWFsbHkgcHV0IHRoZSBsYXN0IHJlZmVyZW5jZSBhcw0KPiAgICAgVC5KLiBNZXJj
aWVyIG5vdGljZWQ7DQo+ICAgICBsaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
a21sLzIwMjQwNTIyMTIyMzI2LjY5NjkyOC0xLXBjaGVsa2luQGlzcHJhcy5ydS8NCj4NCj4gIGRy
aXZlcnMvZG1hLWJ1Zi9zdC1kbWEtZmVuY2UuYyB8IDYgKysrKysrDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgNiBpbnNlcnRpb25zKCspDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3Qt
ZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMNCj4gaW5kZXggYjdj
NmY3ZWE5ZTBjLi42YTFiZmNkMGNjMjEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLmMNCj4g
QEAgLTU0MCw2ICs1NDAsMTIgQEAgc3RhdGljIGludCByYWNlX3NpZ25hbF9jYWxsYmFjayh2b2lk
ICphcmcpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgIHRbaV0uYmVmb3JlID0gcGFzczsNCj4g
ICAgICAgICAgICAgICAgICAgICAgICAgdFtpXS50YXNrID0ga3RocmVhZF9ydW4odGhyZWFkX3Np
Z25hbF9jYWxsYmFjaywgJnRbaV0sDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICJkbWEtZmVuY2U6JWQiLCBpKTsNCj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgaWYgKElTX0VSUih0W2ldLnRhc2spKSB7DQo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgcmV0ID0gUFRSX0VSUih0W2ldLnRhc2spOw0KPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHdoaWxlICgtLWkgPj0gMCkNCj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGt0aHJlYWRfc3RvcF9wdXQodFtpXS50YXNrKTsNCj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gcmV0Ow0KPiArICAgICAgICAgICAgICAgICAg
ICAgICB9DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIGdldF90YXNrX3N0cnVjdCh0W2ldLnRh
c2spOw0KPiAgICAgICAgICAgICAgICAgfQ0KPg0KPiAtLQ0KPiAyLjM5LjINCj4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbmFyby1tbS1zaWcgbWFp
bGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpUbyB1bnN1YnNjcmli
ZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWctbGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
