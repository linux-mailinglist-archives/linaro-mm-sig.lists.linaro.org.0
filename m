Return-Path: <linaro-mm-sig-bounces+lists+linaro-mm-sig=lfdr.de@lists.linaro.org>
X-Original-To: lists+linaro-mm-sig@lfdr.de
Delivered-To: lists+linaro-mm-sig@lfdr.de
Received: from lists.linaro.org (lists.linaro.org [3.208.193.21])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B40998C790
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Oct 2024 23:24:35 +0200 (CEST)
Received: from lists.linaro.org (localhost [127.0.0.1])
	by lists.linaro.org (Postfix) with ESMTP id 3932344A04
	for <lists+linaro-mm-sig@lfdr.de>; Tue,  1 Oct 2024 21:24:34 +0000 (UTC)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by lists.linaro.org (Postfix) with ESMTPS id 5A64440D4E
	for <linaro-mm-sig@lists.linaro.org>; Tue,  1 Oct 2024 21:24:17 +0000 (UTC)
Authentication-Results: lists.linaro.org;
	dkim=pass header.d=google.com header.s=20230601 header.b=TF1GfoU+;
	dmarc=pass (policy=reject) header.from=google.com;
	spf=pass (lists.linaro.org: domain of tjmercier@google.com designates 209.85.160.178 as permitted sender) smtp.mailfrom=tjmercier@google.com
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4582fa01090so85041cf.0
        for <linaro-mm-sig@lists.linaro.org>; Tue, 01 Oct 2024 14:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1727817857; x=1728422657; darn=lists.linaro.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mt3Is1RFmYLd5Na8zkD+A3g9HRH0C7v0jg6OTqp/amI=;
        b=TF1GfoU+m6mB7Ju5hgVBEQpqEZcszyH72VJDq1EtJfoUNr5XrbkcNJw0uWo/DRLhOv
         ciIWaF6mNKyH6Yjq+qJar8Cubq0oZC6HyPSE01szrdd6Fb4GnBsayGYluL4/ecVhppsG
         BdED4Hv2QRaE7/wkUjhWedTKxvQwXAIx8CwIBzwBM2wSQXKzq06UE2ZtUUZs1GzFcDmP
         Ftlw5LPNNWp4bXC5/XgMeajxH3khpC8L68APSMP5w0UmdHIEcF4yA/4pVfbR8azt11vo
         dHo6yqL947GfOp9stI7gATqfXixLq2gZPVXGbKJUeqH1ebRuhrVgxj02O1TavwneHoaz
         UBxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727817857; x=1728422657;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mt3Is1RFmYLd5Na8zkD+A3g9HRH0C7v0jg6OTqp/amI=;
        b=Ijtg/PGS07kX1WeZkQa5oxAKwqsweuxFo+eycg23bmlIHdKd0D3UayYqYVx0Qjyk3S
         kLAVOYaR4KujfSbp9gciXrA7b81YjKnNMIFoPH1N+/Zh+Bf8fbFjdoWx5/gtIw2U5hz/
         6RbQPuus9QPuiXZAFKed0xpHFcixuGPQ/ej0q4XNXzmJqbd1BC3qx5+iMNytvoKqZGkb
         u8vXzzNKnd/78xgN5iOOo8Y8HTPW7ngt4F541tkciQ5yQwxWto5CO3qNggRLERmNOVw1
         6q4g3QKCosTeHLttM//EyUvrN6WHXpxj23YI97+y5UQxWXTqhjeLPa7w4dUNpt/SpDyr
         Algg==
X-Forwarded-Encrypted: i=1; AJvYcCV84/q6FZEWU7O6ItKWqMO7JYdY6BCgf9LXX6Q4OlsFrJa3nQflgyK6ZIXHcZ++dv/516em4nphW771Pojv@lists.linaro.org
X-Gm-Message-State: AOJu0Yzl00IbAd1pl9PI9fxQ85Z++jVAkRNWOwWInli+6e+VIxMwvfvl
	INt/ogodmEZDb0YTJV8zOwVO1mK7gwt6TgQdTuX9LYQsMPVvb9kl/XvaK3WpIVEw6gv9k1Vo+gr
	8jD+Gm5bpD84YPs1Q61QkP1SQ3FaYbmXMAm42
X-Google-Smtp-Source: AGHT+IEb/LrlGiLV25l7MI+5b+nV38eUfZtAIem1Ibw7evfeTyXOlxSzC1S9UXoNTcPhVVESXBGpaUCGkw/4Vut/mp0=
X-Received: by 2002:a05:622a:500e:b0:453:5f2f:d5d2 with SMTP id
 d75a77b69052e-45d8323ab96mr258141cf.1.1727817856653; Tue, 01 Oct 2024
 14:24:16 -0700 (PDT)
MIME-Version: 1.0
References: <20241001175057.27172-1-quic_pintu@quicinc.com>
In-Reply-To: <20241001175057.27172-1-quic_pintu@quicinc.com>
From: "T.J. Mercier" <tjmercier@google.com>
Date: Tue, 1 Oct 2024 23:24:03 +0200
Message-ID: <CABdmKX2xEn8QjObqR3VNb=RqMZVNBiNtkfYWm8h_3Xc8KMkdag@mail.gmail.com>
To: Pintu Kumar <quic_pintu@quicinc.com>
X-Rspamd-Server: lists.linaro.org
X-Rspamd-Queue-Id: 5A64440D4E
X-Spamd-Bar: --
X-Spamd-Result: default: False [-2.60 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:209.85.128.0/17];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[209.85.160.178:from];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_ONE(0.00)[1];
	ASN(0.00)[asn:15169, ipnet:209.85.128.0/17, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PREVIOUSLY_DELIVERED(0.00)[linaro-mm-sig@lists.linaro.org];
	FREEMAIL_CC(0.00)[linaro.org,collabora.com,arm.com,google.com,amd.com,vger.kernel.org,lists.freedesktop.org,lists.linaro.org,perches.com,linuxfoundation.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	TAGGED_RCPT(0.00)[];
	FROM_EQ_ENVFROM(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[google.com:+]
X-Rspamd-Action: no action
Message-ID-Hash: 7Y6KJHP25RD4EFBJRY2QU4YOGBXZTRI3
X-Message-ID-Hash: 7Y6KJHP25RD4EFBJRY2QU4YOGBXZTRI3
X-MailFrom: tjmercier@google.com
X-Mailman-Rule-Hits: nonmember-moderation
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation
CC: sumit.semwal@linaro.org, benjamin.gaignard@collabora.com, Brian.Starkey@arm.com, jstultz@google.com, christian.koenig@amd.com, linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org, linux-kernel@vger.kernel.org, joe@perches.com, skhan@linuxfoundation.org, pintu.ping@gmail.com
X-Mailman-Version: 3.3.5
Precedence: list
Subject: [Linaro-mm-sig] Re: [PATCH 2/3] dma-buf/heaps: replace kmap_atomic with kmap_local_page
List-Id: "Unified memory management interest group." <linaro-mm-sig.lists.linaro.org>
Archived-At: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/message/7Y6KJHP25RD4EFBJRY2QU4YOGBXZTRI3/>
List-Archive: <https://lists.linaro.org/archives/list/linaro-mm-sig@lists.linaro.org/>
List-Help: <mailto:linaro-mm-sig-request@lists.linaro.org?subject=help>
List-Owner: <mailto:linaro-mm-sig-owner@lists.linaro.org>
List-Post: <mailto:linaro-mm-sig@lists.linaro.org>
List-Subscribe: <mailto:linaro-mm-sig-join@lists.linaro.org>
List-Unsubscribe: <mailto:linaro-mm-sig-leave@lists.linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlLCBPY3QgMSwgMjAyNCBhdCA3OjUx4oCvUE0gUGludHUgS3VtYXIgPHF1aWNfcGludHVA
cXVpY2luYy5jb20+IHdyb3RlOg0KPg0KPiBVc2Ugb2Yga21hcF9hdG9taWMva3VubWFwX2F0b21p
YyBpcyBkZXByZWNhdGVkLCB1c2UNCj4ga21hcF9sb2NhbF9wYWdlL2t1bm1hcF9sb2NhbCBpbnN0
ZWFkLg0KPg0KPiBUaGlzIGlzIHJlcG9ydGVkIGJ5IGNoZWNrcGF0Y2guDQo+IEFsc28gZml4IHJl
cGVhdGVkIHdvcmQgaXNzdWUuDQo+DQo+IFdBUk5JTkc6IERlcHJlY2F0ZWQgdXNlIG9mICdrbWFw
X2F0b21pYycsIHByZWZlciAna21hcF9sb2NhbF9wYWdlJyBpbnN0ZWFkDQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgIHZvaWQgKnZhZGRyID0ga21hcF9hdG9taWMocGFnZSk7DQo+DQo+IFdBUk5J
Tkc6IERlcHJlY2F0ZWQgdXNlIG9mICdrdW5tYXBfYXRvbWljJywgcHJlZmVyICdrdW5tYXBfbG9j
YWwnIGluc3RlYWQNCj4gKyAgICAgICAgICAgICAgICAgICAgICAga3VubWFwX2F0b21pYyh2YWRk
cik7DQo+DQo+IFdBUk5JTkc6IFBvc3NpYmxlIHJlcGVhdGVkIHdvcmQ6ICdieScNCj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICogaGFzIGJlZW4ga2lsbGVkIGJ5IGJ5IFNJR0tJTEwNCj4NCj4g
dG90YWw6IDAgZXJyb3JzLCAzIHdhcm5pbmdzLCA0MDUgbGluZXMgY2hlY2tlZA0KPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBQaW50dSBLdW1hciA8cXVpY19waW50dUBxdWljaW5jLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IFQuSi4gTWVyY2llciA8dGptZXJjaWVyQGdvb2dsZS5jb20+DQoNClRoZSBBbmRyb2lk
IGtlcm5lbHMgaGF2ZSBiZWVuIGRvaW5nIHRoaXMgZm9yIG92ZXIgYSB5ZWFyLCBzbyBzaG91bGQg
YmUNCnByZXR0eSB3ZWxsIHRlc3RlZCBhdCB0aGlzIHBvaW50Og0KaHR0cHM6Ly9yLmFuZHJvaWQu
Y29tL2Mva2VybmVsL2NvbW1vbi8rLzI1MDA4NDANCg0KPiAtLS0NCj4gIGRyaXZlcnMvZG1hLWJ1
Zi9oZWFwcy9jbWFfaGVhcC5jIHwgNiArKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1i
dWYvaGVhcHMvY21hX2hlYXAuYyBiL2RyaXZlcnMvZG1hLWJ1Zi9oZWFwcy9jbWFfaGVhcC5jDQo+
IGluZGV4IDkzYmU4OGI4MDVmZS4uOGM1NTQzMWNjMTZjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2RtYS1idWYvaGVhcHMvY21hX2hlYXAuYw0KPiArKysgYi9kcml2ZXJzL2RtYS1idWYvaGVhcHMv
Y21hX2hlYXAuYw0KPiBAQCAtMzA5LDEzICszMDksMTMgQEAgc3RhdGljIHN0cnVjdCBkbWFfYnVm
ICpjbWFfaGVhcF9hbGxvY2F0ZShzdHJ1Y3QgZG1hX2hlYXAgKmhlYXAsDQo+ICAgICAgICAgICAg
ICAgICBzdHJ1Y3QgcGFnZSAqcGFnZSA9IGNtYV9wYWdlczsNCj4NCj4gICAgICAgICAgICAgICAg
IHdoaWxlIChucl9jbGVhcl9wYWdlcyA+IDApIHsNCj4gLSAgICAgICAgICAgICAgICAgICAgICAg
dm9pZCAqdmFkZHIgPSBrbWFwX2F0b21pYyhwYWdlKTsNCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgdm9pZCAqdmFkZHIgPSBrbWFwX2xvY2FsX3BhZ2UocGFnZSk7DQo+DQo+ICAgICAgICAgICAg
ICAgICAgICAgICAgIG1lbXNldCh2YWRkciwgMCwgUEFHRV9TSVpFKTsNCj4gLSAgICAgICAgICAg
ICAgICAgICAgICAga3VubWFwX2F0b21pYyh2YWRkcik7DQo+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGt1bm1hcF9sb2NhbCh2YWRkcik7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgIC8qDQo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAqIEF2b2lkIHdhc3RpbmcgdGltZSB6ZXJvaW5nIG1l
bW9yeSBpZiB0aGUgcHJvY2Vzcw0KPiAtICAgICAgICAgICAgICAgICAgICAgICAgKiBoYXMgYmVl
biBraWxsZWQgYnkgYnkgU0lHS0lMTA0KPiArICAgICAgICAgICAgICAgICAgICAgICAgKiBoYXMg
YmVlbiBraWxsZWQgYnkgU0lHS0lMTC4NCj4gICAgICAgICAgICAgICAgICAgICAgICAgICovDQo+
ICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChmYXRhbF9zaWduYWxfcGVuZGluZyhjdXJyZW50
KSkNCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBnb3RvIGZyZWVfY21hOw0KPiAt
LQ0KPiAyLjE3LjENCj4NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbmFyby1tbS1zaWcgbWFpbGluZyBsaXN0IC0tIGxpbmFyby1tbS1zaWdAbGlzdHMu
bGluYXJvLm9yZwpUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGxpbmFyby1tbS1zaWct
bGVhdmVAbGlzdHMubGluYXJvLm9yZwo=
